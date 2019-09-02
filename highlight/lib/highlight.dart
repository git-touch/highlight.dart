import 'src/highlight.dart';
import 'src/mode.dart';
import 'src/result.dart';

export 'src/highlight.dart';
export 'src/node.dart';
export 'src/mode.dart';
export 'src/result.dart';

var _h = Highlight();

/// Parse input code and returns a highlight [Result] which contains relevance and tree nodes
///
/// Call [Result.toHtml] method to get HTML string
Result parse(String input, {String language}) {
  return _h.parse(input, language: language);
}

void registerLanguage(String name, Mode languageMode) {
  _h.registerLanguage(name, languageMode);
}
