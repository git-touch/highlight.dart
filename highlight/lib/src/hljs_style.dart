/// Style properties for a single scope in a highlight.js theme.
///
/// This is the strongly typed replacement for `Map<String, dynamic>` in theme
/// definitions. The outer map (`Map<String, HljsStyle>`) uses string keys for
/// scope names because those are arbitrary (e.g. `'keyword'`, `'title.class'`).
/// The inner style properties, however, are a fixed set and are represented as
/// typed class fields.
class HljsStyle {
  /// Text foreground color as a hex string (e.g. `'#d73a49'`).
  final String? color;

  /// Background color as a hex string (e.g. `'#ffffff'`).
  final String? backgroundColor;

  /// Whether the text should be bold.
  final bool bold;

  /// Whether the text should be italic.
  final bool italic;

  /// Whether the text should be underlined.
  final bool underline;

  /// Whether the text should have a strikethrough.
  final bool strikethrough;

  const HljsStyle({
    this.color,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.strikethrough = false,
  });
}

/// A complete highlight.js theme: scope name to style mapping.
///
/// The keys are arbitrary scope strings (e.g. `'root'`, `'keyword'`,
/// `'title.class'`), so a `Map<String, HljsStyle>` is the appropriate type.
typedef HljsTheme = Map<String, HljsStyle>;
