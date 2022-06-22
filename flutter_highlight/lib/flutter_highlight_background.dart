import 'dart:async';
import 'dart:isolate';

import 'package:flutter/widgets.dart';
import 'package:highlight/highlight.dart' show highlight, Node;

/// A widget that provides a background [Isolate] to do expensive highlighting
/// work in.
///
/// The [HighlightView] will detect and use the background environment
/// automatically.
/// It can also be used manually through the [HighlightBackgroundProvider]
/// [InheritedWidget].
class HighlightBackgroundEnvironment extends StatefulWidget {
  final Widget child;

  const HighlightBackgroundEnvironment({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<HighlightBackgroundEnvironment> createState() =>
      _HighlightBackgroundEnvironmentState();
}

class _HighlightBackgroundEnvironmentState
    extends State<HighlightBackgroundEnvironment> {
  late final Completer<SendPort> _sendPortCompleter;
  late final StreamController<_ParseResponse> _parseResultStreamController;

  @override
  void initState() {
    super.initState();
    _sendPortCompleter = Completer();
    _parseResultStreamController = StreamController.broadcast();
    final receivePort = ReceivePort();
    receivePort.listen((message) {
      if (message is _ParseResponse) {
        _parseResultStreamController.add(message);
      } else if (message is _IsolateStartedResponse) {
        _sendPortCompleter.complete(message.sendPort);
      } else if (message is _IsolateEndedResponse) {
        print('Ended');
        receivePort.close();
      }
    });
    Isolate.spawn(_isolateEntrypoint, receivePort.sendPort);
  }

  @override
  void dispose() {
    super.dispose();
    _sendPortCompleter.future
        .then((sendPort) => sendPort.send(_IsolateEndRequest()));
  }

  Future<List<Node>> parse(String source, {String? language}) {
    final identifier = Capability();
    _sendPortCompleter.future.then((sendPort) =>
        sendPort.send(_ParseRequest(identifier, source, language: language)));
    return _parseResultStreamController.stream
        .firstWhere((message) => identical(message.identifier, identifier))
        .then((message) => message.nodes);
  }

  @override
  Widget build(BuildContext context) {
    return HighlightBackgroundProvider._(
      environmentIdentifier: this,
      parse: parse,
      child: widget.child,
    );
  }
}

class HighlightBackgroundProvider extends InheritedWidget {
  final Object environmentIdentifier;
  final Future<List<Node>> Function(String source, {String? language}) parse;

  HighlightBackgroundProvider._({
    Key? key,
    required this.environmentIdentifier,
    required this.parse,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(HighlightBackgroundProvider oldWidget) =>
      !identical(environmentIdentifier, oldWidget.environmentIdentifier);

  static HighlightBackgroundProvider of(BuildContext context) {
    final backgroundProvider = maybeOf(context);
    assert(backgroundProvider != null,
        'No HighlightBackgroundProvider found in context');
    return backgroundProvider!;
  }

  static HighlightBackgroundProvider? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HighlightBackgroundProvider>();
}

void _isolateEntrypoint(SendPort sendPort) {
  final receivePort = ReceivePort();
  receivePort.listen((message) {
    if (message is _ParseRequest) {
      final nodes =
          highlight.parse(message.source, language: message.language).nodes!;
      sendPort.send(_ParseResponse(message.identifier, nodes));
    } else if (message is _IsolateEndRequest) {
      receivePort.close();
      sendPort.send(const _IsolateEndedResponse());
    }
  });
  sendPort.send(_IsolateStartedResponse(receivePort.sendPort));
}

abstract class _IsolateRequest {}

class _IsolateEndRequest implements _IsolateRequest {
  const _IsolateEndRequest();
}

class _ParseRequest implements _IsolateRequest {
  final Capability identifier;
  final String source;
  final String? language;

  const _ParseRequest(this.identifier, this.source, {this.language});
}

abstract class _IsolateResponse {}

class _IsolateStartedResponse implements _IsolateResponse {
  final SendPort sendPort;

  const _IsolateStartedResponse(this.sendPort);
}

class _IsolateEndedResponse implements _IsolateResponse {
  const _IsolateEndedResponse();
}

class _ParseResponse implements _IsolateResponse {
  final Capability identifier;
  final List<Node> nodes;

  const _ParseResponse(this.identifier, this.nodes);
}
