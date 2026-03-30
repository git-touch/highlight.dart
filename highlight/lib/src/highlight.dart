// ignore_for_file: non_constant_identifier_names

import 'mode.dart';
import 'token_tree.dart';
import 'regex.dart' as regex;
import 'utils.dart';
import 'mode_compiler.dart';

typedef LanguageDefinitionFn = Mode Function(Highlight hljs);

const _maxKeywordHits = 7;

class HighlightResult {
  String? _value;
  final String language;
  num relevance;
  final TokenTreeEmitter emitter;
  bool illegal;
  Mode? top;
  HighlightResult? secondBest;
  String? code;
  dynamic errorRaised;
  Map<String, dynamic>? illegalBy;

  HighlightResult({
    required this.language,
    required this.relevance,
    required this.emitter,
    this.illegal = false,
    this.top,
    this.secondBest,
    this.code,
    this.errorRaised,
    this.illegalBy,
    String? value,
  }) : _value = value;

  String get value {
    _value ??= emitter.toHTML();
    return _value!;
  }

  String toHtml() => value;
}

// ignore: deprecated_implement
class _CallbackRegExpMatch implements RegExpMatch {
  final RegExpMatch _inner;
  final List<String?> _groups;
  final String? _inputOverride;
  final int? _startOverride;
  final int? _endOverride;

  _CallbackRegExpMatch(
    this._inner,
    this._groups, {
    String? input,
    int? start,
    int? end,
  }) : _inputOverride = input,
       _startOverride = start,
       _endOverride = end;

  @override
  RegExp get pattern => _inner.pattern;

  @override
  String get input => _inputOverride ?? _inner.input;

  @override
  int get start => _startOverride ?? _inner.start;

  @override
  int get end => _endOverride ?? _inner.end;

  @override
  int get groupCount => _groups.isEmpty ? 0 : _groups.length - 1;

  @override
  String? group(int group) {
    if (group == 0) {
      return _groups.isNotEmpty ? _groups[0] : _inner.group(0);
    }
    if (group < 0 || group >= _groups.length) return null;
    return _groups[group];
  }

  @override
  String? operator [](int group) => this.group(group);

  @override
  List<String?> groups(List<int> groupIndices) {
    return groupIndices.map(group).toList();
  }

  @override
  Iterable<String> get groupNames => const [];

  @override
  String? namedGroup(String name) => null;
}

class Highlight {
  final Map<String, Mode> _languages = {};
  final Map<String, String> _aliases = {};
  final bool _safeMode = true;

  void registerLanguage(String name, LanguageDefinitionFn definition) {
    Mode lang;
    try {
      lang = definition(this);
    } catch (error) {
      if (!_safeMode) rethrow;
      lang = Mode(
        disableAutodetect: true,
        name: 'Plain text',
        contains: <dynamic>[],
      );
    }
    lang.name ??= name;
    _languages[name] = lang;
    lang.rawDefinition = definition;

    final aliases = lang.aliases;
    if (aliases != null) {
      registerAliases(aliases, languageName: name);
    }
  }

  void unregisterLanguage(String name) {
    _languages.remove(name);
    _aliases.removeWhere((_, v) => v == name);
  }

  List<String> listLanguages() => _languages.keys.toList();

  bool hasLanguage(String name) => getLanguage(name) != null;

  Mode? getLanguage(String name) {
    name = name.toLowerCase();
    return _languages[name] ?? _languages[_aliases[name]];
  }

  void registerAliases(List<String> aliasList, {required String languageName}) {
    for (final alias in aliasList) {
      _aliases[alias.toLowerCase()] = languageName;
    }
  }

  bool autoDetection(String name) {
    final lang = getLanguage(name);
    return lang != null && lang.disableAutodetect != true;
  }

  HighlightResult highlight(String code, {required String language}) {
    final context = <String, dynamic>{'code': code, 'language': language};

    final result = _highlight(
      context['language'] as String,
      context['code'] as String,
      true,
    );
    result.code = code;
    return result;
  }

