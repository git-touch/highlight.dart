import 'utils.dart';

class Mode {
  String ref;
  Map<String, Mode> refs;

  List<String> aliases;

  /// `String | Map<String, [String, int]>`
  dynamic keywords;
  String illegal;
  bool case_insensitive;
  List<Mode> contains;
  List<Mode> variants;
  Mode starts;
  String className;
  String begin;
  String beginKeywords;
  String end;
  String lexemes;
  bool endSameAsBegin;
  bool endsParent;
  bool endsWithParent;
  int relevance;

  List<String> subLanguage;
  bool excludeBegin;
  bool excludeEnd;
  bool skip;
  bool returnBegin;
  bool returnEnd;

  bool compiled;
  Mode parent;
  RegExp lexemesRe;
  RegExp beginRe;
  RegExp endRe;
  RegExp illegalRe;
  String terminator_end;
  List<Mode> cached_variants;
  RegExp terminators;

  bool self;
  bool disableAutodetect;

  Mode({
    this.ref,
    this.refs,
    //
    this.aliases,
    this.keywords,
    this.illegal,
    this.case_insensitive,
    this.contains,
    this.variants,
    this.starts,
    this.className,
    this.begin,
    this.beginKeywords,
    this.end,
    this.lexemes,
    this.endSameAsBegin,
    this.endsParent,
    this.endsWithParent,
    this.relevance,
    this.subLanguage,
    this.excludeBegin,
    this.excludeEnd,
    this.skip,
    this.returnBegin,
    this.returnEnd,
    //
    this.self,
    this.disableAutodetect,
  });

  static Mode inherit(Mode a, [Mode b]) {
    if (b == null) b = Mode();
    return Mode()
      ..aliases = b.aliases ?? a.aliases
      ..keywords = b.keywords ?? a.keywords
      ..illegal = b.illegal ?? a.illegal
      ..case_insensitive = b.case_insensitive ?? a.case_insensitive
      ..contains = b.contains ?? a.contains
      ..variants = b.variants ?? a.variants
      ..starts = b.starts ?? a.starts
      ..className = b.className ?? a.className
      ..begin = b.begin ?? a.begin
      ..beginKeywords = b.beginKeywords ?? a.beginKeywords
      ..end = b.end ?? a.end
      ..lexemes = b.lexemes ?? a.lexemes
      ..endSameAsBegin = b.endSameAsBegin ?? a.endSameAsBegin
      ..endsParent = b.endsParent ?? a.endsParent
      ..endsWithParent = b.endsWithParent ?? a.endsWithParent
      ..relevance = b.relevance ?? a.relevance
      ..subLanguage = b.subLanguage ?? a.subLanguage
      ..excludeBegin = b.excludeBegin ?? a.excludeBegin
      ..excludeEnd = b.excludeEnd ?? a.excludeEnd
      ..skip = b.skip ?? a.skip
      ..returnBegin = b.returnBegin ?? a.returnBegin
      ..returnEnd = b.returnEnd ?? a.returnEnd

      //
      ..compiled = b.compiled ?? a.compiled
      ..parent = b.parent ?? a.parent
      ..lexemesRe = b.lexemesRe ?? a.lexemesRe
      ..beginRe = b.beginRe ?? a.beginRe
      ..endRe = b.endRe ?? a.endRe
      ..illegalRe = b.illegalRe ?? a.illegalRe
      ..terminator_end = b.terminator_end ?? a.terminator_end
      ..cached_variants = b.cached_variants ?? a.cached_variants
      ..terminators = b.terminators ?? a.terminators;
  }
}

class Result {
  int relevance;
  List<Node> value;
  String language;
  Mode top;
  Result second_best;

  Result({
    this.relevance,
    this.value,
    this.language,
    this.top,
    this.second_best,
  });

  String escape(String value) {
    return value
        .replaceAll(RegExp(r'&'), '&amp;')
        .replaceAll(RegExp(r'<'), '&lt;')
        .replaceAll(RegExp(r'>'), '&gt;');
  }

  String toHtml() {
    var str = '';

    traverse(Node node) {
      if (node.className != null) {
        var prefix = node.noPrefix ? '' : 'hljs-';
        str += '<span class="${prefix + node.className}">';
      }

      if (node.value != null) {
        str += escape(node.value);
      } else if (node.children != null) {
        node.children.forEach(traverse);
      }

      if (node.className != null) {
        str += '</span>';
      }
    }

    value.forEach(traverse);
    return str;
  }
}

class Node {
  String className;
  String value;
  List<Node> children;
  bool noPrefix;

  Node({this.className, this.value, this.children, this.noPrefix = false});
}

