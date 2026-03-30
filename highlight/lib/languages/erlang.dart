// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `erlang`.
Mode erlang(Highlight hljs) {
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
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  final Mode mode18 = Mode();
  final Mode mode19 = Mode();
  final Mode mode20 = Mode();
  final Mode mode21 = Mode();
  final Mode mode22 = Mode();
  final Mode mode23 = Mode();
  final Mode mode24 = Mode();
  final Mode mode25 = Mode();
  final Mode mode26 = Mode();
  final Mode mode27 = Mode();
  final Mode mode28 = Mode();
  final Mode mode29 = Mode();
  final Mode mode30 = Mode();
  final Mode mode31 = Mode();
  final Mode mode32 = Mode();
  mode0.scope = r'params';
  mode0.begin = r'\(';
  mode0.end = r'\)';
  mode0.contains = [
    mode1,
    mode4,
    mode5,
    mode8,
    mode11,
    mode23,
    mode24,
    mode25,
    mode26,
    mode27,
    mode28,
    mode29,
    mode32,
  ];
  mode1.scope = r'comment';
  mode1.begin = r'%';
  mode1.end = r'$';
  mode1.contains = [mode2, mode3];
  mode2.scope = r'doctag';
  mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode2.excludeBegin = true;
  mode2.relevance = 0;
  mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode4.begin = r"fun\s+[a-z'][a-zA-Z0-9_']*/\d+";
  mode5.beginKeywords = r'fun receive if try case maybe';
  mode5.end = r'end';
  mode5.keywords = {
    r'keyword':
        r'after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor maybe else',
    r'literal': r'false true',
  };
  mode5.contains = [
    mode1,
    mode4,
    mode6,
    r'self',
    mode8,
    mode11,
    mode23,
    mode24,
    mode25,
    mode26,
    mode27,
    mode28,
    mode29,
    mode32,
  ];
  mode6.scope = r'';
  mode6.begin = r"'";
  mode6.end = r"'";
  mode6.illegal = r'\n';
  mode6.contains = [mode7];
  mode7.begin = r'\\[\s\S]';
  mode7.relevance = 0;
  mode8.begin =
      r"([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)\(";
  mode8.end = r'\)';
  mode8.returnBegin = true;
  mode8.relevance = 0;
  mode8.contains = [mode9, mode10];
  mode9.begin =
      r"([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)";
  mode9.relevance = 0;
  mode10.begin = r'\(';
  mode10.end = r'\)';
  mode10.endsWithParent = true;
  mode10.returnEnd = true;
  mode10.relevance = 0;
  mode10.contains = [
    mode1,
    mode4,
    mode5,
    mode8,
    mode11,
    mode23,
    mode24,
    mode25,
    mode26,
    mode27,
    mode28,
    mode29,
    mode32,
  ];
  mode11.scope = r'string';
  mode11.contains = [mode7];
  mode11.variants = [
    mode12,
    mode13,
    mode14,
    mode15,
    mode16,
    mode17,
    mode18,
    mode19,
    mode20,
    mode21,
    mode22,
  ];
  mode12.match = r'~\w?"""("*)(?!")[\s\S]*?"""\1';
  mode13.begin = r'~\w?\(';
  mode13.end = r'\)';
  mode14.begin = r'~\w?\[';
  mode14.end = r'\]';
  mode15.begin = r'~\w?{';
  mode15.end = r'}';
  mode16.begin = r'~\w?<';
  mode16.end = r'>';
  mode17.begin = r'~\w?\/';
  mode17.end = r'\/';
  mode18.begin = r'~\w?\|';
  mode18.end = r'\|';
  mode19.begin = r"~\w?'";
  mode19.end = r"'";
  mode20.begin = r'~\w?"';
  mode20.end = r'"';
  mode21.begin = r'~\w?`';
  mode21.end = r'`';
  mode22.begin = r'~\w?#';
  mode22.end = r'#';
  mode23.scope = r'string';
  mode23.match = r'"""("*)(?!")[\s\S]*?"""\1';
  mode24.scope = r'string';
  mode24.begin = r'"';
  mode24.end = r'"';
  mode24.illegal = r'\n';
  mode24.contains = [mode7];
  mode25.scope = r'number';
  mode25.begin =
      r'\b(\d+(_\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\d+(_\d+)*(\.\d+(_\d+)*)?([eE][-+]?\d+)?)';
  mode25.relevance = 0;
  mode26.begin = r'\{';
  mode26.end = r'\}';
  mode26.relevance = 0;
  mode26.contains = [
    mode1,
    mode4,
    mode5,
    mode8,
    mode11,
    mode23,
    mode24,
    mode25,
    r'self',
    mode27,
    mode28,
    mode29,
    mode32,
  ];
  mode27.begin = r'\b_([A-Z][A-Za-z0-9_]*)?';
  mode27.relevance = 0;
  mode28.begin = r'[A-Z][a-zA-Z0-9_]*';
  mode28.relevance = 0;
  mode29.begin = r'#[a-zA-Z_]\w*';
  mode29.relevance = 0;
  mode29.returnBegin = true;
  mode29.contains = [mode30, mode31];
  mode30.begin = r'#[a-zA-Z_]\w*';
  mode30.relevance = 0;
  mode31.begin = r'\{';
  mode31.end = r'\}';
  mode31.relevance = 0;
  mode31.contains = [
    mode1,
    mode4,
    mode5,
    mode8,
    mode11,
    mode23,
    mode24,
    mode25,
    mode26,
    mode27,
    mode28,
    mode29,
    mode32,
  ];
  mode32.scope = r'string';
  mode32.match = r'\$(\\([^0-9]|[0-9]{1,3}|)|.)';
  return Mode(
    name: r'Erlang',
    aliases: [r'erl'],
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
          mode0,
          Mode(scope: r'title', begin: r"[a-z'][a-zA-Z0-9_']*", relevance: 0),
        ],
        starts: Mode(
          end: r';|\.',
          keywords: {
            r'keyword':
                r'after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor maybe else',
            r'literal': r'false true',
          },
          contains: [
            mode1,
            mode4,
            mode5,
            mode8,
            mode11,
            mode23,
            mode24,
            mode25,
            mode26,
            mode27,
            mode28,
            mode29,
            mode32,
          ],
        ),
      ),
      mode1,
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
        contains: [mode0, mode11, mode23, mode24],
      ),
      mode25,
      mode11,
      mode23,
      mode24,
      mode29,
      mode27,
      mode28,
      mode26,
      mode32,
      Mode(begin: r'\.$'),
    ],
  );
}