  HighlightResult _highlight(
    String languageName,
    String codeToHighlight,
    bool ignoreIllegals, [
    Mode? continuation,
  ]) {
    final keywordHits = <String, int>{};

    RegExpMatch callbackMatch(Map<String, dynamic> match) {
      final original = match['_match'] as RegExpMatch;
      final groups = List<String?>.from(
        match['_groups'] as List<String?>? ?? [],
      );
      return _CallbackRegExpMatch(original, groups);
    }

    RegExpMatch? directRuleMatch(RegExp? re, Map<String, dynamic> match) {
      if (re == null) return null;
      final start = match['index'] as int? ?? 0;
      final remainder = codeToHighlight.substring(start);
      final direct = re.firstMatch(remainder);
      if (direct == null || direct.start != 0) return null;
      final groups = List<String?>.generate(
        direct.groupCount + 1,
        direct.group,
      );
      return _CallbackRegExpMatch(
        direct,
        groups,
        input: codeToHighlight,
        start: start,
        end: start + direct.end,
      );
    }

    final language = getLanguage(languageName);
    if (language == null) {
      throw ArgumentError('Unknown language: "$languageName"');
    }

    final md = _ensureCompiled(language);
    final options = <String, dynamic>{'classPrefix': 'hljs-'};
    var top = continuation ?? (md.shallowCopy()..modeId = 0);
    final continuations = <String, Mode>{};
    final emitter = TokenTreeEmitter(options);
    var modeBuffer = '';
    num relevance = 0;
    var index = 0;
    var iterations = 0;
    var resumeScanAtSamePosition = false;
    var modeIdCounter = 0;

    late void Function() processBuffer;
    late void Function() processKeywords;

    List<dynamic>? keywordData(Mode mode, String matchText) {
      final keywords = mode.compiledKeywords;
      if (keywords == null) return null;
      return keywords[matchText];
    }

    void emitKeyword(String keyword, String scope) {
      if (keyword.isEmpty) return;
      emitter.startScope(scope);
      emitter.addText(keyword);
      emitter.endScope();
    }

    void emitMultiClass(
      Map<dynamic, dynamic> scope,
      Map<String, dynamic> match,
    ) {
      var i = 1;
      final groups = match['_groups'] as List<String?>? ?? [];
      final emit = scope['_emit'] as Map<int, bool>? ?? {};
      final origMatch = match['_match'] as RegExpMatch?;
      final max = origMatch?.groupCount ?? groups.length;

      while (i <= max) {
        if (emit[i] != true) {
          i++;
          continue;
        }
        final klass = _classNameAlias(language, scope[i] as String?);
        String? text;
        if (i < groups.length) {
          text = groups[i];
        }
        if (text == null || text.isEmpty) {
          i++;
          continue;
        }
        if (klass != null && klass.isNotEmpty) {
          emitKeyword(text, klass);
        } else {
          modeBuffer = text;
          processKeywords();
          modeBuffer = '';
        }
        i++;
      }
    }

    processKeywords = () {
      final keywords = top.compiledKeywords;
      if (keywords == null) {
        emitter.addText(modeBuffer);
        return;
      }

      final keywordPatternRe = top.keywordPatternRe;
      if (keywordPatternRe == null) {
        emitter.addText(modeBuffer);
        return;
      }

      var lastIndex = 0;
      var buf = '';

      for (final match in keywordPatternRe.allMatches(modeBuffer)) {
        buf += modeBuffer.substring(lastIndex, match.start);
        final word = (language.caseInsensitive == true)
            ? match.group(0)!.toLowerCase()
            : match.group(0)!;
        final data = keywordData(top, word);
        if (data != null) {
          final kind = data[0] as String;
          final keywordRelevance = data[1] as num;
          emitter.addText(buf);
          buf = '';

          keywordHits[word] = (keywordHits[word] ?? 0) + 1;
          if (keywordHits[word]! <= _maxKeywordHits) {
            relevance += keywordRelevance;
          }
          if (kind.startsWith('_')) {
            buf += match.group(0)!;
          } else {
            final cssClass = _classNameAlias(language, kind) ?? kind;
            emitKeyword(match.group(0)!, cssClass);
          }
        } else {
          buf += match.group(0)!;
        }
        lastIndex = match.end;
      }
      buf += modeBuffer.substring(lastIndex);
      emitter.addText(buf);
    };

    void processSubLanguage() {
      if (modeBuffer.isEmpty) return;

      HighlightResult result;

      final subLang = top.subLanguage;
      if (subLang is String) {
        if (_languages[subLang] == null) {
          emitter.addText(modeBuffer);
          return;
        }
        result = _highlight(subLang, modeBuffer, true, continuations[subLang]);
        continuations[subLang] = result.top!;
      } else {
        final subset = subLang is List && subLang.isNotEmpty
            ? subLang.cast<String>()
            : null;
        result = highlightAuto(modeBuffer, languageSubset: subset);
      }

      if ((top.relevance ?? 0) > 0) {
        relevance += result.relevance;
      }
      emitter.addSublanguage(result.emitter, result.language);
    }

    processBuffer = () {
      if (top.subLanguage != null) {
        processSubLanguage();
      } else {
        processKeywords();
      }
      modeBuffer = '';
    };

    Mode startNewMode(Mode mode, Map<String, dynamic> match) {
      final scope = mode.scope;
      if (mode.skip != true && scope is String && scope.isNotEmpty) {
        emitter.openNode(_classNameAlias(language, scope) ?? scope);
      }
      final beginScope = mode.beginScope;
      if (mode.skip != true && beginScope is Map) {
        if (beginScope['_wrap'] != null) {
          final wrap =
              _classNameAlias(language, beginScope['_wrap'] as String?) ??
              beginScope['_wrap'] as String;
          emitKeyword(modeBuffer, wrap);
          modeBuffer = '';
        } else if (beginScope['_multi'] == true) {
          emitMultiClass(beginScope, match);
          modeBuffer = '';
        }
      }

      top = mode.shallowCopy()
        ..parent = top
        ..modeId = ++modeIdCounter;
      return top;
    }

    Mode? endOfMode(
      Mode mode,
      Map<String, dynamic> match,
      String matchPlusRemainder,
    ) {
      final endRe = mode.endRe;
      final matched = endRe?.firstMatch(matchPlusRemainder);

      if (matched != null && matched.start == 0) {
        final onEnd = mode.onEnd;
        if (onEnd != null) {
          mode.data ??= {};
          final resp = CallbackResponse(mode.data!);
          onEnd(matched, resp);
          if (resp.isMatchIgnored) return null;
        }

        while (mode.endsParent == true && mode.parent != null) {
          mode = mode.parent!;
        }
        return mode;
      }
      if (mode.endsWithParent == true) {
        return endOfMode(mode.parent!, match, matchPlusRemainder);
      }
      return null;
    }

    int doIgnore(String lexeme) {
      final matcher = top.matcher;
      if (matcher != null && matcher.regexIndex == 0) {
        modeBuffer += lexeme.isNotEmpty ? lexeme[0] : '';
        return 1;
      } else {
        resumeScanAtSamePosition = true;
        return 0;
      }
    }

    int doBeginMatch(Map<String, dynamic> match) {
      final lexeme = match['0'] as String? ?? '';
      final newMode = match['rule'] as Mode;
      final beginMatch =
          directRuleMatch(newMode.beginRe, match) ?? callbackMatch(match);

      newMode.data ??= {};
      final resp = CallbackResponse(newMode.data!);
      final beforeCallbacks = [newMode.beforeBeginCallback, newMode.onBegin];
      for (final cb in beforeCallbacks) {
        if (cb == null) continue;
        (cb as Function)(beginMatch, resp);
        if (resp.isMatchIgnored) return doIgnore(lexeme);
      }

      if (newMode.skip == true) {
        modeBuffer += lexeme;
      } else {
        if (newMode.excludeBegin == true) {
          modeBuffer += lexeme;
        }
        processBuffer();
        if (newMode.returnBegin != true && newMode.excludeBegin != true) {
          modeBuffer = lexeme;
        }
      }
      startNewMode(newMode, match);
      return newMode.returnBegin == true ? 0 : lexeme.length;
    }

    final noMatch = Object();

    dynamic doEndMatch(Map<String, dynamic> match) {
      final lexeme = match['0'] as String? ?? '';
      final matchIndex = (match['index'] as int).clamp(
        0,
        codeToHighlight.length,
      );
      final matchPlusRemainder = codeToHighlight.substring(matchIndex);

      final endMode = endOfMode(top, match, matchPlusRemainder);
      if (endMode == null) return noMatch;

      final origin = top;

      final endScope = top.endScope;
      if (endScope is Map && endScope['_wrap'] != null) {
        processBuffer();
        final wrap =
            _classNameAlias(language, endScope['_wrap'] as String?) ??
            endScope['_wrap'] as String;
        emitKeyword(lexeme, wrap);
      } else if (endScope is Map && endScope['_multi'] == true) {
        processBuffer();
        emitMultiClass(endScope, match);
      } else if (origin.skip == true) {
        modeBuffer += lexeme;
      } else {
        if (origin.returnEnd != true && origin.excludeEnd != true) {
          modeBuffer += lexeme;
        }
        processBuffer();
        if (origin.excludeEnd == true) {
          modeBuffer = lexeme;
        }
      }

      bool isSameMode(Mode a, Mode b) {
        if (a.modeId != null && b.modeId != null) {
          return a.modeId == b.modeId;
        }
        return identical(a, b);
      }

      final stopMode = endMode.parent;
      do {
        if (top.scope != null && top.skip != true) {
          emitter.closeNode();
        }
        if (top.skip != true && top.subLanguage == null) {
          relevance += top.relevance ?? 0;
        }
        top = top.parent ?? top;
      } while (stopMode != null && !isSameMode(top, stopMode));

      if (endMode.starts != null) {
        startNewMode(endMode.starts!, match);
      }
      return origin.returnEnd == true ? 0 : lexeme.length;
    }

    void processContinuations() {
      final list = <String>[];
      var current = top;
      while (!identical(current, md) && current.parent != null) {
        final scope = current.scope;
        if (scope is String && scope.isNotEmpty) {
          list.insert(0, scope);
        }
        current = current.parent!;
      }
      for (final item in list) {
        emitter.openNode(item);
      }
    }

    var lastMatch = <String, dynamic>{};

    int processLexeme(String textBeforeMatch, Map<String, dynamic>? match) {
      final lexeme = match != null ? (match['0'] as String? ?? '') : null;

      modeBuffer += textBeforeMatch;

      if (lexeme == null) {
        processBuffer();
        return 0;
      }

      if (lastMatch['type'] == 'begin' &&
          match!['type'] == 'end' &&
          lastMatch['index'] == match['index'] &&
          lexeme.isEmpty) {
        final mi = (match['index'] as int).clamp(0, codeToHighlight.length);
        final miEnd = (mi + 1).clamp(mi, codeToHighlight.length);
        modeBuffer += codeToHighlight.substring(mi, miEnd);
        if (!_safeMode) {
          throw StateError('0 width match regex ($languageName)');
        }
        return 1;
      }
      lastMatch = match!;

      if (match['type'] == 'begin') {
        return doBeginMatch(match);
      } else if (match['type'] == 'illegal' && !ignoreIllegals) {
        throw StateError(
          'Illegal lexeme "$lexeme" for mode "${top.scope ?? '<unnamed>'}"',
        );
      } else if (match['type'] == 'end') {
        final processed = doEndMatch(match);
        if (!identical(processed, noMatch)) {
          return processed as int;
        }
      }

      if (match['type'] == 'illegal' && lexeme.isEmpty) {
        final matchIndex = match['index'] as int;
        if (matchIndex < codeToHighlight.length) {
          modeBuffer += '\n';
        }
        return 1;
      }

      if (iterations > 100000 && iterations > codeToHighlight.length * 3) {
        throw StateError(
          'potential infinite loop, way more iterations than matches',
        );
      }

      modeBuffer += lexeme;
      return lexeme.length;
    }

    processContinuations();

    try {
      final emitTokens = language.emitTokens;
      if (emitTokens == null) {
        final matcher = top.matcher;
        matcher?.considerAll();

        while (true) {
          iterations++;
          if (resumeScanAtSamePosition) {
            resumeScanAtSamePosition = false;
          } else {
            final matcher = top.matcher;
            matcher?.considerAll();
          }
          final matcher = top.matcher;
          if (matcher == null) break;
          matcher.lastIndex = index;

          final match = matcher.exec(codeToHighlight);
          if (match == null) break;

          final matchIdx = match['index'] as int;
          final safeIndex = index.clamp(0, codeToHighlight.length);
          final safeMatchIdx = matchIdx.clamp(
            safeIndex,
            codeToHighlight.length,
          );
          final beforeMatch = codeToHighlight.substring(
            safeIndex,
            safeMatchIdx,
          );
          final processedCount = processLexeme(beforeMatch, match);
          index = matchIdx + processedCount;
        }
        final safeIndex = index.clamp(0, codeToHighlight.length);
        processLexeme(codeToHighlight.substring(safeIndex), null);
      } else {
        emitTokens(codeToHighlight, emitter);
      }

      emitter.finalize();

      return HighlightResult(
        language: languageName,
        relevance: relevance,
        emitter: emitter,
        illegal: false,
        top: top,
      );
    } catch (err) {
      if (err is StateError && err.message.contains('Illegal')) {
        return HighlightResult(
          language: languageName,
          value: escapeHTML(codeToHighlight),
          relevance: 0,
          emitter: TokenTreeEmitter(options),
          illegal: true,
          illegalBy: {
            'message': err.message,
            'index': index,
            'context': codeToHighlight.substring(
              (index - 100).clamp(0, codeToHighlight.length),
              (index + 100).clamp(0, codeToHighlight.length),
            ),
            'mode': top.scope,
          },
        );
      } else if (_safeMode) {
        return HighlightResult(
          language: languageName,
          value: escapeHTML(codeToHighlight),
          relevance: 0,
          emitter: emitter,
          illegal: false,
          errorRaised: err,
          top: top,
        );
      } else {
        rethrow;
      }
    }
  }

