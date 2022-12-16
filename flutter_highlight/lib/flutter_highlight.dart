import 'package:flutter/material.dart';
import 'package:highlight/highlight.dart' show highlight, Node;

/// Highlight Flutter Widget
class HighlightView extends StatefulWidget {
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

  // To enable control bar
  final bool controlBar;

  final Icon zoomInIcon, zoomOutIcon, lineWrapIcon;
  final Color? barIconColor;

  HighlightView(String input,
      {this.language,
      this.theme = const {},
      this.padding,
      this.textStyle,
      int tabSize = 8, // TODO: https://github.com/flutter/flutter/issues/50087
      this.lineNumbers = false,
      this.controlBar = false,
      this.zoomInIcon = const Icon(Icons.zoom_in),
      this.zoomOutIcon = const Icon(Icons.zoom_out),
      this.lineWrapIcon = const Icon(Icons.password),
      this.barIconColor})
      : source = input.replaceAll('\t', ' ' * tabSize);

  static const _rootKey = 'root';
  static const _defaultFontColor = Color(0xff000000);
  static const _defaultBackgroundColor = Color(0xffffffff);

  // TODO: dart:io is not available at web platform currently
  // See: https://github.com/flutter/flutter/issues/39998
  // So we just use monospace here for now
  static const _defaultFontFamily = 'monospace';

  @override
  State<HighlightView> createState() => _HighlightViewState();
}

class _HighlightViewState extends State<HighlightView> {
  double _fontScaleFactor = 1;
  bool expanded = true;

  List<TextSpan> _convert(List<Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(node.className == null
            ? TextSpan(text: node.value)
            : TextSpan(text: node.value, style: widget.theme[node.className!]));
      } else if (node.children != null) {
        List<TextSpan> tmp = [];
        currentSpans
            .add(TextSpan(children: tmp, style: widget.theme[node.className!]));
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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var tStyle = TextStyle(
        fontFamily: HighlightView._defaultFontFamily,
        color: widget.theme[HighlightView._rootKey]?.color ??
            HighlightView._defaultFontColor,
      );
      if (widget.textStyle != null) {
        tStyle = tStyle.merge(widget.textStyle);
      }

      var converted = _convert(
          highlight.parse(widget.source, language: widget.language).nodes!);

      var painter = TextPainter(
        textScaleFactor: _fontScaleFactor,
        text: TextSpan(style: tStyle, children: converted),
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        textWidthBasis: TextWidthBasis.parent,
      );

      painter.layout(
          maxWidth: expanded
              ? double.infinity
              : constraints.maxWidth - tStyle.fontSize! * 3);

      if (widget.lineNumbers) {
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

        return Column(
          children: [
            if (widget.controlBar) controlBarWidget(),
            Row(children: [
              Container(
                  decoration: BoxDecoration(
                      color: widget
                              .theme[HighlightView._rootKey]?.backgroundColor ??
                          HighlightView._defaultBackgroundColor),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 8, 0),
                      child: RichText(
                        textAlign: TextAlign.end,
                        textScaleFactor: _fontScaleFactor,
                        text: TextSpan(
                            style:
                                widget.textStyle?.copyWith(color: Colors.grey),
                            children: lineNumberSpans),
                      ))),
              Expanded(
                child: Container(
                    color:
                        widget.theme[HighlightView._rootKey]?.backgroundColor ??
                            HighlightView._defaultBackgroundColor,
                    child: Scrollbar(
                        child: SingleChildScrollView(
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: CustomPaint(
                                  painter: PainterWrapper(painter),
                                  size: painter.size,
                                ))))),
              ),
            ]),
          ],
        );
      } else {
        return CustomPaint(
          painter: PainterWrapper(painter),
          size: painter.size,
        );
      }
    });
  }

  Widget controlBarWidget() {
    return Container(
      color: widget.theme[HighlightView._rootKey]?.backgroundColor ??
          HighlightView._defaultBackgroundColor,
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
              color: widget.barIconColor ?? Colors.grey.shade300,
              disabledColor: Colors.grey,
              tooltip: "Zoom out",
              icon: widget.zoomOutIcon,
              onPressed: _fontScaleFactor > 1
                  ? () => setState(() {
                        _fontScaleFactor -= 0.1;
                      })
                  : null),
          IconButton(
              icon: widget.zoomInIcon,
              color: widget.barIconColor ?? Colors.grey.shade300,
              tooltip: "Zoom in",
              disabledColor: Colors.grey,
              onPressed: _fontScaleFactor < 2
                  ? () => setState(() {
                        _fontScaleFactor += 0.1;
                      })
                  : null),
          IconButton(
              icon: widget.lineWrapIcon,
              color: expanded
                  ? widget.barIconColor ?? Colors.grey.shade300
                  : Colors.orange,
              tooltip: "Line wrap",
              disabledColor: Colors.grey,
              onPressed: () => setState(() {
                    expanded = !expanded;
                  })),
        ],
      ),
    );
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
