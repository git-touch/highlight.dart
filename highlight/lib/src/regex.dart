String? source(dynamic re) {
  if (re == null || re == false) return null;
  if (re is String) return re;
  if (re is RegExp) return re.pattern;
  return re.toString();
}

String lookahead(dynamic re) {
  return concat('(?=', re, ')');
}

String anyNumberOfTimes(dynamic re) {
  return concat('(?:', re, ')*');
}

String optional(dynamic re) {
  return concat('(?:', re, ')?');
}

String concat(
  dynamic arg0, [
  dynamic arg1,
  dynamic arg2,
  dynamic arg3,
  dynamic arg4,
  dynamic arg5,
  dynamic arg6,
  dynamic arg7,
  dynamic arg8,
  dynamic arg9,
]) {
  final args = <dynamic>[
    arg0,
    arg1,
    arg2,
    arg3,
    arg4,
    arg5,
    arg6,
    arg7,
    arg8,
    arg9,
  ];
  return args
      .where((x) => x != null)
      .map((x) => source(x))
      .where((x) => x != null)
      .join('');
}

String either(
  dynamic arg0, [
  dynamic arg1,
  dynamic arg2,
  dynamic arg3,
  dynamic arg4,
  dynamic arg5,
  dynamic arg6,
  dynamic arg7,
  dynamic arg8,
  dynamic arg9,
  dynamic arg10,
  dynamic arg11,
  dynamic arg12,
  dynamic arg13,
  dynamic arg14,
  dynamic arg15,
  dynamic arg16,
  dynamic arg17,
  dynamic arg18,
  dynamic arg19,
]) {
  var args = <dynamic>[
    arg0,
    arg1,
    arg2,
    arg3,
    arg4,
    arg5,
    arg6,
    arg7,
    arg8,
    arg9,
    arg10,
    arg11,
    arg12,
    arg13,
    arg14,
    arg15,
    arg16,
    arg17,
    arg18,
    arg19,
  ].where((x) => x != null).toList();

  Map<String, dynamic>? opts;
  if (args.isNotEmpty && args.last is Map<String, dynamic>) {
    opts = args.removeLast() as Map<String, dynamic>;
  }

  final capture = opts != null && opts['capture'] == true;
  final joined =
      '(${capture ? "" : "?:"}${args.map((x) => source(x)).join("|")})';
  return joined;
}

String eitherList(List<dynamic> args) {
  Map<String, dynamic>? opts;
  final argsCopy = List<dynamic>.from(args);
  if (argsCopy.isNotEmpty && argsCopy.last is Map<String, dynamic>) {
    opts = argsCopy.removeLast() as Map<String, dynamic>;
  }

  final capture = opts != null && opts['capture'] == true;
  final joined =
      '(${capture ? "" : "?:"}${argsCopy.map((x) => source(x)).join("|")})';
  return joined;
}

int countMatchGroups(dynamic re) {
  final src = source(re) ?? '';
  return RegExp('$src|').firstMatch('')!.groupCount;
}

bool startsWith(RegExp? re, String lexeme) {
  if (re == null) return false;
  final match = re.firstMatch(lexeme);
  return match != null && match.start == 0;
}

final _backrefRe = RegExp(
  r'\[(?:[^\\\]]|\\.)*\]|\(\??|\\([1-9][0-9]*)|\\.',
  dotAll: true,
);

String rewriteBackreferences(
  List<dynamic> regexps, {
  required String joinWith,
}) {
  var numCaptures = 0;

  return regexps
      .map((regex) {
        numCaptures += 1;
        final offset = numCaptures;
        var re = source(regex) ?? '';
        var out = '';

        while (re.isNotEmpty) {
          final match = _backrefRe.firstMatch(re);
          if (match == null) {
            out += re;
            break;
          }
          out += re.substring(0, match.start);
          re = re.substring(match.start + match[0]!.length);
          if (match[0]![0] == r'\' && match[1] != null) {
            out += '\\${int.parse(match[1]!) + offset}';
          } else {
            out += match[0]!;
            if (match[0] == '(') {
              numCaptures++;
            }
          }
        }
        return out;
      })
      .map((re) => '($re)')
      .join(joinWith);
}

String escapeRegExp(String value) {
  return value.replaceAllMapped(
    RegExp(r'[-/\\^$*+?.()|[\]{}]'),
    (m) => '\\${m[0]}',
  );
}
