import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:highlight/highlight.dart' show highlight, Node;

/// Highlight Flutter Widget
class HighlightView extends StatefulWidget {
  /// The original code to be highlighted
  final String text;

  /// The controller for the highlighted text
  final HighlightEditingController controller;

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

  /// Editable
  ///
  /// If set to true, this will render a TextField instead.
  /// Defaults to false.
  final bool editable;

  /// Padding
  final EdgeInsetsGeometry padding;

  /// Text styles
  ///
  /// Specify text styles such as font family and font size
  final TextStyle textStyle;

  HighlightView({
    this.text,
    this.controller,
    this.language,
    this.theme = const {},
    this.editable = false,
    this.padding,
    this.textStyle,
    int tabSize = 8, // TODO: https://github.com/flutter/flutter/issues/50087
  });

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
  String source;
  HighlightEditingController controller;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      controller = HighlightEditingController(widget.language, widget.theme);
      controller.text = widget.text;
    } else {
      controller = widget.controller;
    }
    source = controller.text;
  }

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(
      fontFamily: HighlightView._defaultFontFamily,
      color: widget.theme[HighlightView._rootKey]?.color ??
          HighlightView._defaultFontColor,
    );
    if (widget.textStyle != null) {
      _textStyle = _textStyle.merge(widget.textStyle);
    }

    return Container(
      color: widget.theme[HighlightView._rootKey]?.backgroundColor ??
          HighlightView._defaultBackgroundColor,
      padding: widget.padding,
      child: widget.editable
          ? TextField(
              controller: controller,
              decoration: InputDecoration(border: InputBorder.none),
              maxLines: null,
              style: widget.theme[HighlightView._rootKey],
            )
          : RichText(
              text: TextSpan(
                style: _textStyle,
                children: getHighlightTextSpan(
                  source,
                  widget.language,
                  widget.theme,
                ),
              ),
            ),
    );
  }
}

List<TextSpan> getHighlightTextSpan(source, language, theme) {
  return _convert(highlight.parse(source, language: language).nodes, theme);
}

class HighlightEditingController extends TextEditingController {
  String language;
  Map<String, TextStyle> theme;

  HighlightEditingController(this.language, this.theme);

  @override
  TextSpan buildTextSpan({TextStyle style, bool withComposing}) {
    final result = highlight.parse(value.text, language: language);
    final spans = TextSpan(
      style: style,
      children: _convert(result.nodes, theme),
    );
    if (value.composing.isValid && withComposing) {
      underlineComposing(spans);
    }
    return spans;
  }

  underlineComposing(TextSpan nodes) {
    var pos = 0;
    final TextStyle composingStyle =
        TextStyle(decoration: TextDecoration.underline);

    TextSpan _traverse(TextSpan node) {
      if (node.text != null &&
          pos <= value.composing.start &&
          value.composing.end <= pos + node.text.length) {
        var relativeComposing = TextRange(
          start: value.composing.start - pos,
          end: value.composing.end - pos,
        );
        return TextSpan(
          children: [
            TextSpan(text: relativeComposing.textBefore(node.text)),
            TextSpan(
              style: composingStyle,
              text: relativeComposing.textInside(node.text),
            ),
            TextSpan(text: relativeComposing.textAfter(node.text)),
          ],
        );
      }

      pos += node.text?.length ?? 0;
      if (node.children != null) {
        for (var i = 0;
            i < node.children.length && pos <= value.composing.start;
            i++) {
          var update = _traverse(node.children[i]);
          if (update != null) {
            node.children[i] = update;
            return null;
          }
        }
      }
      return null;
    }

    _traverse(nodes);
  }
}

List<TextSpan> _convert(List<Node> nodes, theme) {
  List<TextSpan> spans = [];
  var currentSpans = spans;
  List<List<TextSpan>> stack = [];

  _traverse(Node node) {
    if (node.value != null) {
      currentSpans.add(node.className == null
          ? TextSpan(text: node.value)
          : TextSpan(text: node.value, style: theme[node.className]));
    } else if (node.children != null) {
      List<TextSpan> tmp = [];
      currentSpans.add(TextSpan(children: tmp, style: theme[node.className]));
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
