import 'package:json_annotation/json_annotation.dart';
part 'highlight.g.dart';

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
  @JsonKey(defaultValue: false)
  bool excludeBegin;
  @JsonKey(defaultValue: false)
  bool excludeEnd;

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
    Map<String, dynamic> merged = {
      ...a.toJson(),
      'variants': null,
      ...(b == null ? {} : b.toJson()),
    };
    return Mode.fromJson(merged);
  }
}

class Highlight {
  Mode language;

  Highlight(this.language);

  List<Mode> expand_mode(Mode mode) {
    if (mode.variants != null && mode.cached_variants == null) {
      mode.cached_variants = mode.variants.map((variant) {
        return Mode.inherit(mode, variant);
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
      // TODO: global tag
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

      while (re.length > 0) {
        var match = RegExp(backreferenceRe).firstMatch(re);
        if (match == null) {
          ret += re;
          break;
        }
        ret += re.substring(0, match.start);
        re = re.substring(match.start + match[0].length);
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
        terminators.length > 0 ? langRe(joinRe(terminators, '|'), true) : null;
  }
}
