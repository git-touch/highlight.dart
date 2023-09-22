import 'package:collection/collection.dart' show IterableExtension;
import 'package:highlight/languages/plaintext.dart';
import 'utils.dart';
import 'node.dart';
import 'mode.dart';
import 'result.dart';

class Highlight {
  final _languages = {}.cast<String, Mode>();
  final _aliases = {}.cast<String, String>();
  Mode? _languageMode;

  bool _classNameExists(String? className) {
    return className != null && className.isNotEmpty;
  }

  List<Mode> _expandMode(Mode mode) {
    if (mode.variants != null && mode.cached_variants == null) {
      mode.cached_variants = mode.variants!.map((variant) {
        if (variant!.ref != null) {
          variant = _languageMode!.refs![variant.ref!];
        }
        return Mode.inherit(mode, variant)..variants = null;
      }).toList();
    }
    return mode.cached_variants ??
        (mode.endsWithParent == true ? [Mode.inherit(mode)] : [mode]);
  }

  RegExp _langRe(String value, [bool? global]) {
    return RegExp(
      value,
      multiLine: true,
      caseSensitive: _languageMode!.case_insensitive != true,
    );
  }

  String _joinRe(List<String?> regexps, String separator) {
    var backreferenceRe = r'\[(?:[^\\\]]|\\.)*\]|\(\??|\\([1-9][0-9]*)|\\.';
    var numCaptures = 0;
    var ret = '';
    for (var i = 0; i < regexps.length; i++) {
      var offset = numCaptures;
      var re = regexps[i]!;
      if (i > 0) {
        ret += separator;
      }

      while (re.isNotEmpty) {
        var match = RegExp(backreferenceRe).firstMatch(re);
        if (match == null) {
          ret += re;
          break;
        }
        ret += substring(re, 0, match.start);
        re = substring(re, match.start + match[0]!.length);
        if (match[0]![0] == '\\' && match[1] != null) {
          ret += '\\' + (int.parse(match[1]!) + offset).toString();
        } else {
          ret += match[0]!;
          if (match[0] == '(') {
            numCaptures++;
          }
        }
      }
    }
    return ret;
  }

  void _compileMode(Mode mode, [Mode? parent]) {
    if (mode.compiled == true) return;
    mode.compiled = true;

    mode.keywords = mode.keywords ?? mode.beginKeywords;

    if (mode.keywords != null) {
      var compiledKeywords = {}.cast<String, dynamic>();

      void _flatten(String className, String? str) {
        if (_languageMode!.case_insensitive == true) {
          str = str!.toLowerCase();
        }
        str!.split(' ').forEach((kw) {
          var pair = kw.split('|');
          try {
            compiledKeywords[pair[0]] = [
              className,
              pair.length > 1 ? int.parse(pair[1]) : 1
            ];
          } catch (err) {
            print(err);
            // FIXME:
          }
        });
      }

      if (mode.keywords is String) {
        _flatten('keyword', mode.keywords);
      } else if (mode.keywords is Map<String, String>) {
        (mode.keywords as Map<String, String>).forEach(_flatten);
      }
      mode.keywords = compiledKeywords;
    }

    mode.lexemesRe = _langRe(mode.lexemes ?? r'\w+', true);

    if (parent != null) {
      if (mode.beginKeywords != null) {
        mode.begin = '\\b(' + mode.beginKeywords!.split(' ').join('|') + ')\\b';
      }
      mode.begin ??= r'\B|\b';
      mode.beginRe = _langRe(mode.begin!);
      if (mode.endSameAsBegin == true) mode.end = mode.begin;
      if (mode.end == null && mode.endsWithParent != true) mode.end = r'\B|\b';
      if (mode.end != null) mode.endRe = _langRe(mode.end!);
      mode.terminator_end = mode.end ?? '';
      if (mode.endsWithParent == true && parent.terminator_end != null) {
        mode.terminator_end = mode.terminator_end! +
            (mode.end != null ? '|' : '') +
            parent.terminator_end!;
      }
    }
    if (mode.illegal != null) mode.illegalRe = _langRe(mode.illegal!);
    mode.relevance ??= 1;
    mode.contains ??= [];

    Mode? _pointToRef(Mode? m) {
      if (m!.ref != null) {
        return _languageMode!.refs![m.ref!];
      }
      return m;
    }

    if (mode.contains != null) {
      mode.contains = mode.contains!.map(_pointToRef).toList();
    }
    if (mode.variants != null) {
      mode.variants = mode.variants!.map(_pointToRef).toList();
    }
    if (mode.starts != null) {
      mode.starts = _pointToRef(mode.starts);
    }

    var contains = [].cast<Mode>();
    mode.contains!.forEach((c) {
      contains.addAll(_expandMode(c!.self == true ? mode : c));
    });

    mode.contains = contains;
    mode.contains!.forEach((c) {
      _compileMode(c!, mode);
    });

    if (mode.starts != null) {
      _compileMode(mode.starts!, parent);
    }

    var terminators = (mode.contains!.map((c) {
      return c!.beginKeywords != null
          ? '\\.?(?:' + c.begin! + ')\\.?'
          : c.begin;
    }).toList()
          ..addAll([mode.terminator_end, mode.illegal]))
        .where((x) => x != null && x.isNotEmpty)
        .toList();

    mode.terminators = terminators.isNotEmpty
        ? _langRe(_joinRe(terminators, '|'), true)
        : null;
  }

