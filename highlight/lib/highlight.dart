import 'dart:developer';
import 'package:json_annotation/json_annotation.dart';
import 'utils.dart';
part 'highlight.g.dart';

var spanEndTag = '</span>';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Mode {
  List<String> aliases;

  /// `String | Map<String, [String, int]>`
  dynamic keywords;
  String illegal;
  @JsonKey(defaultValue: false)
  bool case_insensitive;
  List<Mode> contains;
  List<Mode> variants;
  Mode starts;
  String className;
  String begin;
  String beginKeywords;
  String end;
  String lexemes;
  @JsonKey(defaultValue: false)
  bool endSameAsBegin;
  @JsonKey(defaultValue: false)
  bool endsParent;
  @JsonKey(defaultValue: false)
  bool endsWithParent;
  int relevance;

  List<String> subLanguage;
  @JsonKey(defaultValue: false)
  bool excludeBegin;
  @JsonKey(defaultValue: false)
  bool excludeEnd;
  @JsonKey(defaultValue: false)
  bool skip;
  @JsonKey(defaultValue: false)
  bool returnBegin;
  @JsonKey(defaultValue: false)
  bool returnEnd;

  @JsonKey(ignore: true)
  bool compiled = false;
  @JsonKey(ignore: true)
  Mode parent;
  @JsonKey(ignore: true)
  RegExp lexemesRe;
  @JsonKey(ignore: true)
  RegExp beginRe;
  @JsonKey(ignore: true)
  RegExp endRe;
  @JsonKey(ignore: true)
  RegExp illegalRe;
  @JsonKey(ignore: true)
  String terminator_end;
  @JsonKey(ignore: true)
  List<Mode> cached_variants;
  @JsonKey(ignore: true)
  RegExp terminators;

  @JsonKey(ignore: true)
  bool isSelf = false;

  Mode();

  factory Mode.fromJson(map) {
    if (map == 'self') {
      return Mode()..isSelf = true;
    } else if (map is Map<String, dynamic>) {
      return _$ModeFromJson(map);
    } else {
      print(map);
      print(map.toJson());
      throw 'invalid map';
    }
  }
  Map<String, dynamic> toJson() => _$ModeToJson(this);

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

class Highlight {
  Mode language;

  Highlight(this.language);

  List<Mode> expand_mode(Mode mode) {
    if (mode.variants != null && mode.cached_variants == null) {
      mode.cached_variants = mode.variants.map((variant) {
        return Mode.inherit(mode, variant)..variants = null;
      }).toList();
    }
    return mode.cached_variants ??
        (mode.endsWithParent ? [Mode.inherit(mode)] : [mode]);
  }

  String reStr(re) {
    if (re is RegExp) {
      return re.pattern;
    } else if (re is String) {
      return re;
    } else if (re == null) {
      return null;
    } else {
      throw 're invalid';
    }
  }

  RegExp langRe(value, [bool global]) {
    return RegExp(
      reStr(value),
      multiLine: true,
      caseSensitive: !language.case_insensitive,
      // FIXME: global tag
    );
  }

  joinRe(List<String> regexps, String separator) {
    var backreferenceRe = r'\[(?:[^\\\]]|\\.)*\]|\(\??|\\([1-9][0-9]*)|\\.';
    var numCaptures = 0;
    var ret = '';
    for (var i = 0; i < regexps.length; i++) {
      var offset = numCaptures;
      var re = reStr(regexps[i]);
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
        if (match[0][0] == '\\' && match.groupCount > 1) {
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
    if (mode.compiled) return;
    mode.compiled = true;

    mode.keywords = mode.keywords ?? mode.beginKeywords;

    if (mode.keywords != null) {
      Map<String, dynamic> compiled_keywords = {};

      void flatten(String className, String str) {
        if (language.case_insensitive) {
          str = str.toLowerCase();
        }
        str.split(' ').forEach((kw) {
          var pair = kw.split('|');
          compiled_keywords[pair[0]] = [
            className,
            pair.length > 1 ? int.parse(pair[1]) : 1
          ];
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
      if (mode.endSameAsBegin) mode.end = mode.begin;
      if (mode.end == null && !mode.endsWithParent) mode.end = r'\B|\b';
      if (mode.end != null) mode.endRe = langRe(mode.end);
      mode.terminator_end = reStr(mode.end) ?? '';
      if (mode.endsWithParent && parent.terminator_end != null)
        mode.terminator_end +=
            (mode.end != null ? '|' : '') + parent.terminator_end;
    }
    if (mode.illegal != null) mode.illegalRe = langRe(mode.illegal);
    if (mode.relevance == null) mode.relevance = 1;
    if (mode.contains == null) {
      mode.contains = [];
    }
    List<Mode> contains = [];
    mode.contains.forEach((c) {
      contains.addAll(expand_mode(c.isSelf ? mode : c));
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
        .map(reStr)
        .where((x) => x != null)
        .toList();

    mode.terminators =
        terminators.isNotEmpty ? langRe(joinRe(terminators, '|'), true) : null;
  }

  buildSpan(String classname, String insideSpan,
      [bool leaveOpen = false, bool noPrefix = false]) {
    var classPrefix = noPrefix ? '' : 'hljs-',
        openSpan = '<span class="' + classPrefix,
        closeSpan = leaveOpen ? '' : spanEndTag;

    openSpan += classname + '">';

    if (classname == null || classname.isEmpty) return insideSpan;
    return openSpan + insideSpan + closeSpan;
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
        if (mode.contains[i].endSameAsBegin) {
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
      while (mode.endsParent && mode.parent != null) {
        mode = mode.parent;
      }
      return mode;
    }
    if (mode.endsWithParent) {
      return endOfMode(mode.parent, lexeme);
    }
    return null;
  }

  String escape(String value) {
    return value
        .replaceAll(RegExp(r'&'), '&amp;')
        .replaceAll(RegExp(r'<'), '&lt;')
        .replaceAll(RegExp(r'>'), '&gt;');
  }

  keywordMatch(Mode mode, RegExpMatch match) {
    var match_str =
        language.case_insensitive ? match[0].toLowerCase() : match[0];
    return mode.keywords[match_str];
  }

  String highlight(String name, String value,
      [bool ignore_illegals = false, Mode continuation]) {
    compileMode(language);

    var top = continuation ?? language;
    // var continuations = {};
    var result = '';
    Mode current;
    for (current = top; current != language; current = current.parent) {
      if (current.className != null) {
        result = buildSpan(current.className, '', true) + result;
      }
    }
    var mode_buffer = '';
    var relevance = 0;

    bool isIllegal(String lexeme, Mode mode) {
      return !ignore_illegals && testRe(mode.illegalRe, lexeme);
    }

    void startNewMode(Mode mode) {
      result +=
          mode.className != null ? buildSpan(mode.className, '', true) : '';
      top = Mode.inherit(mode, Mode()..parent = top); // FIXME:
    }

    String processKeywords() {
      if (top.keywords == null) return escape(mode_buffer);

      var keyword_match;
      RegExpMatch match;
      String result = '';
      int last_index = 0;

      match = top.lexemesRe.firstMatch(mode_buffer);

      while (match != null) {
        result += escape(
            substring(mode_buffer, last_index, match.start + last_index));
        keyword_match = keywordMatch(top, match);
        if (keyword_match != null) {
          relevance += keyword_match[1];
          result += buildSpan(keyword_match[0], escape(match[0]));
        } else {
          result += escape(match[0]);
        }
        last_index += match.start + match[0].length;
        match = top.lexemesRe.firstMatch(substring(mode_buffer, last_index));
      }
      return result + escape(substring(mode_buffer, last_index));
    }

    void processBuffer() {
      result += processKeywords(); // FIXME: sub language
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
        if (new_mode.skip) {
          mode_buffer += lexeme;
        } else {
          if (new_mode.excludeBegin) {
            mode_buffer += lexeme;
          }
          processBuffer();
          if (!new_mode.returnBegin && !new_mode.excludeBegin) {
            mode_buffer = lexeme;
          }
        }
        startNewMode(new_mode);
        return new_mode.returnBegin ? 0 : lexeme.length;
      }

      var end_mode = endOfMode(top, lexeme);
      if (end_mode != null) {
        var origin = top;
        if (origin.skip) {
          mode_buffer += lexeme;
        } else {
          if (!(origin.returnEnd || origin.excludeEnd)) {
            mode_buffer += lexeme;
          }
          processBuffer();
          if (origin.excludeEnd) {
            mode_buffer = lexeme;
          }
        }
        do {
          if (top.className != null) {
            result += spanEndTag;
          }
          if (!top.skip && top.subLanguage == null) {
            relevance += top.relevance;
          }
          top = top.parent;
        } while (top != end_mode.parent);
        if (end_mode.starts != null) {
          if (end_mode.endSameAsBegin) {
            end_mode.starts.endRe = end_mode.endRe;
          }
          startNewMode(end_mode.starts);
        }
        return origin.returnEnd ? 0 : lexeme.length;
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
        // print(top.terminators);

        match = top.terminators.firstMatch(substring(value, index));
        if (match == null) break;
        count = processLexeme(
            substring(value, index, index + match.start), match[0]);
        index += count + match.start;
        // print('$index, ${match.start}');
        // print(match[0].replaceAll(RegExp(r'\s'), '*'));
        // print('');
      }
      processLexeme(substring(value, index));
      for (current = top; current.parent != null; current = current.parent) {
        if (current.className != null) {
          result += spanEndTag;
        }
      }
      // print(relevance);
      // print(result);
      return result;
      // return {relevance: relevance, value: result, language: name, top: top};
    } catch (e) {
      print(e);
      return null;
    }
  }
}
