import 'mode.dart';
import 'regex.dart' as regex;

void _remapScopeNames(Mode mode, List<dynamic> regexes, String key) {
  var offset = 0;
  final scopeNames =
      (key == 'beginScope' ? mode.beginScope : mode.endScope)
          as Map<dynamic, dynamic>;
  final emit = <int, bool>{};
  final positions = <dynamic, dynamic>{};

  for (var i = 1; i <= regexes.length; i++) {
    positions[i + offset] = scopeNames[i];
    emit[i + offset] = true;
    offset += regex.countMatchGroups(regexes[i - 1]);
  }
  positions['_emit'] = emit;
  positions['_multi'] = true;

  if (key == 'beginScope') {
    mode.beginScope = positions;
  } else {
    mode.endScope = positions;
  }
}

void _beginMultiClass(Mode mode) {
  final begin = mode.begin;
  if (begin is! List) return;

  if (mode.skip == true ||
      mode.excludeBegin == true ||
      mode.returnBegin == true) {
    throw StateError(
      'skip, excludeBegin, returnBegin not compatible with beginScope: {}',
    );
  }

  if (mode.beginScope is! Map) {
    throw StateError('beginScope must be object');
  }

  _remapScopeNames(mode, begin, 'beginScope');
  mode.begin = regex.rewriteBackreferences(begin, joinWith: '');
}

void _endMultiClass(Mode mode) {
  final end = mode.end;
  if (end is! List) return;

  if (mode.skip == true || mode.excludeEnd == true || mode.returnEnd == true) {
    throw StateError(
      'skip, excludeEnd, returnEnd not compatible with endScope: {}',
    );
  }

  if (mode.endScope is! Map) {
    throw StateError('endScope must be object');
  }

  _remapScopeNames(mode, end, 'endScope');
  mode.end = regex.rewriteBackreferences(end, joinWith: '');
}

void _scopeSugar(Mode mode) {
  if (mode.scope is Map) {
    mode.beginScope = mode.scope;
    mode.scope = null;
  }
}

void multiClass(Mode mode) {
  _scopeSugar(mode);

  if (mode.beginScope is String) {
    mode.beginScope = {'_wrap': mode.beginScope};
  }
  if (mode.endScope is String) {
    mode.endScope = {'_wrap': mode.endScope};
  }

  _beginMultiClass(mode);
  _endMultiClass(mode);
}
