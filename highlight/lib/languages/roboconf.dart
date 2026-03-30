// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `roboconf`.
Mode roboconf(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  mode0.scope = r'attribute';
  mode0.begin = r'[a-zA-Z-_]+';
  mode0.end = r'\s*:';
  mode0.excludeEnd = true;
  mode0.starts = mode1;
  mode1.end = r';';
  mode1.relevance = 0;
  mode1.contains = [mode2, mode3];
  mode2.scope = r'variable';
  mode2.begin = r'\.[a-zA-Z-_]+';
  mode3.scope = r'keyword';
  mode3.begin = r'\(optional\)';
  mode4.scope = r'comment';
  mode4.begin = r'#';
  mode4.end = r'$';
  mode4.contains = [mode5, mode6];
  mode5.scope = r'doctag';
  mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode5.excludeBegin = true;
  mode5.relevance = 0;
  mode6.begin =
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
        contains: [mode0, mode4],
      ),
      Mode(
        begin: r'^\s*instance of [a-zA-Z-_][^\n{]+\{',
        end: r'\}',
        keywords:
            r'name count channels instance-data instance-state instance of',
        illegal: r'\S',
        contains: [r'self', mode0, mode4],
      ),
      Mode(
        begin: r'^[a-zA-Z-_][^\n{]+\{',
        end: r'\}',
        contains: [mode0, mode4],
      ),
      mode4,
    ],
  );
}
