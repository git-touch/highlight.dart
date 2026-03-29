/// highlight.js for Dart — syntax highlighting with language auto-detection.
///
/// This import registers all languages automatically:
/// ```dart
/// import 'package:highlight/highlight.dart';
///
/// final result = hljs.highlight('print("hello")', language: 'python');
/// print(result.toHtml());
/// ```
///
/// For selective language loading, use `highlight_core.dart` instead.
library;

export 'highlight_core.dart';
import 'highlight_core.dart';
import 'languages/_all.dart';

final _initialized = _init();

bool _init() {
  registerAllLanguages(hljs);
  return true;
}

void ensureInitialized() {
  // ignore: unnecessary_statements
  _initialized;
}
