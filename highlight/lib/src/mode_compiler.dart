import 'mode.dart';
import 'regex.dart' as regex;
import 'compiler_extensions.dart' as ext;
import 'before_match.dart';
import 'compile_keywords.dart';
import 'multi_class.dart';

class MultiRegex {
  final Map<int, Map<String, dynamic>> matchIndexes = {};
  final List<List<dynamic>> regexes = [];
  int matchAt = 1;
  int position = 0;
  RegExp? matcherRe;
  int lastIndex = 0;
  final RegExp Function(String, bool) langRe;

  MultiRegex(this.langRe);

  void addRule(RegExp re, Map<String, dynamic> opts) {
    opts['position'] = position++;
    matchIndexes[matchAt] = opts;
    regexes.add([opts, re]);
    matchAt += regex.countMatchGroups(re) + 1;
  }

  void compile() {
    if (regexes.isEmpty) {
      matcherRe = null;
      return;
    }
    final terminators = regexes.map((el) => el[1] as RegExp).toList();
    matcherRe = langRe(
      regex.rewriteBackreferences(
        terminators.map((t) => t.pattern).toList(),
        joinWith: '|',
      ),
      true,
    );
    lastIndex = 0;
  }

  Map<String, dynamic>? exec(String s) {
    if (matcherRe == null) return null;
    if (lastIndex >= s.length) {
      if (lastIndex > s.length) return null;
    }

    final startIdx = lastIndex < 0
        ? 0
        : (lastIndex > s.length ? s.length : lastIndex);
    Iterable<RegExpMatch> allMatches;
    try {
      allMatches = matcherRe!.allMatches(s, startIdx);
    } catch (_) {
      return null;
    }
    RegExpMatch? match;
    for (final m in allMatches) {
      match = m;
      break;
    }
    if (match == null) return null;

    int? i;
    for (var idx = 1; idx <= match.groupCount; idx++) {
      if (match.group(idx) != null) {
        i = idx;
        break;
      }
    }
    if (i == null) return null;

    final matchData = matchIndexes[i]!;

    final result = <String, dynamic>{
      ...matchData,
      'index': match.start,
      '_match': match,
    };

    final groups = <String?>[];
    for (var g = i; g <= match.groupCount; g++) {
      groups.add(match.group(g));
    }
    result['_groups'] = groups;
    result['0'] = match.group(0);

    return result;
  }
}

class ResumableMultiRegex {
  final List<List<dynamic>> rules = [];
  final Map<int, MultiRegex> multiRegexes = {};
  int count = 0;
  int lastIndex = 0;
  int regexIndex = 0;
  final RegExp Function(String, bool) langRe;

  ResumableMultiRegex(this.langRe);

  MultiRegex getMatcher(int index) {
    if (multiRegexes.containsKey(index)) return multiRegexes[index]!;

    final matcher = MultiRegex(langRe);
    for (var i = index; i < rules.length; i++) {
      final rule = rules[i];
      matcher.addRule(rule[0] as RegExp, rule[1] as Map<String, dynamic>);
    }
    matcher.compile();
    multiRegexes[index] = matcher;
    return matcher;
  }

  bool resumingScanAtSamePosition() {
    return regexIndex != 0;
  }

  void considerAll() {
    regexIndex = 0;
  }

  void addRule(RegExp re, Map<String, dynamic> opts) {
    rules.add([re, opts]);
    if (opts['type'] == 'begin') count++;
  }

  Map<String, dynamic>? exec(String s) {
    final m = getMatcher(regexIndex);
    m.lastIndex = lastIndex;
    var result = m.exec(s);

    if (resumingScanAtSamePosition()) {
      if (result != null && result['index'] == lastIndex) {
        // valid resume
      } else {
        final m2 = getMatcher(0);
        m2.lastIndex = lastIndex + 1;
        result = m2.exec(s);
      }
    }

    if (result != null) {
      regexIndex += (result['position'] as int) + 1;
      if (regexIndex == count) {
        considerAll();
      }
    }

    return result;
  }
}

ResumableMultiRegex buildModeRegex(
  Mode mode,
  RegExp Function(String, bool) langRe,
) {
  final mm = ResumableMultiRegex(langRe);

  final contains = mode.contains ?? [];
  for (final term in contains) {
    if (term is Mode) {
      final beginRe = term.beginRe;
      if (beginRe != null) {
        mm.addRule(beginRe, {'rule': term, 'type': 'begin'});
      }
    }
  }

  final terminatorEnd = mode.terminatorEnd;
  if (terminatorEnd != null && terminatorEnd.isNotEmpty) {
    mm.addRule(langRe(terminatorEnd, false), {'type': 'end'});
  }
  final illegalRe = mode.illegalRe;
  if (illegalRe != null) {
    mm.addRule(illegalRe, {'type': 'illegal'});
  }

  return mm;
}

