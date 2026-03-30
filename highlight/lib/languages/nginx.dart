// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `nginx`.
Mode nginx(Highlight hljs) {
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
  mode0.scope = r'comment';
  mode0.begin = r'#';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'string';
  mode3.contains = [mode4, mode5];
  mode3.variants = [mode9, mode10];
  mode4.begin = r'\\[\s\S]';
  mode4.relevance = 0;
  mode5.scope = r'variable';
  mode5.variants = [mode6, mode7, mode8];
  mode6.begin = r'\$\d+';
  mode7.begin = r'\$\{\w+\}';
  mode8.begin = r'[$@][a-zA-Z_]\w*';
  mode9.begin = r'"';
  mode9.end = r'"';
  mode10.begin = r"'";
  mode10.end = r"'";
  mode11.begin = r'([a-z]+):/';
  mode11.end = r'\s';
  mode11.endsWithParent = true;
  mode11.excludeEnd = true;
  mode11.contains = [mode5];
  mode12.scope = r'regexp';
  mode12.contains = [mode4, mode5];
  mode12.variants = [mode13, mode14, mode15, mode16];
  mode13.begin = r'\s\^';
  mode13.end = r'\s|\{|;';
  mode13.returnEnd = true;
  mode14.begin = r'~\*?\s+';
  mode14.end = r'\s|\{|;';
  mode14.returnEnd = true;
  mode15.begin = r'\*(\.[a-z\-]+)+';
  mode16.begin = r'([a-z\-]+\.)+\*';
  mode17.scope = r'number';
  mode17.begin = r'\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(:\d{1,5})?\b';
  mode18.scope = r'number';
  mode18.begin = r'\b\d+[kKmMgGdshdwy]?\b';
  mode18.relevance = 0;
  return Mode(
    name: r'Nginx config',
    aliases: [r'nginxconf'],
    contains: [
      mode0,
      Mode(
        beginKeywords: r'upstream location',
        end: r';|\{',
        contains: [mode0, mode3, mode11, mode12, mode17, mode18, mode5],
        keywords: {r'section': r'upstream location'},
      ),
      Mode(scope: r'section', begin: r'[a-zA-Z_]\w*(?=\s+\{)', relevance: 0),
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
              contains: [mode0, mode3, mode11, mode12, mode17, mode18, mode5],
            ),
          ),
        ],
        relevance: 0,
      ),
    ],
    illegal: r'[^\s\}\{]',
  );
}
