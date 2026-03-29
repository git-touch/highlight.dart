// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode roboconf(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  _mode0.scope = r'attribute';
  _mode0.begin = r'[a-zA-Z-_]+';
  _mode0.end = r'\s*:';
  _mode0.excludeEnd = true;
  _mode0.starts = _mode1;
  _mode1.end = r';';
  _mode1.relevance = 0;
  _mode1.contains = [_mode2, _mode3];
  _mode2.scope = r'variable';
  _mode2.begin = r'\.[a-zA-Z-_]+';
  _mode3.scope = r'keyword';
  _mode3.begin = r'\(optional\)';
  _mode4.scope = r'comment';
  _mode4.begin = r'#';
  _mode4.end = r'$';
  _mode4.contains = [_mode5, _mode6];
  _mode5.scope = r'doctag';
  _mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode5.excludeBegin = true;
  _mode5.relevance = 0;
  _mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'Roboconf',
    aliases: [r'graph', r'instances'],
    caseInsensitive: true,
    keywords: r'import',
    contains: [
      Mode(
        begin: r'^facet [a-zA-Z-_][^\n{]+\{',
        end: r'\}',
        keywords: r'facet',
        contains: [_mode0, _mode4],
      ),
      Mode(
        begin: r'^\s*instance of [a-zA-Z-_][^\n{]+\{',
        end: r'\}',
        keywords:
            r'name count channels instance-data instance-state instance of',
        illegal: r'\S',
        contains: [r'self', _mode0, _mode4],
      ),
      Mode(
        begin: r'^[a-zA-Z-_][^\n{]+\{',
        end: r'\}',
        contains: [_mode0, _mode4],
      ),
      _mode4,
    ],
  );
}