  HighlightResult _justTextResult(String code) {
    final options = <String, dynamic>{'classPrefix': 'hljs-'};
    final emitter = TokenTreeEmitter(options);
    emitter.addText(code);
    return HighlightResult(
      language: '',
      relevance: 0,
      value: escapeHTML(code),
      emitter: emitter,
      illegal: false,
    );
  }

  HighlightResult highlightAuto(String code, {List<String>? languageSubset}) {
    final subset = languageSubset ?? _languages.keys.toList();
    final plaintext = _justTextResult(code);

    final results = <HighlightResult>[];
    for (final name in subset) {
      if (getLanguage(name) == null) continue;
      if (!autoDetection(name)) continue;
      try {
        results.add(_highlight(name, code, false));
      } catch (_) {
        // skip languages that error
      }
    }
    results.insert(0, plaintext);

    final indexedResults = results.asMap().entries.toList();
    indexedResults.sort((a, b) {
      final resultA = a.value;
      final resultB = b.value;

      if (resultA.relevance != resultB.relevance) {
        return (resultB.relevance - resultA.relevance).sign.toInt();
      }

      if (resultA.language.isNotEmpty && resultB.language.isNotEmpty) {
        final langA = getLanguage(resultA.language);
        final langB = getLanguage(resultB.language);
        if (langA != null && langA.supersetOf == resultB.language) return 1;
        if (langB != null && langB.supersetOf == resultA.language) return -1;
      }

      return a.key.compareTo(b.key);
    });

    final sortedResults = indexedResults.map((entry) => entry.value).toList();
    final best = sortedResults[0];
    final second = sortedResults.length > 1 ? sortedResults[1] : null;
    best.secondBest = second;
    return best;
  }

