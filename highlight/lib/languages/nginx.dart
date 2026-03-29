// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode nginx(Highlight hljs) {
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
  _mode0.scope = r'comment';
  _mode0.begin = r'#';
  _mode0.end = r'$';
  _mode0.contains = [
    _mode1,
    _mode2,
  ];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'string';
  _mode3.contains = [
    _mode4,
    _mode5,
  ];
  _mode3.variants = [
    _mode9,
    _mode10,
  ];
  _mode4.begin = r'\\[\s\S]';
  _mode4.relevance = 0;
  _mode5.scope = r'variable';
  _mode5.variants = [
    _mode6,
    _mode7,
    _mode8,
  ];
  _mode6.begin = r'\$\d+';
  _mode7.begin = r'\$\{\w+\}';
  _mode8.begin = r'[$@][a-zA-Z_]\w*';
  _mode9.begin = r'"';
  _mode9.end = r'"';
  _mode10.begin = r"'";
  _mode10.end = r"'";
  _mode11.begin = r'([a-z]+):/';
  _mode11.end = r'\s';
  _mode11.endsWithParent = true;
  _mode11.excludeEnd = true;
  _mode11.contains = [
    _mode5,
  ];
  _mode12.scope = r'regexp';
  _mode12.contains = [
    _mode4,
    _mode5,
  ];
  _mode12.variants = [
    _mode13,
    _mode14,
    _mode15,
    _mode16,
  ];
  _mode13.begin = r'\s\^';
  _mode13.end = r'\s|\{|;';
  _mode13.returnEnd = true;
  _mode14.begin = r'~\*?\s+';
  _mode14.end = r'\s|\{|;';
  _mode14.returnEnd = true;
  _mode15.begin = r'\*(\.[a-z\-]+)+';
  _mode16.begin = r'([a-z\-]+\.)+\*';
  _mode17.scope = r'number';
  _mode17.begin = r'\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(:\d{1,5})?\b';
  _mode18.scope = r'number';
  _mode18.begin = r'\b\d+[kKmMgGdshdwy]?\b';
  _mode18.relevance = 0;
  return Mode(
    name: r'Nginx config',
    aliases: [
      r'nginxconf',
    ],
    contains: [
      _mode0,
      Mode(
        beginKeywords: r'upstream location',
        end: r';|\{',
        contains: [
          _mode0,
          _mode3,
          _mode11,
          _mode12,
          _mode17,
          _mode18,
          _mode5,
        ],
        keywords: {
          r'section': r'upstream location',
        },
      ),
      Mode(
        scope: r'section',
        begin: r'[a-zA-Z_]\w*(?=\s+\{)',
        relevance: 0,
      ),
      Mode(
        begin: r'(?=[a-zA-Z_]\w*\s)',
        end: r';|\{',
        contains: [
          Mode(
            scope: r'attribute',
            begin: r'[a-zA-Z_]\w*',
            starts: Mode(
              endsWithParent: true,
              keywords: {
                r'$pattern': r'[a-z_]{2,}|\/dev\/poll',
                r'literal': [
                  r'on',
                  r'off',
                  r'yes',
                  r'no',
                  r'true',
                  r'false',
                  r'none',
                  r'blocked',
                  r'debug',
                  r'info',
                  r'notice',
                  r'warn',
                  r'error',
                  r'crit',
                  r'select',
                  r'break',
                  r'last',
                  r'permanent',
                  r'redirect',
                  r'kqueue',
                  r'rtsig',
                  r'epoll',
                  r'poll',
                  r'/dev/poll',
                ],
              },
              relevance: 0,
              illegal: r'=>',
              contains: [
                _mode0,
                _mode3,
                _mode11,
                _mode12,
                _mode17,
                _mode18,
                _mode5,
              ],
            ),
          ),
        ],
        relevance: 0,
      ),
    ],
    illegal: r'[^\s\}\{]',
  );
}
