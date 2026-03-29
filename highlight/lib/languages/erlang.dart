// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode erlang(Highlight hljs) {
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
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  final Mode _mode19 = Mode();
  final Mode _mode20 = Mode();
  final Mode _mode21 = Mode();
  final Mode _mode22 = Mode();
  final Mode _mode23 = Mode();
  final Mode _mode24 = Mode();
  final Mode _mode25 = Mode();
  final Mode _mode26 = Mode();
  final Mode _mode27 = Mode();
  final Mode _mode28 = Mode();
  final Mode _mode29 = Mode();
  final Mode _mode30 = Mode();
  final Mode _mode31 = Mode();
  final Mode _mode32 = Mode();
  _mode0.scope = r'params';
  _mode0.begin = r'\(';
  _mode0.end = r'\)';
  _mode0.contains = [
    _mode1,
    _mode4,
    _mode5,
    _mode8,
    _mode11,
    _mode23,
    _mode24,
    _mode25,
    _mode26,
    _mode27,
    _mode28,
    _mode29,
    _mode32,
  ];
  _mode1.scope = r'comment';
  _mode1.begin = r'%';
  _mode1.end = r'$';
  _mode1.contains = [
    _mode2,
    _mode3,
  ];
  _mode2.scope = r'doctag';
  _mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode2.excludeBegin = true;
  _mode2.relevance = 0;
  _mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode4.begin = r"fun\s+[a-z'][a-zA-Z0-9_']*/\d+";
  _mode5.beginKeywords = r'fun receive if try case maybe';
  _mode5.end = r'end';
  _mode5.keywords = {
    r'keyword':
        r'after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor maybe else',
    r'literal': r'false true',
  };
  _mode5.contains = [
    _mode1,
    _mode4,
    _mode6,
    r'self',
    _mode8,
    _mode11,
    _mode23,
    _mode24,
    _mode25,
    _mode26,
    _mode27,
    _mode28,
    _mode29,
    _mode32,
  ];
  _mode6.scope = r'';
  _mode6.begin = r"'";
  _mode6.end = r"'";
  _mode6.illegal = r'\n';
  _mode6.contains = [
    _mode7,
  ];
  _mode7.begin = r'\\[\s\S]';
  _mode7.relevance = 0;
  _mode8.begin =
      r"([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)\(";
  _mode8.end = r'\)';
  _mode8.returnBegin = true;
  _mode8.relevance = 0;
  _mode8.contains = [
    _mode9,
    _mode10,
  ];
  _mode9.begin =
      r"([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)";
  _mode9.relevance = 0;
  _mode10.begin = r'\(';
  _mode10.end = r'\)';
  _mode10.endsWithParent = true;
  _mode10.returnEnd = true;
  _mode10.relevance = 0;
  _mode10.contains = [
    _mode1,
    _mode4,
    _mode5,
    _mode8,
    _mode11,
    _mode23,
    _mode24,
    _mode25,
    _mode26,
    _mode27,
    _mode28,
    _mode29,
    _mode32,
  ];
  _mode11.scope = r'string';
  _mode11.contains = [
    _mode7,
  ];
  _mode11.variants = [
    _mode12,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
    _mode22,
  ];
  _mode12.match = r'~\w?"""("*)(?!")[\s\S]*?"""\1';
  _mode13.begin = r'~\w?\(';
  _mode13.end = r'\)';
  _mode14.begin = r'~\w?\[';
  _mode14.end = r'\]';
  _mode15.begin = r'~\w?{';
  _mode15.end = r'}';
  _mode16.begin = r'~\w?<';
  _mode16.end = r'>';
  _mode17.begin = r'~\w?\/';
  _mode17.end = r'\/';
  _mode18.begin = r'~\w?\|';
  _mode18.end = r'\|';
  _mode19.begin = r"~\w?'";
  _mode19.end = r"'";
  _mode20.begin = r'~\w?"';
  _mode20.end = r'"';
  _mode21.begin = r'~\w?`';
  _mode21.end = r'`';
  _mode22.begin = r'~\w?#';
  _mode22.end = r'#';
  _mode23.scope = r'string';
  _mode23.match = r'"""("*)(?!")[\s\S]*?"""\1';
  _mode24.scope = r'string';
  _mode24.begin = r'"';
  _mode24.end = r'"';
  _mode24.illegal = r'\n';
  _mode24.contains = [
    _mode7,
  ];
  _mode25.scope = r'number';
  _mode25.begin =
      r'\b(\d+(_\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\d+(_\d+)*(\.\d+(_\d+)*)?([eE][-+]?\d+)?)';
  _mode25.relevance = 0;
  _mode26.begin = r'\{';
  _mode26.end = r'\}';
  _mode26.relevance = 0;
  _mode26.contains = [
    _mode1,
    _mode4,
    _mode5,
    _mode8,
    _mode11,
    _mode23,
    _mode24,
    _mode25,
    r'self',
    _mode27,
    _mode28,
    _mode29,
    _mode32,
  ];
  _mode27.begin = r'\b_([A-Z][A-Za-z0-9_]*)?';
  _mode27.relevance = 0;
  _mode28.begin = r'[A-Z][a-zA-Z0-9_]*';
  _mode28.relevance = 0;
  _mode29.begin = r'#[a-zA-Z_]\w*';
  _mode29.relevance = 0;
  _mode29.returnBegin = true;
  _mode29.contains = [
    _mode30,
    _mode31,
  ];
  _mode30.begin = r'#[a-zA-Z_]\w*';
  _mode30.relevance = 0;
  _mode31.begin = r'\{';
  _mode31.end = r'\}';
  _mode31.relevance = 0;
  _mode31.contains = [
    _mode1,
    _mode4,
    _mode5,
    _mode8,
    _mode11,
    _mode23,
    _mode24,
    _mode25,
    _mode26,
    _mode27,
    _mode28,
    _mode29,
    _mode32,
  ];
  _mode32.scope = r'string';
  _mode32.match = r'\$(\\([^0-9]|[0-9]{1,3}|)|.)';
  return Mode(
    name: r'Erlang',
    aliases: [
      r'erl',
    ],
    keywords: {
      r'keyword':
          r'after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor maybe else',
      r'literal': r'false true',
    },
    illegal: r'(</|\*=|\+=|-=|/\*|\*/|\(\*|\*\))',
    contains: [
      Mode(
        scope: r'function',
        begin: r"^[a-z'][a-zA-Z0-9_']*\s*\(",
        end: r'->',
        returnBegin: true,
        illegal: r'\(|#|//|/\*|\\|:|;',
        contains: [
          _mode0,
          Mode(
            scope: r'title',
            begin: r"[a-z'][a-zA-Z0-9_']*",
            relevance: 0,
          ),
        ],
        starts: Mode(
          end: r';|\.',
          keywords: {
            r'keyword':
                r'after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor maybe else',
            r'literal': r'false true',
          },
          contains: [
            _mode1,
            _mode4,
            _mode5,
            _mode8,
            _mode11,
            _mode23,
            _mode24,
            _mode25,
            _mode26,
            _mode27,
            _mode28,
            _mode29,
            _mode32,
          ],
        ),
      ),
      _mode1,
      Mode(
        begin: r'^-',
        end: r'\.',
        relevance: 0,
        excludeEnd: true,
        returnBegin: true,
        keywords: {
          r'$pattern': r'-[a-zA-Z]\w*',
          r'keyword':
              r'-module|1.5 -record|1.5 -undef|1.5 -export|1.5 -ifdef|1.5 -ifndef|1.5 -author|1.5 -copyright|1.5 -doc|1.5 -moduledoc|1.5 -vsn|1.5 -import|1.5 -include|1.5 -include_lib|1.5 -compile|1.5 -define|1.5 -else|1.5 -endif|1.5 -file|1.5 -behaviour|1.5 -behavior|1.5 -spec|1.5 -on_load|1.5 -nifs|1.5',
        },
        contains: [
          _mode0,
          _mode11,
          _mode23,
          _mode24,
        ],
      ),
      _mode25,
      _mode11,
      _mode23,
      _mode24,
      _mode29,
      _mode27,
      _mode28,
      _mode26,
      _mode32,
      Mode(
        begin: r'\.$',
      ),
    ],
  );
}