  Mode _ensureCompiled(Mode language) {
    if (!language.isCompiled) {
      return compileLanguage(language);
    }
    return language;
  }

  String? _classNameAlias(Mode language, String? kind) {
    if (kind == null) return null;
    final aliases = language.classNameAliases;
    if (aliases != null && aliases.containsKey(kind)) {
      return aliases[kind];
    }
    return kind;
  }

  // Common modes - mirrors MODES in highlight.js
  Mode get MATCH_NOTHING_RE => Mode(begin: r'\b\B');

  static const IDENT_RE = r'[a-zA-Z]\w*';
  static const UNDERSCORE_IDENT_RE = r'[a-zA-Z_]\w*';
  static const NUMBER_RE = r'\b\d+(\.\d+)?';
  static const C_NUMBER_RE =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  static const BINARY_NUMBER_RE = r'\b(0b[01]+)';
  static const RE_STARTERS_RE =
      r'!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~';

  Mode SHEBANG([Mode? opts]) {
    const beginShebang = r'^#![ ]*/';
    dynamic begin = beginShebang;
    if (opts?.binary != null) {
      begin = regex.concat(beginShebang, r'.*\b', opts!.binary!, r'\b.*');
    }
    return Mode(
      scope: 'meta',
      begin: begin,
      end: r'$',
      relevance: 0,
      onBegin: (RegExpMatch m, CallbackResponse resp) {
        if (m.start != 0) resp.ignoreMatch();
      },
    );
  }

