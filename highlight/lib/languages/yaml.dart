// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `yaml`.
Mode yaml(Highlight hljs) {
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
  final Mode mode33 = Mode();
  mode0.scope = r'attr';
  mode0.variants = [mode1, mode2, mode3];
  mode1.begin = r'[\w*@][\w*@ :()\./-]*:(?=[ \t]|$)';
  mode2.begin = r'"[\w*@][\w*@ :()\./-]*":(?=[ \t]|$)';
  mode3.begin = r"'[\w*@][\w*@ :()\./-]*':(?=[ \t]|$)";
  mode4.scope = r'meta';
  mode4.begin = r'^---\s*$';
  mode4.relevance = 10;
  mode5.scope = r'string';
  mode5.begin = r'[\|>]([1-9]?[+-])?[ ]*\n( +)[^ ][^\n]*\n(\2[^\n]+\n?)*';
  mode6.begin = r'<%[%=-]?';
  mode6.end = r'[%-]?%>';
  mode6.subLanguage = r'ruby';
  mode6.excludeBegin = true;
  mode6.excludeEnd = true;
  mode6.relevance = 0;
  mode7.scope = r'type';
  mode7.begin = r"!\w+![\w#;/?:@&=+$,.~*'()[\]]+";
  mode8.scope = r'type';
  mode8.begin = r"!<[\w#;/?:@&=+$,.~*'()[\]]+>";
  mode9.scope = r'type';
  mode9.begin = r"![\w#;/?:@&=+$,.~*'()[\]]+";
  mode10.scope = r'type';
  mode10.begin = r"!![\w#;/?:@&=+$,.~*'()[\]]+";
  mode11.scope = r'meta';
  mode11.begin = r'&[a-zA-Z_]\w*$';
  mode12.scope = r'meta';
  mode12.begin = r'\*[a-zA-Z_]\w*$';
  mode13.scope = r'bullet';
  mode13.begin = r'-(?=[ ]|$)';
  mode13.relevance = 0;
  mode14.scope = r'comment';
  mode14.begin = r'#';
  mode14.end = r'$';
  mode14.contains = [mode15, mode16];
  mode15.scope = r'doctag';
  mode15.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode15.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode15.excludeBegin = true;
  mode15.relevance = 0;
  mode16.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode17.beginKeywords = r'true false yes no null';
  mode17.keywords = {r'literal': r'true false yes no null'};
  mode18.scope = r'number';
  mode18.begin =
      r'\b[0-9]{4}(-[0-9][0-9]){0,2}([Tt \t][0-9][0-9]?(:[0-9][0-9]){2})?(\.[0-9]*)?([ \t])*(Z|[-+][0-9][0-9]?(:[0-9][0-9])?)?\b';
  mode19.scope = r'number';
  mode19.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)\b';
  mode19.relevance = 0;
  mode20.begin = r'\{';
  mode20.end = r'\}';
  mode20.contains = [mode21];
  mode20.illegal = r'\n';
  mode20.relevance = 0;
  mode21.end = r',';
  mode21.endsWithParent = true;
  mode21.excludeEnd = true;
  mode21.keywords = r'true false yes no null';
  mode21.relevance = 0;
  mode21.contains = [
    mode0,
    mode4,
    mode5,
    mode6,
    mode7,
    mode8,
    mode9,
    mode10,
    mode11,
    mode12,
    mode13,
    mode14,
    mode17,
    mode18,
    mode19,
    mode20,
    mode22,
    mode23,
    mode25,
  ];
  mode22.begin = r'\[';
  mode22.end = r'\]';
  mode22.contains = [mode21];
  mode22.illegal = r'\n';
  mode22.relevance = 0;
  mode23.scope = r'string';
  mode23.relevance = 0;
  mode23.begin = r"'";
  mode23.end = r"'";
  mode23.contains = [mode24];
  mode24.match = r"''";
  mode24.scope = r'char.escape';
  mode24.relevance = 0;
  mode25.scope = r'string';
  mode25.relevance = 0;
  mode25.variants = [mode26, mode28, mode29];
  mode25.contains = [mode30, mode31];
  mode26.begin = r"'";
  mode26.end = r"'";
  mode26.contains = [mode27];
  mode27.begin = r"''";
  mode27.relevance = 0;
  mode28.begin = r'"';
  mode28.end = r'"';
  mode29.begin = r'[^\s,{}[\]]+';
  mode30.begin = r'\\[\s\S]';
  mode30.relevance = 0;
  mode31.scope = r'template-variable';
  mode31.variants = [mode32, mode33];
  mode32.begin = r'\{\{';
  mode32.end = r'\}\}';
  mode33.begin = r'%\{';
  mode33.end = r'\}';
  return Mode(
    name: r'YAML',
    caseInsensitive: true,
    aliases: [r'yml'],
    contains: [
      mode0,
      mode4,
      mode5,
      mode6,
      mode7,
      mode8,
      mode9,
      mode10,
      mode11,
      mode12,
      mode13,
      mode14,
      mode17,
      mode18,
      mode19,
      mode20,
      mode22,
      mode23,
      Mode(
        scope: r'string',
        relevance: 0,
        variants: [
          Mode(begin: r'"', end: r'"'),
          Mode(begin: r'\S+'),
        ],
        contains: [mode30, mode31],
      ),
    ],
  );
}
