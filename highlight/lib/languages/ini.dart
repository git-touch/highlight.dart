// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `ini`.
Mode ini(Highlight hljs) {
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
  mode0.scope = r'comment';
  mode0.contains = [mode1, mode2];
  mode0.variants = [mode3, mode4];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.begin = r';';
  mode3.end = r'$';
  mode4.begin = r'#';
  mode4.end = r'$';
  mode5.scope = r'literal';
  mode5.begin = r'\bon|off|true|false|yes|no\b';
  mode6.scope = r'variable';
  mode6.variants = [mode7, mode8];
  mode7.begin = r'\$[\w\d"][\w\d_]*';
  mode8.begin = r'\$\{(.*?)\}';
  mode9.scope = r'string';
  mode9.contains = [mode10];
  mode9.variants = [mode11, mode12, mode13, mode14];
  mode10.begin = r'\\[\s\S]';
  mode10.relevance = 0;
  mode11.begin = r"'''";
  mode11.end = r"'''";
  mode11.relevance = 10;
  mode12.begin = r'"""';
  mode12.end = r'"""';
  mode12.relevance = 10;
  mode13.begin = r'"';
  mode13.end = r'"';
  mode14.begin = r"'";
  mode14.end = r"'";
  mode15.scope = r'number';
  mode15.relevance = 0;
  mode15.variants = [mode16, mode17];
  mode16.begin = r'([+-]+)?[\d]+_[\d_]+';
  mode17.begin = r'\b\d+(\.\d+)?';
  return Mode(
    name: r'TOML, also INI',
    aliases: [r'toml'],
    caseInsensitive: true,
    illegal: r'\S',
    contains: [
      mode0,
      Mode(scope: r'section', begin: r'\[+', end: r'\]+'),
      Mode(
        begin:
            '(?:[A-Za-z0-9_-]+|"(\\\\"|[^"])*"|\'[^\']*\')(\\s*\\.\\s*(?:[A-Za-z0-9_-]+|"(\\\\"|[^"])*"|\'[^\']*\'))*(?=\\s*=\\s*[^#\\s])',
        scope: r'attr',
        starts: Mode(
          end: r'$',
          contains: [
            mode0,
            Mode(
              begin: r'\[',
              end: r'\]',
              contains: [mode0, mode5, mode6, mode9, mode15, r'self'],
              relevance: 0,
            ),
            mode5,
            mode6,
            mode9,
            mode15,
          ],
        ),
      ),
    ],
  );
}
