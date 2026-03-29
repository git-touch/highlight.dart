/// Flutter widget for syntax highlighting powered by highlight.js for Dart.
///
/// ```dart
/// import 'package:flutter_highlight/flutter_highlight.dart';
///
/// HighlightView(
///   'print("hello, world!")',
///   language: 'python',
///   theme: myTheme,
/// )
/// ```
library;

export 'src/highlight_view.dart' show HighlightView;
export 'src/text_span_builder.dart' show TextSpanBuilder;
export 'src/theme_map.dart' show ThemeMap;
export 'src/line_number_gutter.dart' show LineNumberGutter;
