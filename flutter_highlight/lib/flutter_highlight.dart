import 'package:flutter/material.dart';
import 'package:highlight/highlight.dart' show highlight, Node;

/// Highlight Flutter Widget
class HighlightView extends StatelessWidget {
  /// The original code to be highlighted
  final String source;

  /// Highlight language
  ///
  /// It is recommended to give it a value for performance
  ///
  /// [All available languages](https://github.com/pd4d10/highlight/tree/master/highlight/lib/languages)
  final String? language;

  /// Highlight theme
  ///
  /// [All available themes](https://github.com/pd4d10/highlight/blob/master/flutter_highlight/lib/themes)
  final Map<String, TextStyle> theme;

  /// Padding
  final EdgeInsetsGeometry? padding;

  /// Text styles
  ///
  /// Specify text styles such as font family and font size
  final TextStyle? textStyle;

  /// Enable line numbers
  final bool lineNumbers;

  /// Decorations for line numbers container
  ///
  /// Must be provided when `lineNumbers` are enabled.
  final BoxBorder? lineNumbersBorder;

  /// Decorations for line numbers container
  ///
  /// Must be provided when `lineNumbers` are enabled.
  final BorderRadius? lineNumbersRadius;

  HighlightView(String input,
      {this.language,
      this.theme = const {},
      this.padding,
      this.textStyle,
      int tabSize = 8, // TODO: https://github.com/flutter/flutter/issues/50087
      this.lineNumbers = false,
      this.lineNumbersBorder,
      this.lineNumbersRadius,
      super.key})
      : source = input.replaceAll('\t', ' ' * tabSize);

  List<TextSpan> _convert(List<Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(node.className == null
            ? TextSpan(text: node.value)
            : TextSpan(text: node.value, style: theme[node.className!]));
      } else if (node.children != null) {
        List<TextSpan> tmp = [];
        currentSpans
            .add(TextSpan(children: tmp, style: theme[node.className!]));
        stack.add(currentSpans);
        currentSpans = tmp;

        node.children!.forEach((n) {
          traverse(n);
          if (n == node.children!.last) {
            currentSpans = stack.isEmpty ? spans : stack.removeLast();
          }
        });
      }
    }

    for (var node in nodes) {
      traverse(node);
    }

    return spans;
  }

  static const _rootKey = 'root';
  static const _defaultFontColor = Color(0xff000000);
  static const _defaultBackgroundColor = Color(0xffffffff);

  // TODO: dart:io is not available at web platform currently
  // See: https://github.com/flutter/flutter/issues/39998
  // So we just use monospace here for now
  static const _defaultFontFamily = 'monospace';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var tStyle = TextStyle(
        fontFamily: _defaultFontFamily,
        color: theme[_rootKey]?.color ?? _defaultFontColor,
      );
      if (textStyle != null) {
        tStyle = tStyle.merge(textStyle);
      }

      var converted =
          _convert(highlight.parse(source, language: language).nodes!);

      var painter = TextPainter(
        text: TextSpan(style: tStyle, children: converted),
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        textWidthBasis: TextWidthBasis.parent,
      );

      painter.layout(maxWidth: constraints.maxWidth - tStyle.fontSize! * 3);

      if (lineNumbers) {
        assert(lineNumbersBorder != null);
        assert(lineNumbersRadius != null);

        var lineMetrics = painter.computeLineMetrics();
        assert(lineMetrics.isNotEmpty);

        var realLineNumber = 0;
        var lineNumberSpans = List<TextSpan>.empty(growable: true);
        var maxWidth = 0;
        var prevSoftBreak = false;
        for (var line in lineMetrics) {
          var tmp = (realLineNumber + 1).toString();
          tmp += '\n';
          if (!prevSoftBreak) realLineNumber += 1;

          lineNumberSpans.add(TextSpan(text: (!prevSoftBreak) ? tmp : '\n'));
          prevSoftBreak = !line.hardBreak;

          if (tmp.length > maxWidth) maxWidth = tmp.length;
        }

        // account for trailing line number
        lineNumberSpans.removeLast();
        var tmp = realLineNumber.toString();
        lineNumberSpans.add(TextSpan(text: tmp));

        return Row(children: [
          Container(
              decoration: BoxDecoration(
                  color: theme[_rootKey]?.backgroundColor ??
                      _defaultBackgroundColor,
                  border: lineNumbersBorder,
                  borderRadius: lineNumbersRadius!),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 8, 10),
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(style: textStyle, children: lineNumberSpans),
                  ))),
          Expanded(
            child: Container(
                color:
                    theme[_rootKey]?.backgroundColor ?? _defaultBackgroundColor,
                child: CustomPaint(
                  painter: PainterWrapper(painter),
                  size: painter.size,
                )),
          ),
        ]);
      } else {
        return CustomPaint(
          painter: PainterWrapper(painter),
          size: painter.size,
        );
      }
    });
  }
}

class PainterWrapper extends CustomPainter {
  final TextPainter textPainter;

  const PainterWrapper(this.textPainter);

  @override
  void paint(Canvas canvas, Size size) {
    textPainter.paint(canvas, const Offset(4, 0));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