class Highlight {
  Map<String, Mode> languages = {};
  Mode _languageMode;

  Highlight();

  bool _classNameExists(String className) {
    return className != null && className.isNotEmpty;
  }

  List<Mode> expand_mode(Mode mode) {
    if (mode.variants != null && mode.cached_variants == null) {
      mode.cached_variants = mode.variants.map((variant) {
        if (variant.ref != null) {
          variant = _languageMode.refs[variant.ref];
        }
        return Mode.inherit(mode, variant)..variants = null;
      }).toList();
    }
    return mode.cached_variants ??
        (mode.endsWithParent == true ? [Mode.inherit(mode)] : [mode]);
  }

  RegExp langRe(String value, [bool global]) {
    return RegExp(
      value,
      multiLine: true,
      caseSensitive: _languageMode.case_insensitive != true,
    );
  }

  joinRe(List<String> regexps, String separator) {
    var backreferenceRe = r'\[(?:[^\\\]]|\\.)*\]|\(\??|\\([1-9][0-9]*)|\\.';
    var numCaptures = 0;
    var ret = '';
    for (var i = 0; i < regexps.length; i++) {
      var offset = numCaptures;
      var re = regexps[i];
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
        re = substring(re, match.start + match[0].length);
        if (match[0][0] == '\\' && match[1] != null) {
          ret += '\\' + (int.parse(match[1]) + offset).toString();
        } else {
          ret += match[0];
          if (match[0] == '(') {
            numCaptures++;
          }
        }
      }
    }
    return ret;
  }

  void compileMode(Mode mode, [Mode parent]) {
    if (mode.compiled == true) return;
    mode.compiled = true;

    mode.keywords = mode.keywords ?? mode.beginKeywords;

    if (mode.keywords != null) {
      Map<String, dynamic> compiled_keywords = {};

      void flatten(String className, String str) {
        if (_languageMode.case_insensitive == true) {
          str = str.toLowerCase();
        }
        str.split(' ').forEach((kw) {
          var pair = kw.split('|');
          try {
            compiled_keywords[pair[0]] = [
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
        flatten('keyword', mode.keywords);
      } else if (mode.keywords is Map<String, String>) {
        (mode.keywords as Map<String, String>).forEach(flatten);
      }
      mode.keywords = compiled_keywords;
    }

    mode.lexemesRe = langRe(mode.lexemes ?? r'\w+', true);

    if (parent != null) {
      if (mode.beginKeywords != null) {
        mode.begin = '\\b(' + mode.beginKeywords.split(' ').join('|') + ')\\b';
      }
      if (mode.begin == null) mode.begin = r'\B|\b';
      mode.beginRe = langRe(mode.begin);
      if (mode.endSameAsBegin == true) mode.end = mode.begin;
      if (mode.end == null && mode.endsWithParent != true) mode.end = r'\B|\b';
      if (mode.end != null) mode.endRe = langRe(mode.end);
      mode.terminator_end = mode.end ?? '';
      if (mode.endsWithParent == true && parent.terminator_end != null) {
        mode.terminator_end +=
            (mode.end != null ? '|' : '') + parent.terminator_end;
      }
    }
    if (mode.illegal != null) mode.illegalRe = langRe(mode.illegal);
    if (mode.relevance == null) mode.relevance = 1;
    if (mode.contains == null) {
      mode.contains = [];
    }

    Mode pointToRef(Mode m) {
      if (m.ref != null) {
        return _languageMode.refs[m.ref];
      }
      return m;
    }

    if (mode.contains != null) {
      mode.contains = mode.contains.map(pointToRef).toList();
    }
    if (mode.variants != null) {
      mode.variants = mode.variants.map(pointToRef).toList();
    }
    if (mode.starts != null) {
      mode.starts = pointToRef(mode.starts);
    }

    List<Mode> contains = [];
    mode.contains.forEach((c) {
      contains.addAll(expand_mode(c.self == true ? mode : c));
    });

    mode.contains = contains;
    mode.contains.forEach((c) {
      compileMode(c, mode);
    });

    if (mode.starts != null) {
      compileMode(mode.starts, parent);
    }

    var terminators = (mode.contains.map((c) {
      return c.beginKeywords != null ? '\\.?(?:' + c.begin + ')\\.?' : c.begin;
    }).toList()
          ..addAll([mode.terminator_end, mode.illegal]))
        .where((x) => x != null && x.isNotEmpty)
        .toList();

    mode.terminators =
        terminators.isNotEmpty ? langRe(joinRe(terminators, '|'), true) : null;
  }

  List<Node> buildSpan(String className, List<Node> insideSpan,
      [bool leaveOpen = false, bool noPrefix = false]) {
    if (!_classNameExists(className)) {
      return insideSpan;
    }

    return [
      Node(noPrefix: noPrefix, className: className, children: insideSpan)
    ];
  }

  bool testRe(RegExp re, String lexeme) {
    if (re != null) {
      for (var match in re.allMatches(lexeme)) {
        return match.start == 0;
      }
    }
    return false;
  }

  RegExp escapeRe(String value) {
    return RegExp(value.replaceAll(RegExp(r'[-\/\\^$*+?.()|[\]{}]'), r'\$&'),
        multiLine: true);
  }

  Mode subMode(String lexeme, Mode mode) {
    for (var i = 0; i < mode.contains.length; i++) {
      if (testRe(mode.contains[i].beginRe, lexeme)) {
        if (mode.contains[i].endSameAsBegin == true) {
          mode.contains[i].endRe =
              escapeRe(mode.contains[i].beginRe.firstMatch(lexeme)[0]);
        }

        return mode.contains[i];
      }
    }
    return null;
  }

  Mode endOfMode(Mode mode, String lexeme) {
    if (testRe(mode.endRe, lexeme)) {
      while (mode.endsParent == true && mode.parent != null) {
        mode = mode.parent;
      }
      return mode;
    }
    if (mode.endsWithParent == true) {
      return endOfMode(mode.parent, lexeme);
    }
    return null;
  }

  void addNodes(List<Node> nodes, List<Node> result) {
    nodes.forEach((node) {
      if (result.isEmpty ||
          result.last.children != null ||
          node.className != null) {
        result.add(node);
      } else {
        result.last.value += node.value;
      }
    });
  }

  void addText(String text, List<Node> result) {
    addNodes([Node(value: text)], result);
  }

  Result highlight(String input,
      {String language, bool ignoreIllegals = false, Mode continuation}) {
    if (language == null) {
      return _highlightAuto(input);
    }

    var langMode = _languageMode = _getLanguage(language);
    if (_languageMode == null) {
      throw 'Unknown language: "' + language + '"';
    }

    // FIXME: Move inside highlight to use lang reference
    keywordMatch(Mode mode, RegExpMatch match) {
      var match_str =
          langMode.case_insensitive == true ? match[0].toLowerCase() : match[0];
      return mode.keywords[match_str];
    }

    compileMode(_languageMode);

    var top = continuation ?? _languageMode;
    Map<String, Mode> continuations = {};
    List<Node> children = [];
    var currentChildren = children;
    List<List<Node>> stack = [];

    void pop() {
      currentChildren = stack.isEmpty ? children : stack.removeLast();
    }

    Mode current;
    for (current = top; current != _languageMode; current = current.parent) {
      if (_classNameExists(current.className)) {
        currentChildren.add(Node(className: current.className, children: []));
        stack.add(currentChildren);
        currentChildren = currentChildren.last.children;
      }
    }
    var mode_buffer = '';
    var relevance = 0;

    bool isIllegal(String lexeme, Mode mode) {
      return !ignoreIllegals && testRe(mode.illegalRe, lexeme);
    }

    void startNewMode(Mode mode) {
      if (_classNameExists(mode.className)) {
        currentChildren.add(Node(className: mode.className, children: []));
        stack.add(currentChildren);
        currentChildren = currentChildren.last.children;
      }
      top = Mode.inherit(mode)..parent = top;
    }

    List<Node> processKeywords() {
      if (top.keywords == null) return [Node(value: mode_buffer)];

      var keyword_match;
      RegExpMatch match;
      List<Node> result = [];
      int last_index = 0;

      match = top.lexemesRe.firstMatch(mode_buffer);

      while (match != null) {
        addText(substring(mode_buffer, last_index, match.start), result);
        keyword_match = keywordMatch(top, match);
        if (keyword_match != null) {
          relevance += keyword_match[1];
          addNodes(
              buildSpan(keyword_match[0], [Node(value: match[0])]), result);
        } else {
          addText(match[0], result);
        }
        last_index = match.start + match[0].length;
        match = top.lexemesRe
            .allMatches(mode_buffer, last_index)
            .firstWhere((m) => true, orElse: () => null);
      }

      addText(substring(mode_buffer, last_index), result);
      return result;
    }

    List<Node> processSubLanguage() {
      var explicit = top.subLanguage.length == 1;
      if (explicit && languages[top.subLanguage.first] == null) {
        return [Node(value: mode_buffer)];
      }

      var result = explicit
          ? highlight(mode_buffer,
              language: top.subLanguage.first,
              ignoreIllegals: true,
              continuation: continuations[top.subLanguage.first])
          : _highlightAuto(mode_buffer,
              languageSubset:
                  top.subLanguage.isNotEmpty ? top.subLanguage : null);

      if (top.relevance > 0) {
        relevance += result.relevance;
      }
      if (explicit) {
        continuations[top.subLanguage.first] = result.top;
      }
      return buildSpan(result.language, result.value, false, true);
    }

    void processBuffer() {
      addNodes(
          top.subLanguage != null ? processSubLanguage() : processKeywords(),
          currentChildren);
      mode_buffer = '';
    }

    int processLexeme(String buffer, [String lexeme]) {
      mode_buffer += buffer;

      if (lexeme == null) {
        processBuffer();
        return 0;
      }

      var new_mode = subMode(lexeme, top);

      if (new_mode != null) {
        if (new_mode.skip == true) {
          mode_buffer += lexeme;
        } else {
          if (new_mode.excludeBegin == true) {
            mode_buffer += lexeme;
          }
          processBuffer();
          if (new_mode.returnBegin != true && new_mode.excludeBegin != true) {
            mode_buffer = lexeme;
          }
        }
        startNewMode(new_mode);
        return new_mode.returnBegin == true ? 0 : lexeme.length;
      }

      var end_mode = endOfMode(top, lexeme);
      if (end_mode != null) {
        var origin = top;
        if (origin.skip == true) {
          mode_buffer += lexeme;
        } else {
          if (!(origin.returnEnd == true || origin.excludeEnd == true)) {
            mode_buffer += lexeme;
          }
          processBuffer();
          if (origin.excludeEnd == true) {
            mode_buffer = lexeme;
          }
        }
        do {
          if (_classNameExists(top.className)) {
            pop();
          }
          if (top.skip != true && top.subLanguage == null) {
            relevance += top.relevance;
          }
          top = top.parent;
        } while (top != end_mode.parent);
        if (end_mode.starts != null) {
          if (end_mode.endSameAsBegin == true) {
            end_mode.starts.endRe = end_mode.endRe;
          }
          startNewMode(end_mode.starts);
        }
        return origin.returnEnd == true ? 0 : lexeme.length;
      }

      if (isIllegal(lexeme, top)) {
        throw 'Illegal lexeme "' +
            lexeme +
            '" for mode "' +
            (top.className ?? '<unnamed>') +
            '"';
      }

      mode_buffer += lexeme;
      return lexeme.isEmpty ? 1 : lexeme.length;
    }

    try {
      RegExpMatch match;
      int count;
      int index = 0;
      // print(value);
      while (true) {
        match = top.terminators
            ?.allMatches(input, index)
            ?.firstWhere((m) => true, orElse: () => null);

        if (match == null) break;
        // print(top.terminators);
        // print('$index, ${match.start}');
        // print(match[0].replaceAll(RegExp(r'\s'), '*'));
        // print(result);
        // print('');

        count = processLexeme(substring(input, index, match.start), match[0]);
        index = count + match.start;
      }
      processLexeme(substring(input, index));
      for (current = top; current.parent != null; current = current.parent) {
        if (_classNameExists(current.className)) {
          pop();
        }
      }
      // print(relevance);
      // print(result);
      return Result(
        language: language,
        relevance: relevance,
        value: currentChildren,
        top: top,
      );
    } catch (e) {
      if (e is String && e.startsWith('Illegal')) {
        return Result(relevance: 0, value: [Node(value: input)]);
      } else {
        rethrow;
      }
    }
  }

  Mode _getLanguage(String name) {
    name = (name ?? '').toLowerCase();
    return languages[name];
//     ?? languages[aliases[name]]; FIXME: alias
  }

  void registerLanguage(String name, Mode languageMode) {
    languages[name] = languageMode;
  }

  Result _highlightAuto(String input, {List<String> languageSubset}) {
    languageSubset = languageSubset ?? languages.keys.toList(); // TODO: options
    var result = Result(
      relevance: 0,
      value: [Node(value: input)],
    );
    var second_best = result;
    // languageSubset = ['json'];
    languageSubset.forEach((language) {
      var lang = _getLanguage(language);
      if (lang == null || lang.disableAutodetect == true) return;

      var current = highlight(input, language: language, ignoreIllegals: false);
      current.language = language;
      if (current.relevance > second_best.relevance) {
        second_best = current;
      }
      if (current.relevance > result.relevance) {
        second_best = result;
        result = current;
      }
    });
    if (second_best.language != null) {
      result.second_best = second_best;
    }
    return result;
  }
}
