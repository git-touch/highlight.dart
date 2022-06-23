import 'dart:async';
import 'dart:isolate';

import 'package:flutter/widgets.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
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
  late final StreamController<_IdentifiableIsolateMessage>
      _resultStreamController;

  @override
  void initState() {
    super.initState();
    _sendPortCompleter = Completer();
    _resultStreamController = StreamController.broadcast();
    final receivePort = ReceivePort();
    receivePort.listen((response) {
      if (response is _IdentifiableIsolateResponse) {
        _resultStreamController.add(response);
      } else if (response is _IsolateStartedResponse) {
        _sendPortCompleter.complete(response.sendPort);
      } else if (response is _IsolateEndedResponse) {
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

  Future<T> _performTask<T extends _IdentifiableIsolateResponse>(
      _IdentifiableIsolateRequest<T> request) {
    _sendPortCompleter.future.then((sendPort) => sendPort.send(request));
    return _resultStreamController.stream
        .firstWhere(
            (message) => identical(message.identifier, request.identifier))
        .then((response) => response as T);
  }

  Future<List<Node>> _parse(String source, {String? language}) =>
      _performTask(_ParseRequest(source, language: language))
          .then((response) => response.nodes);

  Future<List<TextSpan>> _render(
    List<Node> nodes,
    Map<String, TextStyle> theme,
  ) =>
      _performTask(_RenderRequest(nodes, theme))
          .then((response) => response.spans);

  @override
  Widget build(BuildContext context) {
    return HighlightBackgroundProvider._(
      environmentIdentifier: this,
      parse: _parse,
      render: _render,
      child: widget.child,
    );
  }
}

class HighlightBackgroundProvider extends InheritedWidget {
  final Object environmentIdentifier;
  final Future<List<Node>> Function(String source, {String? language}) parse;
  final Future<List<TextSpan>> Function(
    List<Node> nodes,
    Map<String, TextStyle> theme,
  ) render;

  HighlightBackgroundProvider._({
    Key? key,
    required this.environmentIdentifier,
    required this.parse,
    required this.render,
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
  receivePort.listen((request) {
    if (request is _ParseRequest) {
      final nodes =
          highlight.parse(request.source, language: request.language).nodes!;
      sendPort.send(_ParseResponse(request, nodes));
    } else if (request is _RenderRequest) {
      final spans = HighlightView.render(request.nodes, request.theme);
      sendPort.send(_RenderResponse(request, spans));
    } else if (request is _IsolateEndRequest) {
      receivePort.close();
      sendPort.send(const _IsolateEndedResponse());
    }
  });
  sendPort.send(_IsolateStartedResponse(receivePort.sendPort));
}

abstract class _IdentifiableIsolateMessage {
  Capability get identifier;
}

abstract class _IsolateRequest {}

abstract class _IdentifiableIsolateRequest<
        T extends _IdentifiableIsolateResponse>
    implements _IsolateRequest, _IdentifiableIsolateMessage {}

class _IsolateEndRequest implements _IsolateRequest {
  const _IsolateEndRequest();
}

class _ParseRequest implements _IdentifiableIsolateRequest<_ParseResponse> {
  @override
  final Capability identifier = Capability();
  final String source;
  final String? language;

  _ParseRequest(this.source, {this.language});
}

class _RenderRequest implements _IdentifiableIsolateRequest<_RenderResponse> {
  @override
  final Capability identifier = Capability();
  final List<Node> nodes;
  final Map<String, TextStyle> theme;

  _RenderRequest(this.nodes, this.theme);
}

abstract class _IsolateResponse {}

abstract class _IdentifiableIsolateResponse
    implements _IsolateResponse, _IdentifiableIsolateMessage {}

class _IsolateStartedResponse implements _IsolateResponse {
  final SendPort sendPort;

  const _IsolateStartedResponse(this.sendPort);
}

class _IsolateEndedResponse implements _IsolateResponse {
  const _IsolateEndedResponse();
}

class _ParseResponse implements _IdentifiableIsolateResponse {
  @override
  final Capability identifier;
  final List<Node> nodes;

  _ParseResponse(_ParseRequest request, this.nodes)
      : identifier = request.identifier;
}

class _RenderResponse implements _IdentifiableIsolateResponse {
  @override
  final Capability identifier;
  final List<TextSpan> spans;

  _RenderResponse(_RenderRequest request, this.spans)
      : identifier = request.identifier;
}
