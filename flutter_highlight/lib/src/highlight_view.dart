import 'package:flutter/material.dart';
import 'package:highlight/highlight_core.dart'
    show Highlight, HighlightResult, HljsTheme;

import 'line_number_gutter.dart';
import 'text_span_builder.dart';
import 'theme_map.dart';

/// A widget that renders syntax-highlighted source code using the highlight
/// engine and a theme map.
///
/// Uses [SelectableText.rich] so the rendered code is selectable and copyable.
/// Long lines scroll horizontally via a [SingleChildScrollView].
class HighlightView extends StatelessWidget {
  /// Source code to highlight.
  final String code;

  /// Language identifier (e.g. `'dart'`, `'python'`).
  /// If `null`, auto-detection is used.
  final String? language;

  /// Theme for syntax highlighting. Keys are scope names, values are
  /// `HljsStyle` instances with typed properties (color, bold, italic, etc.).
  final HljsTheme theme;

  /// Base text style applied to all code text (font family, size, height).
  final TextStyle? textStyle;

  /// Padding inside the code block container.
  final EdgeInsets? padding;

  /// Whether to show line numbers in a gutter on the left.
  final bool showLineNumbers;

  /// The number to display on the first line (default: 1).
  final int firstLineNumber;

  /// Style for line number text. Falls back to a dimmed version of the base
  /// text style if not provided.
  final TextStyle? lineNumberStyle;

  /// Highlight engine instance. When `null`, a fresh instance is used.
  /// Callers are responsible for registering languages on the engine before
  /// passing it in.
  final Highlight? highlighter;

  const HighlightView(
    this.code, {
    super.key,
    this.language,
    required this.theme,
    this.textStyle,
    this.padding,
    this.showLineNumbers = false,
    this.firstLineNumber = 1,
    this.lineNumberStyle,
    this.highlighter,
  });

  @override
  Widget build(BuildContext context) {
    final themeMap = ThemeMap(theme);

    final baseStyle = const TextStyle(
      fontFamily: 'monospace',
      fontSize: 14,
      height: 1.5,
    ).merge(textStyle);

    final span = _buildSpan(themeMap, baseStyle);
    final lineCount = '\n'.allMatches(code).length + 1;

    final effectiveLineNumberStyle =
        lineNumberStyle ??
        baseStyle.copyWith(
          color: (themeMap.rootStyle.color ?? const Color(0xFF888888))
              .withAlpha(128),
        );

    Widget codeWidget = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SelectableText.rich(
        span,
        style: baseStyle.merge(themeMap.rootStyle),
      ),
    );

    Widget body;
    if (showLineNumbers) {
      body = Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LineNumberGutter(
            lineCount: lineCount,
            firstLineNumber: firstLineNumber,
            style: effectiveLineNumberStyle,
            lineHeight: baseStyle.height,
          ),
          Expanded(child: codeWidget),
        ],
      );
    } else {
      body = codeWidget;
    }

    return Container(
      color: themeMap.backgroundColor,
      padding: padding ?? const EdgeInsets.all(16),
      width: double.infinity,
      child: body,
    );
  }

  TextSpan _buildSpan(ThemeMap themeMap, TextStyle baseStyle) {
    final hl = highlighter ?? Highlight();
    HighlightResult result;
    if (language != null) {
      result = hl.highlight(code, language: language!);
    } else {
      result = hl.highlightAuto(code);
    }

    final builder = TextSpanBuilder(themeMap: themeMap, baseStyle: baseStyle);
    return builder.build(result.emitter.rootNode);
  }
}
