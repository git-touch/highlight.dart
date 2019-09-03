import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:highlight/highlight.dart' as highlight;

/// Highlight Flutter Widget
class HighlightView extends StatelessWidget {
  /// The original code to be highlighted
  final String input;

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
  /// Specify text styles such as font family, font size
  ///
  /// default font family:
  /// - iOS, macOS: Menlo
  /// - Android: Roboto Mono
  /// - Windows: Consolas
  /// - others: monospace
  final TextStyle textStyle;

  HighlightView(
    this.input, {
    this.language,
    this.theme = const {},
    this.padding,
    this.textStyle,
  });

  List<TextSpan> _convert(List<highlight.Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    _traverse(highlight.Node node) {
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

  static const _rootKey = 'root';
  static const _defaultFontColor = Color(0xff000000);
  static const _defaultBackgroundColor = Color(0xffffffff);
  static String get _defaultFontFamily {
    switch (Platform.operatingSystem) {
      case 'ios':
      case 'macos':
        return 'Menlo';
      case 'android':
        return 'Roboto Mono';
      case 'windows':
        return 'Consolas';
      default:
        return 'monospace';
    }
  }

  @override
  Widget build(BuildContext context) {
    var nodes = highlight.parse(input, language: language).nodes;
    var _textStyle = TextStyle(
      fontFamily: _defaultFontFamily,
      color: theme[_rootKey]?.color ?? _defaultFontColor,
    );
    if (textStyle != null) {
      _textStyle = _textStyle.merge(textStyle);
    }

    return Container(
      color: theme[_rootKey]?.backgroundColor ?? _defaultBackgroundColor,
      padding: padding,
      child: RichText(
        text: TextSpan(style: _textStyle, children: _convert(nodes)),
      ),
    );
  }
}
