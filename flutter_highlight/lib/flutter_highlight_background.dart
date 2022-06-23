import 'dart:async';
import 'dart:isolate';

import 'package:flutter/widgets.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:highlight/highlight.dart' show highlight, Node;

/// A result of a combined parse and render operation done in a
/// [HighlightBackgroundEnvironment].
class HighlightBackgroundResult {
  final List<Node> nodes;
  final List<TextSpan> spans;

  const HighlightBackgroundResult(this.nodes, this.spans);
}

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

  Future<HighlightBackgroundResult> _parseAndRender(
    String source,
    Map<String, TextStyle> theme, {
    String? language,
  }) =>
      _performTask(_ParseAndRenderRequest(source, theme, language: language))
          .then((response) =>
              HighlightBackgroundResult(response.nodes, response.spans));

  @override
  Widget build(BuildContext context) {
    return HighlightBackgroundProvider._(
      environmentIdentifier: this,
      parse: _parse,
      render: _render,
      parseAndRender: _parseAndRender,
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
  final Future<HighlightBackgroundResult> Function(
    String source,
    Map<String, TextStyle> theme, {
    String? language,
  }) parseAndRender;

  HighlightBackgroundProvider._({
    Key? key,
    required this.environmentIdentifier,
    required this.parse,
    required this.render,
    required this.parseAndRender,
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
    if (request is _ParsingRequest || request is _RenderingRequest) {
      late final List<Node> nodes;
      if (request is _ParsingRequest) {
        nodes =
            highlight.parse(request.source, language: request.language).nodes!;
      } else if (request is _RenderRequest) {
        nodes = request.nodes;
      }
      if (request is _ParseRequest) {
        sendPort.send(_ParseResponse(request, nodes));
      } else if (request is _RenderingRequest) {
        final spans = HighlightView.render(nodes, request.theme);
        if (request is _RenderRequest) {
          sendPort.send(_RenderResponse(request, spans));
        } else if (request is _ParseAndRenderRequest) {
          sendPort.send(_ParseAndRenderResponse(request, nodes, spans));
        }
      }
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

abstract class _ParsingRequest<T extends _ParsingResponse>
    implements _IdentifiableIsolateRequest<T> {
  String get source;

  String? get language;
}

class _ParseRequest implements _ParsingRequest<_ParseResponse> {
  @override
  final Capability identifier = Capability();

  @override
  final String source;

  @override
  final String? language;

  _ParseRequest(this.source, {this.language});
}

abstract class _RenderingRequest<T extends _RenderingResponse>
    implements _IdentifiableIsolateRequest<T> {
  Map<String, TextStyle> get theme;
}

class _RenderRequest implements _RenderingRequest {
  @override
  final Capability identifier = Capability();

  final List<Node> nodes;

  @override
  final Map<String, TextStyle> theme;

  _RenderRequest(this.nodes, this.theme);
}

class _ParseAndRenderRequest
    implements
        _ParsingRequest<_ParseAndRenderResponse>,
        _RenderingRequest<_ParseAndRenderResponse> {
  @override
  final Capability identifier = Capability();

  @override
  final String source;

  @override
  final String? language;

  @override
  final Map<String, TextStyle> theme;

  _ParseAndRenderRequest(this.source, this.theme, {this.language});
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

abstract class _ParsingResponse implements _IdentifiableIsolateResponse {
  List<Node> get nodes;
}

class _ParseResponse implements _ParsingResponse {
  @override
  final Capability identifier;

  @override
  final List<Node> nodes;

  _ParseResponse(_ParseRequest request, this.nodes)
      : identifier = request.identifier;
}

abstract class _RenderingResponse implements _IdentifiableIsolateResponse {
  List<TextSpan> get spans;
}

class _RenderResponse implements _RenderingResponse {
  @override
  final Capability identifier;

  @override
  final List<TextSpan> spans;

  _RenderResponse(_RenderRequest request, this.spans)
      : identifier = request.identifier;
}

class _ParseAndRenderResponse implements _ParsingResponse, _RenderingResponse {
  @override
  final Capability identifier;

  @override
  final List<Node> nodes;

  @override
  final List<TextSpan> spans;

  _ParseAndRenderResponse(
    _ParseAndRenderRequest request,
    this.nodes,
    this.spans,
  ) : identifier = request.identifier;
}
