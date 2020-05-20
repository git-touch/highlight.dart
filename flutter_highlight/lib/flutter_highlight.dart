import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:highlight/highlight.dart' show highlight, Node;
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

/// Highlight Flutter Widget
class HighlightView extends StatefulWidget {
  /// The original code to be highlighted
  final String source;

  /// Highlight language
  ///
  /// It is recommended to give it a value for performance
  ///
  /// [All available languages](https://github.com/pd4d10/highlight/tree/master/highlight/lib/languages)
  final String language;

  /// Highlight theme
  ///
  /// [All available themes](https://github.com/pd4d10/highlight/blob/master/flutter_highlight/lib/themes)
  final Map<String, TextStyle> theme;

  /// Padding
  final EdgeInsetsGeometry padding;

  /// Text styles
  ///
  /// Specify text styles such as font family and font size
  final TextStyle textStyle;

  final bool readOnly;

  HighlightView(
    String input, {
    this.language,
    this.theme = const {},
    this.padding,
    this.textStyle,
    int tabSize = 8, // TODO: https://github.com/flutter/flutter/issues/50087
    this.readOnly = true,
  }) : source = input.replaceAll('\t', ' ' * tabSize);

  static const _rootKey = 'root';
  static const _defaultFontColor = Color(0xff000000);
  static const _defaultBackgroundColor = Color(0xffffffff);

  // TODO: dart:io is not available at web platform currently
  // See: https://github.com/flutter/flutter/issues/39998
  // So we just use monospace here for now
  static const _defaultFontFamily = 'monospace';

  @override
  _HighlightViewState createState() => _HighlightViewState();
}

class _HighlightViewState extends State<HighlightView> {
  LinkedScrollControllerGroup _controllers;
  ScrollController _highlightScrollController, _editableScrollView;
  TextEditingController _textController;
  String _editableText;

  @override
  void initState() {
    _controllers = LinkedScrollControllerGroup();
    _highlightScrollController = _controllers.addAndGet();
    _editableScrollView = _controllers.addAndGet();
    _textController = TextEditingController(text: widget.source);
    _editableText = widget.source;
    super.initState();
  }

  @override
  void dispose() {
    _highlightScrollController.dispose();
    _editableScrollView.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(HighlightView oldWidget) {
    if (oldWidget.source != widget.source) {
      _textController.value = TextEditingValue(text: widget.source);
      _editableText = widget.source;
    }
    super.didUpdateWidget(oldWidget);
  }

  List<TextSpan> _convert(List<Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    _traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(node.className == null
            ? TextSpan(text: node.value)
            : TextSpan(text: node.value, style: widget.theme[node.className]));
      } else if (node.children != null) {
        List<TextSpan> tmp = [];
        currentSpans
            .add(TextSpan(children: tmp, style: widget.theme[node.className]));
        stack.add(currentSpans);
        currentSpans = tmp;

        node.children.forEach((n) {
          _traverse(n);
          if (n == node.children.last) {
            currentSpans = stack.isEmpty ? spans : stack.removeLast();
          }
        });
      }
    }

    for (var node in nodes) {
      _traverse(node);
    }

    return spans;
  }

  int get _linesCount => '\n'.allMatches(_editableText).length;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    var padding = widget.padding ?? EdgeInsets.zero;
    // Keyboard height
    if (!widget.readOnly) {
      padding = padding.add(media.viewInsets);
    }

    var _textStyle = TextStyle(
      letterSpacing: 0,
      fontSize: 16,
      fontFamily: HighlightView._defaultFontFamily,
      color: widget.theme[HighlightView._rootKey]?.color ??
          HighlightView._defaultFontColor,
    );
    if (widget.textStyle != null) {
      _textStyle = _textStyle.merge(widget.textStyle);
    }

    Widget content = Container(
      padding: padding,
      color: widget.theme[HighlightView._rootKey]?.backgroundColor ??
          HighlightView._defaultBackgroundColor,
      child: RichText(
        text: TextSpan(
          style: _textStyle,
          children: _convert(
              highlight.parse(_editableText, language: widget.language).nodes),
        ),
      ),
    );

    if (!widget.readOnly) {
      content = SingleChildScrollView(
        controller: _highlightScrollController,
        child: content,
      );
    }

    return NotificationListener(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          if (notification.scrollDelta.abs() > 10 &&
              notification.dragDetails != null)
            SystemChannels.textInput.invokeMethod('TextInput.hide');
        }
        return true;
      },
      child: Stack(
        children: <Widget>[
          content,
          if (!widget.readOnly)
            CupertinoTextField(
              scrollController: _editableScrollView,
              scrollPadding: EdgeInsets.zero,
              maxLines: _linesCount,
              maxLengthEnforced: false,
              keyboardType: TextInputType.multiline,
              controller: _textController,
              padding: padding,
              style: _textStyle.copyWith(
                color: Colors.transparent,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: Colors.transparent,
              ),
              onChanged: (value) {
                setState(() {
                  _editableText = value;
                });
              },
            ),
        ],
      ),
    );
  }
}