  List<Node>? _buildSpan(String? className, List<Node>? insideSpan,
      {bool noPrefix = false}) {
    if (!_classNameExists(className)) {
      return insideSpan;
    }

    return [
      Node(noPrefix: noPrefix, className: className, children: insideSpan)
    ];
  }

  bool _testRe(RegExp? re, String lexeme) {
    if (re != null) {
      for (var match in re.allMatches(lexeme)) {
        return match.start == 0;
      }
    }
    return false;
  }

  RegExp _escapeRe(String value) {
    return RegExp(value.replaceAll(RegExp(r'[-\/\\^$*+?.()|[\]{}]'), r'\$&'),
        multiLine: true);
  }

  Mode? _subMode(String lexeme, Mode mode) {
    for (var i = 0; i < mode.contains!.length; i++) {
      if (_testRe(mode.contains![i]!.beginRe, lexeme)) {
        if (mode.contains![i]!.endSameAsBegin == true) {
          mode.contains![i]!.endRe =
              _escapeRe(mode.contains![i]!.beginRe!.firstMatch(lexeme)![0]!);
        }

        return mode.contains![i];
      }
    }
    return null;
  }

  Mode? _endOfMode(Mode mode, String lexeme) {
    if (_testRe(mode.endRe, lexeme)) {
      while (mode.endsParent == true && mode.parent != null) {
        mode = mode.parent!;
      }
      return mode;
    }
    if (mode.endsWithParent == true) {
      return _endOfMode(mode.parent!, lexeme);
    }
    return null;
  }

  void _addNodes(List<Node> nodes, List<Node>? result) {
    nodes.forEach((node) {
      if (result!.isEmpty ||
          result.last.children != null ||
          node.className != null) {
        result.add(node);
      } else {
        result.last.value = result.last.value! + node.value!;
      }
    });
  }

  void _addText(String? text, List<Node> result) {
    _addNodes([Node(value: text)], result);
  }

  /// Parse [source] and returns a highlight [Result] which contains relevance and tree nodes.
  ///
  /// Call [Result.toHtml] method to get HTML string
  ///
  /// ```dart
  /// var result = highlight.parse(source, language: 'dart');
  /// var html = result.toHtml();
  /// ```
  ///
  /// [language]: Required if [autoDetection] is not true.
  ///
  /// [autoDetect]: The default value is `false`. Pass `true` to enable language auto detection.
  /// Notice that **this may cause performance issue** because it will try to parse source with
  /// all registered languages and use the most relevant one.
  Result parse(String source, {String? language, bool autoDetection = false}) {
    if (language == null) {
      if (autoDetection) {
        return _parseAuto(source);
      } else {
        throw ArgumentError.notNull('language');
      }
    }
    return _parse(source, language: language);
  }

