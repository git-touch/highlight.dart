// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `dts`.
Mode dts(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  mode0.scope = r'variable';
  mode0.begin = r'&[a-z\d_]*\b';
  mode1.scope = r'number';
  mode1.variants = [mode2, mode3];
  mode1.relevance = 0;
  mode2.begin = r'\b(\d+(\.\d*)?|\.\d+)(u|U|l|L|ul|UL|f|F)';
  mode3.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode4.scope = r'comment';
  mode4.begin = r'//';
  mode4.end = r'$';
  mode4.contains = [mode5, mode6];
  mode5.scope = r'doctag';
  mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode5.excludeBegin = true;
  mode5.relevance = 0;
  mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode7.scope = r'comment';
  mode7.begin = r'/\*';
  mode7.end = r'\*/';
  mode7.contains = [mode8, mode9];
  mode8.scope = r'doctag';
  mode8.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode8.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode8.excludeBegin = true;
  mode8.relevance = 0;
  mode9.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode10.scope = r'string';
  mode10.variants = [mode11, mode13, mode14];
  mode11.scope = r'string';
  mode11.begin = r'((u8?|U)|L)?"';
  mode11.end = r'"';
  mode11.illegal = r'\n';
  mode11.contains = [mode12];
  mode12.begin = r'\\[\s\S]';
  mode12.relevance = 0;
  mode13.begin = r'(u8?|U)?R"';
  mode13.end = r'"';
  mode13.contains = [mode12];
  mode14.begin = r"'\\?.";
  mode14.end = r"'";
  mode14.illegal = r'.';
  return Mode(
    name: r'Device Tree',
    contains: [
      Mode(scope: r'title.class', begin: r'^\/(?=\s*\{)', relevance: 10),
      mode0,
      Mode(scope: r'keyword', begin: r'/[a-z][a-z\d-]*/'),
      Mode(scope: r'symbol', begin: r'^\s*[a-zA-Z_][a-zA-Z\d_]*:'),
      Mode(
        scope: r'title.class',
        begin: r'[a-zA-Z_][a-zA-Z\d_@-]*(?=\s\{)',
        relevance: 0.2,
      ),
      Mode(
        relevance: 0,
        match: [r'[a-z][a-z-,]+', r'\s*', r'='],
        scope: {1: r'attr', 3: r'operator'},
      ),
      Mode(match: r'[a-z][a-z-,]+(?=;)', relevance: 0, scope: r'attr'),
      Mode(
        scope: r'params',
        relevance: 0,
        begin: r'<',
        end: r'>',
        contains: [mode1, mode0],
      ),
      mode4,
      mode7,
      mode1,
      mode10,
      Mode(
        scope: r'meta',
        begin: r'#',
        end: r'$',
        keywords: {r'keyword': r'if else elif endif define undef ifdef ifndef'},
        contains: [
          Mode(begin: r'\\\n', relevance: 0),
          Mode(
            beginKeywords: r'include',
            end: r'$',
            keywords: {r'keyword': r'include'},
            contains: [
              Mode(scope: r'string', variants: [mode11, mode13, mode14]),
              Mode(scope: r'string', begin: r'<', end: r'>', illegal: r'\n'),
            ],
          ),
          mode10,
          mode4,
          mode7,
        ],
      ),
      Mode(scope: r'punctuation', relevance: 0, match: r'\};|[;{}]'),
      Mode(begin: r'[a-zA-Z]\w*::', keywords: r''),
    ],
  );
}