bool _dependencyOnParent(Mode? mode) {
  if (mode == null) return false;
  return mode.endsWithParent == true || _dependencyOnParent(mode.starts);
}

dynamic _expandOrCloneMode(Mode mode) {
  if (mode.variants != null && mode.cachedVariants == null) {
    mode.cachedVariants = mode.variants!.map((variant) {
      return mode.copyWith(clearVariants: true).mergeWith(variant);
    }).toList();
  }

  if (mode.cachedVariants != null) {
    return mode.cachedVariants!;
  }

  if (_dependencyOnParent(mode)) {
    return mode.copyWith();
  }

  return mode;
}

Mode compileLanguage(Mode language) {
  RegExp langRe(String value, bool global) {
    final caseInsensitive = language.caseInsensitive == true;
    final unicodeRegex = language.unicodeRegex == true;
    return RegExp(
      value,
      multiLine: true,
      caseSensitive: !caseInsensitive,
      unicode: unicodeRegex,
    );
  }

  Mode compileMode(Mode mode, Mode? parent) {
    if (mode.isCompiled) return mode;

    ext.scopeClassName(mode, parent);
    ext.compileMatch(mode, parent);
    multiClass(mode);
    beforeMatchExt(mode, parent);

    final compilerExtensions = language.compilerExtensions ?? [];
    for (final e in compilerExtensions) {
      if (e is Function) {
        (e as void Function(Mode, Mode?))(mode, parent);
      }
    }

    final extensions2 = <void Function(Mode, Mode?)>[
      ext.beginKeywords,
      ext.compileIllegal,
      ext.compileRelevance,
    ];
    for (final e in extensions2) {
      e(mode, parent);
    }

    mode.isCompiled = true;

    String? keywordPattern;
    final keywords = mode.keywords;
    if (keywords is Map && keywords.containsKey(r'$pattern')) {
      final kwMap = Map<String, dynamic>.from(keywords);
      keywordPattern = regex.source(kwMap.remove(r'$pattern'));
      mode.keywords = kwMap;
    }
    keywordPattern ??= r'\w+';

    if (mode.keywords != null) {
      mode.compiledKeywords = compileKeywords(
        mode.keywords,
        language.caseInsensitive == true,
      );
    }

    mode.keywordPatternRe = langRe(keywordPattern, true);

    if (parent != null) {
      mode.begin ??= r'\B|\b';
      mode.beginRe = langRe(regex.source(mode.begin) ?? r'\B|\b', false);
      final endSource = regex.source(mode.end);
      final hasEnd =
          endSource != null && endSource.isNotEmpty && mode.end != false;
      if (!hasEnd && mode.endsWithParent != true) {
        mode.end = r'\B|\b';
      }
      if (mode.end != null && mode.end != false) {
        mode.endRe = langRe(regex.source(mode.end)!, false);
      }
      mode.terminatorEnd = regex.source(mode.end) ?? '';
      if (mode.endsWithParent == true &&
          parent.terminatorEnd != null &&
          parent.terminatorEnd!.isNotEmpty) {
        mode.terminatorEnd = mode.terminatorEnd!.isNotEmpty
            ? '${mode.terminatorEnd}|${parent.terminatorEnd}'
            : parent.terminatorEnd;
      }
    }
    if (mode.illegal != null) {
      mode.illegalRe = langRe(regex.source(mode.illegal)!, false);
    }
    mode.contains ??= <dynamic>[];

    final expandedContains = <dynamic>[];

    void addExpandedContains(dynamic entry) {
      if (entry is List) {
        for (final nested in entry) {
          addExpandedContains(nested);
        }
        return;
      }

      final target = entry == 'self' ? mode : (entry as Mode);
      final expanded = _expandOrCloneMode(target);
      if (expanded is List) {
        expandedContains.addAll(expanded);
      } else {
        expandedContains.add(expanded);
      }
    }

    for (final c in mode.contains!) {
      addExpandedContains(c);
    }
    mode.contains = expandedContains;

    for (final c in mode.contains!) {
      if (c is Mode) {
        compileMode(c, mode);
      }
    }

    if (mode.starts != null) {
      compileMode(mode.starts!, parent);
    }

    mode.matcher = buildModeRegex(mode, langRe);
    return mode;
  }

  language.compilerExtensions ??= <dynamic>[];

  if (language.contains != null && language.contains!.contains('self')) {
    throw StateError(
      'ERR: contains `self` is not supported at the top-level of a language.',
    );
  }

  language.classNameAliases = Map<String, String>.from(
    language.classNameAliases ?? {},
  );

  return compileMode(language, null);
}
