import 'src/highlight.dart';
import 'src/mode.dart';
import 'src/result.dart';

export 'src/highlight.dart';
export 'src/node.dart';
export 'src/mode.dart';
export 'src/result.dart';

var _h = Highlight();

/// Parse [source] and returns a highlight [Result] which contains relevance and tree nodes.
///
/// Call [Result.toHtml] method to get HTML string
///
/// ```dart
/// var result = highlight.parse(source, language: 'dart');
/// var html = result.toHtml();
/// ```
///
/// [language]: Required if [autoDetect] is not true.
///
/// [autoDetect]: The default value is `false`. Pass `true` to enable language auto detection.
/// Notice that **this may cause performance issue** because it will try to parse source with
/// all registered languages and use the most relevant one.
Result parse(String input, {String language, bool autoDetection = false}) {
  return _h.parse(input, language: language, autoDetection: autoDetection);
}

void registerLanguage(String name, Mode languageMode) {
  _h.registerLanguage(name, languageMode);
}