  Mode get BACKSLASH_ESCAPE => Mode(begin: r'\\[\s\S]', relevance: 0);

  Mode get APOS_STRING_MODE => Mode(
    scope: 'string',
    begin: "'",
    end: "'",
    illegal: r'\n',
    contains: [BACKSLASH_ESCAPE],
  );

  Mode get QUOTE_STRING_MODE => Mode(
    scope: 'string',
    begin: '"',
    end: '"',
    illegal: r'\n',
    contains: [BACKSLASH_ESCAPE],
  );

  Mode get PHRASAL_WORDS_MODE => Mode(
    begin:
        r"\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\b",
  );

  Mode COMMENT(dynamic begin, dynamic end, [Mode? modeOptions]) {
    final mode = Mode(
      scope: modeOptions?.scope ?? 'comment',
      begin: modeOptions?.begin ?? begin,
      end: modeOptions?.end ?? end,
      contains: modeOptions?.contains != null
          ? List.from(modeOptions!.contains!)
          : <dynamic>[],
      relevance: modeOptions?.relevance,
      keywords: modeOptions?.keywords,
      illegal: modeOptions?.illegal,
    );

    final contains = mode.contains as List<dynamic>;
    contains.add(
      Mode(
        scope: 'doctag',
        begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
        end: RegExp(r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):'),
        excludeBegin: true,
        relevance: 0,
      ),
    );

    final englishWord = regex.either(
      'I',
      'a',
      'is',
      'so',
      'us',
      'to',
      'at',
      'if',
      'in',
      'it',
      'on',
      RegExp(r"[A-Za-z]+['][](d|ve|re|ll|t|s|n)"),
      RegExp(r'[A-Za-z]+[-][a-z]+'),
      RegExp(r'[A-Za-z][a-z]{2,}'),
    );
    contains.add(
      Mode(
        begin: regex.concat(
          r'[ ]+',
          '(',
          englishWord,
          r'[.]?[:]?([.][ ]|[ ])',
          '){3}',
        ),
      ),
    );

    return mode;
  }