  Result _parse(
    String source, {
    String? language,
    bool ignoreIllegals = false,
    Mode? continuation,
  }) {
    var langMode = _languageMode = _getLanguage(language) ?? plaintext;
    // TODO: strategy
    // if (_languageMode == null) {
    //   throw 'Unknown language: "' + language + '"';
    // }

    // FIXME: Move inside highlight to use lang reference
    dynamic _keywordMatch(Mode mode, RegExpMatch match) {
      var match_str = langMode.case_insensitive == true
          ? match[0]!.toLowerCase()
          : match[0];
      return mode.keywords[match_str];
    }

    _compileMode(_languageMode!);

    var top = continuation ?? _languageMode;
    var continuations = {}.cast<String, Mode?>();
    var children = [].cast<Node>();
    List<Node>? currentChildren = children;
    var stack = [].cast<List<Node>?>();

    void _pop() {
      currentChildren = stack.isEmpty ? children : stack.removeLast();
    }

    Mode? current;
    for (current = top; current != _languageMode; current = current.parent) {
      if (_classNameExists(current!.className)) {
        currentChildren!.add(Node(className: current.className, children: []));
        stack.add(currentChildren);
        currentChildren = currentChildren!.last.children;
      }
    }
    var mode_buffer = '';
    var relevance = 0;

    bool _isIllegal(String lexeme, Mode? mode) {
      return !ignoreIllegals && _testRe(mode!.illegalRe, lexeme);
    }

    void _startNewMode(Mode mode) {
      if (_classNameExists(mode.className)) {
        currentChildren!.add(Node(className: mode.className, children: []));
        stack.add(currentChildren);
        currentChildren = currentChildren!.last.children;
      }
      top = Mode.inherit(mode)..parent = top;
    }

    List<Node> _processKeywords() {
      if (top!.keywords == null) return [Node(value: mode_buffer)];

      var keyword_match;
      RegExpMatch? match;
      var result = [].cast<Node>();
      var last_index = 0;

      match = top!.lexemesRe!.firstMatch(mode_buffer);

      while (match != null) {
        _addText(substring(mode_buffer, last_index, match.start), result);
        keyword_match = _keywordMatch(top!, match);
        if (keyword_match != null) {
          relevance += keyword_match[1] as int;
          _addNodes(
              _buildSpan(keyword_match[0], [Node(value: match[0])])!, result);
        } else {
          _addText(match[0], result);
        }
        last_index = match.start + match[0]!.length;
        match = top!.lexemesRe!
            .allMatches(mode_buffer, last_index)
            .firstWhereOrNull((m) => true);
      }

      _addText(substring(mode_buffer, last_index), result);
      return result;
    }

    List<Node>? _processSubLanguage() {
      var explicit = top!.subLanguage!.length == 1;
      if (explicit && _languages[top!.subLanguage!.first] == null) {
        return [Node(value: mode_buffer)];
      }

      var result = explicit
          ? _parse(mode_buffer,
              language: top!.subLanguage!.first,
              ignoreIllegals: true,
              continuation: continuations[top!.subLanguage!.first])
          : _parseAuto(mode_buffer,
              languageSubset:
                  top!.subLanguage!.isNotEmpty ? top!.subLanguage : null);

      if (top!.relevance! > 0) {
        relevance += result.relevance!;
      }
      if (explicit) {
        continuations[top!.subLanguage!.first] = result.top;
      }
      return _buildSpan(result.language, result.nodes, noPrefix: true);
    }

    void _processBuffer() {
      _addNodes(
          top!.subLanguage != null
              ? _processSubLanguage()!
              : _processKeywords(),
          currentChildren);
      mode_buffer = '';
    }

    int _processLexeme(String buffer, [String? lexeme]) {
      mode_buffer += buffer;

      if (lexeme == null) {
        _processBuffer();
        return 0;
      }

      var new_mode = _subMode(lexeme, top!);

      if (new_mode != null) {
        if (new_mode.skip == true) {
          mode_buffer += lexeme;
        } else {
          if (new_mode.excludeBegin == true) {
            mode_buffer += lexeme;
          }
          _processBuffer();
          if (new_mode.returnBegin != true && new_mode.excludeBegin != true) {
            mode_buffer = lexeme;
          }
        }
        _startNewMode(new_mode);
        return new_mode.returnBegin == true ? 0 : lexeme.length;
      }

      var end_mode = _endOfMode(top!, lexeme);
      if (end_mode != null) {
        var origin = top!;
        if (origin.skip == true) {
          mode_buffer += lexeme;
        } else {
          if (!(origin.returnEnd == true || origin.excludeEnd == true)) {
            mode_buffer += lexeme;
          }
          _processBuffer();
          if (origin.excludeEnd == true) {
            mode_buffer = lexeme;
          }
        }
        do {
          if (_classNameExists(top!.className)) {
            _pop();
          }
          if (top!.skip != true && top!.subLanguage == null) {
            relevance += top!.relevance!;
          }
          top = top!.parent;
        } while (top != end_mode.parent);
        if (end_mode.starts != null) {
          if (end_mode.endSameAsBegin == true) {
            end_mode.starts!.endRe = end_mode.endRe;
          }
          _startNewMode(end_mode.starts!);
        }
        return origin.returnEnd == true ? 0 : lexeme.length;
      }

      if (_isIllegal(lexeme, top)) {
        throw 'Illegal lexeme "' +
            lexeme +
            '" for mode "' +
            (top!.className ?? '<unnamed>') +
            '"';
      }

      mode_buffer += lexeme;
      return lexeme.isEmpty ? 1 : lexeme.length;
    }

    try {
      RegExpMatch? match;
      int count;
      var index = 0;
      // print(value);
      while (true) {
        match = top!.terminators
            ?.allMatches(source, index)
            .firstWhereOrNull((m) => true);

        if (match == null) break;
        // print(top.terminators);
        // print('$index, ${match.start}');
        // print(match[0].replaceAll(RegExp(r'\s'), '*'));
        // print(result);
        // print('');

        count = _processLexeme(substring(source, index, match.start), match[0]);
        index = count + match.start;
      }
      _processLexeme(substring(source, index));
      for (current = top; current!.parent != null; current = current.parent) {
        if (_classNameExists(current.className)) {
          _pop();
        }
      }
      // print(relevance);
      // print(result);
      return Result(
        language: language,
        relevance: relevance,
        nodes: currentChildren,
        top: top,
      );
    } catch (e) {
      if (e is String && e.startsWith('Illegal')) {
        return Result(relevance: 0, nodes: [Node(value: source)]);
      } else {
        rethrow;
      }
    }
  }

