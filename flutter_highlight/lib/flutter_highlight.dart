import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:highlight/highlight.dart';

class Highlighter extends StatelessWidget {
  static final _hl = Highlight();

  final String code;
  final String language;
  final Map<String, TextStyle> style;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;

  Highlighter(
    this.code, {
    this.language,
    this.style = const {},
    this.padding,
    this.textStyle,
  });

  List<TextSpan> _convert(List<Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    _traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(node.className == null
            ? TextSpan(text: node.value)
            : TextSpan(text: node.value, style: style[node.className]));
      } else if (node.children != null) {
        List<TextSpan> tmp = [];
        currentSpans.add(TextSpan(children: tmp, style: style[node.className]));
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

  static const _defaultFontColor = Color(0xff000000);
  static const _defaultBackgroundColor = Color(0xffffffff);
  static String get _defaultFontFamily {
    if (Platform.isIOS || Platform.isMacOS) {
      return 'Menlo';
    } else if (Platform.isAndroid) {
      return 'Roboto Mono';
    } else if (Platform.isWindows) {
      return 'Consolas';
    } else {
      return 'monospace';
    }
  }

  @override
  Widget build(BuildContext context) {
    var nodes = _hl.parse(code, language: language).value;
    var _textStyle = TextStyle(
      fontFamily: _defaultFontFamily,
      color: style['container']?.color ?? _defaultFontColor,
    );
    if (textStyle != null) {
      _textStyle = _textStyle.merge(textStyle);
    }

    return Container(
      color: style['container']?.backgroundColor ?? _defaultBackgroundColor,
      padding: padding,
      child: RichText(
        text: TextSpan(style: _textStyle, children: _convert(nodes)),
      ),
    );
  }
}
