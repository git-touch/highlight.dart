import 'package:flutter/painting.dart';
import 'package:highlight/highlight_core.dart' show HljsStyle, HljsTheme;

/// Converts a `HljsTheme` (typed `Map<String, HljsStyle>`) into a resolved
/// `Map<String, TextStyle>` and provides cascade-based scope lookup.
class ThemeMap {
  final Map<String, TextStyle> _styles;

  ThemeMap(HljsTheme theme) : _styles = _buildStyles(theme);

  /// The root text style (from the `'root'` entry), or an empty style.
  TextStyle get rootStyle => _styles['root'] ?? const TextStyle();

  /// The background color defined in the `'root'` entry, if any.
  Color? get backgroundColor {
    final root = _styles['root'];
    return root?.backgroundColor;
  }

  /// Look up a [TextStyle] for the given [scope] using cascade resolution.
  ///
  /// For scope `title.class.inherited`, tries in order:
  /// 1. `title.class.inherited`
  /// 2. `title.class`
  /// 3. `title`
  ///
  /// Returns `null` if no matching entry is found.
  TextStyle? resolve(String scope) {
    var key = scope;
    while (key.isNotEmpty) {
      final style = _styles[key];
      if (style != null) return style;
      final dot = key.lastIndexOf('.');
      if (dot == -1) break;
      key = key.substring(0, dot);
    }
    return null;
  }

  static Map<String, TextStyle> _buildStyles(HljsTheme theme) {
    final result = <String, TextStyle>{};
    for (final entry in theme.entries) {
      result[entry.key] = _convertStyle(entry.value);
    }
    return result;
  }

  static TextStyle _convertStyle(HljsStyle style) {
    TextDecoration? decoration;
    if (style.underline && style.strikethrough) {
      decoration = TextDecoration.combine([
        TextDecoration.underline,
        TextDecoration.lineThrough,
      ]);
    } else if (style.underline) {
      decoration = TextDecoration.underline;
    } else if (style.strikethrough) {
      decoration = TextDecoration.lineThrough;
    }

    return TextStyle(
      color: style.color != null ? parseColor(style.color!) : null,
      backgroundColor: style.backgroundColor != null
          ? parseColor(style.backgroundColor!)
          : null,
      fontWeight: style.bold ? FontWeight.bold : null,
      fontStyle: style.italic ? FontStyle.italic : null,
      decoration: decoration,
    );
  }

  /// Parse a hex color string to a [Color].
  ///
  /// Supports `#RGB`, `#RRGGBB`, and `#AARRGGBB` formats.
  static Color parseColor(String hex) {
    var h = hex.startsWith('#') ? hex.substring(1) : hex;
    if (h.length == 3) {
      h = '${h[0]}${h[0]}${h[1]}${h[1]}${h[2]}${h[2]}';
    }
    try {
      final value = int.parse(h, radix: 16);
      if (h.length == 6) {
        return Color(value | 0xFF000000);
      }
      return Color(value);
    } on FormatException {
      return const Color(0xFF000000);
    }
  }
}
