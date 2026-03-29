// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode dts(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  _mode0.scope = r'variable';
  _mode0.begin = r'&[a-z\d_]*\b';
  _mode1.scope = r'number';
  _mode1.variants = [
    _mode2,
    _mode3,
  ];
  _mode1.relevance = 0;
  _mode2.begin = r'\b(\d+(\.\d*)?|\.\d+)(u|U|l|L|ul|UL|f|F)';
  _mode3.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode4.scope = r'comment';
  _mode4.begin = r'//';
  _mode4.end = r'$';
  _mode4.contains = [
    _mode5,
    _mode6,
  ];
  _mode5.scope = r'doctag';
  _mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode5.excludeBegin = true;
  _mode5.relevance = 0;
  _mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode7.scope = r'comment';
  _mode7.begin = r'/\*';
  _mode7.end = r'\*/';
  _mode7.contains = [
    _mode8,
    _mode9,
  ];
  _mode8.scope = r'doctag';
  _mode8.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode8.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode8.excludeBegin = true;
  _mode8.relevance = 0;
  _mode9.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode10.scope = r'string';
  _mode10.variants = [
    _mode11,
    _mode13,
    _mode14,
  ];
  _mode11.scope = r'string';
  _mode11.begin = r'((u8?|U)|L)?"';
  _mode11.end = r'"';
  _mode11.illegal = r'\n';
  _mode11.contains = [
    _mode12,
  ];
  _mode12.begin = r'\\[\s\S]';
  _mode12.relevance = 0;
  _mode13.begin = r'(u8?|U)?R"';
  _mode13.end = r'"';
  _mode13.contains = [
    _mode12,
  ];
  _mode14.begin = r"'\\?.";
  _mode14.end = r"'";
  _mode14.illegal = r'.';
  return Mode(
    name: r'Device Tree',
    contains: [
      Mode(
        scope: r'title.class',
        begin: r'^\/(?=\s*\{)',
        relevance: 10,
      ),
      _mode0,
      Mode(
        scope: r'keyword',
        begin: r'/[a-z][a-z\d-]*/',
      ),
      Mode(
        scope: r'symbol',
        begin: r'^\s*[a-zA-Z_][a-zA-Z\d_]*:',
      ),
      Mode(
        scope: r'title.class',
        begin: r'[a-zA-Z_][a-zA-Z\d_@-]*(?=\s\{)',
        relevance: 0.2,
      ),
      Mode(
        relevance: 0,
        match: [
          r'[a-z][a-z-,]+',
          r'\s*',
          r'=',
        ],
        scope: {
          1: r'attr',
          3: r'operator',
        },
      ),
      Mode(
        match: r'[a-z][a-z-,]+(?=;)',
        relevance: 0,
        scope: r'attr',
      ),
      Mode(
        scope: r'params',
        relevance: 0,
        begin: r'<',
        end: r'>',
        contains: [
          _mode1,
          _mode0,
        ],
      ),
      _mode4,
      _mode7,
      _mode1,
      _mode10,
      Mode(
        scope: r'meta',
        begin: r'#',
        end: r'$',
        keywords: {
          r'keyword': r'if else elif endif define undef ifdef ifndef',
        },
        contains: [
          Mode(
            begin: r'\\\n',
            relevance: 0,
          ),
          Mode(
            beginKeywords: r'include',
            end: r'$',
            keywords: {
              r'keyword': r'include',
            },
            contains: [
              Mode(
                scope: r'string',
                variants: [
                  _mode11,
                  _mode13,
                  _mode14,
                ],
              ),
              Mode(
                scope: r'string',
                begin: r'<',
                end: r'>',
                illegal: r'\n',
              ),
            ],
          ),
          _mode10,
          _mode4,
          _mode7,
        ],
      ),
      Mode(
        scope: r'punctuation',
        relevance: 0,
        match: r'\};|[;{}]',
      ),
      Mode(
        begin: r'[a-zA-Z]\w*::',
        keywords: r'',
      ),
    ],
  );
}