  Mode? _getLanguage(String? name) {
    if (name == null) return null;
    name = name.toLowerCase();
    return _languages[name] ?? _languages[_aliases[name] ?? ''];
  }

  void registerLanguage(String name, Mode languageMode) {
    _languages[name] = languageMode;
    if (languageMode.aliases != null) {
      languageMode.aliases!.forEach((a) {
        _aliases[a] = name;
      });
    }
  }

  void registerLanguages(Map<String, Mode> languages) {
    languages.forEach(registerLanguage);
  }

  Result _parseAuto(String source, {List<String>? languageSubset}) {
    languageSubset =
        languageSubset ?? _languages.keys.toList(); // TODO: options
    var result = Result(
      relevance: 0,
      nodes: [Node(value: source)],
    );
    var secondBest = result;
    // languageSubset = ['json'];
    languageSubset.forEach((language) {
      var lang = _getLanguage(language);
      if (lang == null || lang.disableAutodetect == true) return;

      var current = _parse(source, language: language, ignoreIllegals: false);
      current.language = language;
      if (current.relevance! > secondBest.relevance!) {
        secondBest = current;
      }
      if (current.relevance! > result.relevance!) {
        secondBest = result;
        result = current;
      }
    });
    if (secondBest.language != null) {
      result.secondBest = secondBest;
    }
    return result;
  }
}
