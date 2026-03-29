import 'mode.dart';
import 'regex.dart' as regex;

void skipIfHasPrecedingDot(RegExpMatch match, dynamic response) {
  final input = match.input;
  final index = match.start;
  if (index > 0 && input[index - 1] == '.') {
    response.ignoreMatch();
  }
}

void scopeClassName(Mode mode, Mode? parent) {
  // No-op: Mode uses 'scope' directly; legacy 'className' is not a Mode field.
}

void beginKeywords(Mode mode, Mode? parent) {
  if (parent == null) return;
  if (mode.beginKeywords == null) return;

  final bk = mode.beginKeywords!;
  mode.begin = '\\b(${bk.split(' ').join('|')})(?!\\.)(?=\\b|\\s)';
  mode.beforeBeginCallback = skipIfHasPrecedingDot;
  mode.keywords ??= bk;
  mode.beginKeywords = null;

  mode.relevance ??= 0;
}

void compileIllegal(Mode mode, Mode? parent) {
  final illegal = mode.illegal;
  if (illegal is! List) return;
  mode.illegal = regex.eitherList(illegal);
}

void compileMatch(Mode mode, Mode? parent) {
  if (mode.match == null) return;
  if (mode.begin != null || mode.end != null) {
    throw StateError('begin & end are not supported with match');
  }
  mode.begin = mode.match;
  mode.match = null;
}

void compileRelevance(Mode mode, Mode? parent) {
  mode.relevance ??= 1;
}
