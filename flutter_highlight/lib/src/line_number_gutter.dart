import 'package:flutter/widgets.dart';

/// Renders a column of right-aligned line numbers alongside code.
///
/// Width is computed from the widest line number so the column stays compact.
/// Each line number shares the same [lineHeight] as the code text so vertical
/// alignment is maintained.
class LineNumberGutter extends StatelessWidget {
  /// Total number of lines in the code.
  final int lineCount;

  /// The number to display on the first line (default: 1).
  final int firstLineNumber;

  /// Style used for line number text.
  final TextStyle style;

  /// Line height matching the code text, expressed as a multiplier on the
  /// font size. Used to keep line numbers aligned with code lines.
  final double? lineHeight;

  const LineNumberGutter({
    super.key,
    required this.lineCount,
    this.firstLineNumber = 1,
    required this.style,
    this.lineHeight,
  });

  @override
  Widget build(BuildContext context) {
    final lastNumber = firstLineNumber + lineCount - 1;
    final digitCount = lastNumber.toString().length;
    final effectiveStyle = lineHeight != null
        ? style.copyWith(height: lineHeight)
        : style;

    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List<Widget>.generate(lineCount, (i) {
          final number = firstLineNumber + i;
          return SizedBox(
            width: digitCount * _estimateCharWidth(effectiveStyle),
            child: Text(
              number.toString(),
              style: effectiveStyle,
              textAlign: TextAlign.right,
            ),
          );
        }),
      ),
    );
  }

  static double _estimateCharWidth(TextStyle style) {
    final fontSize = style.fontSize ?? 14.0;
    return fontSize * 0.6;
  }
}