  Mode get C_LINE_COMMENT_MODE => COMMENT('//', r'$');
  Mode get C_BLOCK_COMMENT_MODE => COMMENT(r'/\*', r'\*/');
  Mode get HASH_COMMENT_MODE => COMMENT('#', r'$');

  Mode get NUMBER_MODE => Mode(scope: 'number', begin: NUMBER_RE, relevance: 0);

  Mode get C_NUMBER_MODE =>
      Mode(scope: 'number', begin: C_NUMBER_RE, relevance: 0);

  Mode get BINARY_NUMBER_MODE =>
      Mode(scope: 'number', begin: BINARY_NUMBER_RE, relevance: 0);

  Mode get REGEXP_MODE => Mode(
    scope: 'regexp',
    begin: r'/(?=[^/\n]*\/)',
    end: r'/[gimuy]*',
    contains: [
      BACKSLASH_ESCAPE,
      Mode(
        begin: r'\[',
        end: r'\]',
        relevance: 0,
        contains: [BACKSLASH_ESCAPE],
      ),
    ],
  );

  Mode get TITLE_MODE => Mode(scope: 'title', begin: IDENT_RE, relevance: 0);

  Mode get UNDERSCORE_TITLE_MODE =>
      Mode(scope: 'title', begin: UNDERSCORE_IDENT_RE, relevance: 0);

  Mode get METHOD_GUARD =>
      Mode(begin: '\\.\\s*$UNDERSCORE_IDENT_RE', relevance: 0);

  Mode END_SAME_AS_BEGIN(Mode mode) {
    mode.onBegin = (RegExpMatch m, CallbackResponse resp) {
      resp.data['_beginMatch'] = m.group(1);
    };
    mode.onEnd = (RegExpMatch m, CallbackResponse resp) {
      if (resp.data['_beginMatch'] != m.group(1)) resp.ignoreMatch();
    };
    return mode;
  }

  // regex utilities exposed for language definitions
  Map<String, dynamic> get regexHelpers => {
    'concat': regex.concat,
    'lookahead': regex.lookahead,
    'either': regex.either,
    'optional': regex.optional,
    'anyNumberOfTimes': regex.anyNumberOfTimes,
  };
}

final hljs = Highlight();
