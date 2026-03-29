import 'mode.dart';
import 'regex.dart' as regex;

void beforeMatchExt(Mode mode, Mode? parent) {
  if (mode.beforeMatch == null) return;
  if (mode.starts != null) {
    throw StateError('beforeMatch cannot be used with starts');
  }

  final originalMode = mode.shallowCopy();

  // Reset all user-defined fields
  mode.name = null;
  mode.aliases = null;
  mode.scope = null;
  mode.end = null;
  mode.match = null;
  mode.beginScope = null;
  mode.endScope = null;
  mode.contains = null;
  mode.illegal = null;
  mode.subLanguage = null;
  mode.endsWithParent = null;
  mode.endsParent = null;
  mode.excludeBegin = null;
  mode.excludeEnd = null;
  mode.returnBegin = null;
  mode.returnEnd = null;
  mode.skip = null;
  mode.variants = null;
  mode.beginKeywords = null;
  mode.beforeMatch = null;
  mode.caseInsensitive = null;
  mode.unicodeRegex = null;
  mode.disableAutodetect = null;
  mode.classNameAliases = null;
  mode.supersetOf = null;
  mode.compilerExtensions = null;
  mode.binary = null;
  mode.onBegin = null;
  mode.onEnd = null;
  mode.beforeBeginCallback = null;
  mode.emitTokens = null;
  mode.data = null;
  mode.rawDefinition = null;

  // Set the transformed fields
  mode.keywords = originalMode.keywords;
  mode.begin = regex.concat(
    originalMode.beforeMatch,
    regex.lookahead(originalMode.begin),
  );

  final childMode = originalMode.shallowCopy()
    ..endsParent = true
    ..beforeMatch = null;
  mode.starts = Mode(relevance: 0, contains: [childMode]);
  mode.relevance = 0;
}
