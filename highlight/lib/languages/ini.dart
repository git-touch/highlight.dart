// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode ini(Highlight hljs) {
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
  _mode0.scope = r'comment';
  _mode0.contains = [
    _mode1,
    _mode2,
  ];
  _mode0.variants = [
    _mode3,
    _mode4,
  ];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.begin = r';';
  _mode3.end = r'$';
  _mode4.begin = r'#';
  _mode4.end = r'$';
  _mode5.scope = r'literal';
  _mode5.begin = r'\bon|off|true|false|yes|no\b';
  _mode6.scope = r'variable';
  _mode6.variants = [
    _mode7,
    _mode8,
  ];
  _mode7.begin = r'\$[\w\d"][\w\d_]*';
  _mode8.begin = r'\$\{(.*?)\}';
  _mode9.scope = r'string';
  _mode9.contains = [
    _mode10,
  ];
  _mode9.variants = [
    _mode11,
    _mode12,
    _mode13,
    _mode14,
  ];
  _mode10.begin = r'\\[\s\S]';
  _mode10.relevance = 0;
  _mode11.begin = r"'''";
  _mode11.end = r"'''";
  _mode11.relevance = 10;
  _mode12.begin = r'"""';
  _mode12.end = r'"""';
  _mode12.relevance = 10;
  _mode13.begin = r'"';
  _mode13.end = r'"';
  _mode14.begin = r"'";
  _mode14.end = r"'";
  _mode15.scope = r'number';
  _mode15.relevance = 0;
  _mode15.variants = [
    _mode16,
    _mode17,
  ];
  _mode16.begin = r'([+-]+)?[\d]+_[\d_]+';
  _mode17.begin = r'\b\d+(\.\d+)?';
  return Mode(
    name: r'TOML, also INI',
    aliases: [
      r'toml',
    ],
    caseInsensitive: true,
    illegal: r'\S',
    contains: [
      _mode0,
      Mode(
        scope: r'section',
        begin: r'\[+',
        end: r'\]+',
      ),
      Mode(
        begin:
            '(?:[A-Za-z0-9_-]+|"(\\\\"|[^"])*"|\'[^\']*\')(\\s*\\.\\s*(?:[A-Za-z0-9_-]+|"(\\\\"|[^"])*"|\'[^\']*\'))*(?=\\s*=\\s*[^#\\s])',
        scope: r'attr',
        starts: Mode(
          end: r'$',
          contains: [
            _mode0,
            Mode(
              begin: r'\[',
              end: r'\]',
              contains: [
                _mode0,
                _mode5,
                _mode6,
                _mode9,
                _mode15,
                r'self',
              ],
              relevance: 0,
            ),
            _mode5,
            _mode6,
            _mode9,
            _mode15,
          ],
        ),
      ),
    ],
  );
}
