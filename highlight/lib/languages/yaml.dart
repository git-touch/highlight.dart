// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode yaml(Highlight hljs) {
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
  final Mode _mode33 = Mode();
  _mode0.scope = r'attr';
  _mode0.variants = [_mode1, _mode2, _mode3];
  _mode1.begin = r'[\w*@][\w*@ :()\./-]*:(?=[ \t]|$)';
  _mode2.begin = r'"[\w*@][\w*@ :()\./-]*":(?=[ \t]|$)';
  _mode3.begin = r"'[\w*@][\w*@ :()\./-]*':(?=[ \t]|$)";
  _mode4.scope = r'meta';
  _mode4.begin = r'^---\s*$';
  _mode4.relevance = 10;
  _mode5.scope = r'string';
  _mode5.begin = r'[\|>]([1-9]?[+-])?[ ]*\n( +)[^ ][^\n]*\n(\2[^\n]+\n?)*';
  _mode6.begin = r'<%[%=-]?';
  _mode6.end = r'[%-]?%>';
  _mode6.subLanguage = r'ruby';
  _mode6.excludeBegin = true;
  _mode6.excludeEnd = true;
  _mode6.relevance = 0;
  _mode7.scope = r'type';
  _mode7.begin = r"!\w+![\w#;/?:@&=+$,.~*'()[\]]+";
  _mode8.scope = r'type';
  _mode8.begin = r"!<[\w#;/?:@&=+$,.~*'()[\]]+>";
  _mode9.scope = r'type';
  _mode9.begin = r"![\w#;/?:@&=+$,.~*'()[\]]+";
  _mode10.scope = r'type';
  _mode10.begin = r"!![\w#;/?:@&=+$,.~*'()[\]]+";
  _mode11.scope = r'meta';
  _mode11.begin = r'&[a-zA-Z_]\w*$';
  _mode12.scope = r'meta';
  _mode12.begin = r'\*[a-zA-Z_]\w*$';
  _mode13.scope = r'bullet';
  _mode13.begin = r'-(?=[ ]|$)';
  _mode13.relevance = 0;
  _mode14.scope = r'comment';
  _mode14.begin = r'#';
  _mode14.end = r'$';
  _mode14.contains = [_mode15, _mode16];
  _mode15.scope = r'doctag';
  _mode15.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode15.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode15.excludeBegin = true;
  _mode15.relevance = 0;
  _mode16.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode17.beginKeywords = r'true false yes no null';
  _mode17.keywords = {r'literal': r'true false yes no null'};
  _mode18.scope = r'number';
  _mode18.begin =
      r'\b[0-9]{4}(-[0-9][0-9]){0,2}([Tt \t][0-9][0-9]?(:[0-9][0-9]){2})?(\.[0-9]*)?([ \t])*(Z|[-+][0-9][0-9]?(:[0-9][0-9])?)?\b';
  _mode19.scope = r'number';
  _mode19.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)\b';
  _mode19.relevance = 0;
  _mode20.begin = r'\{';
  _mode20.end = r'\}';
  _mode20.contains = [_mode21];
  _mode20.illegal = r'\n';
  _mode20.relevance = 0;
  _mode21.end = r',';
  _mode21.endsWithParent = true;
  _mode21.excludeEnd = true;
  _mode21.keywords = r'true false yes no null';
  _mode21.relevance = 0;
  _mode21.contains = [
    _mode0,
    _mode4,
    _mode5,
    _mode6,
    _mode7,
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode12,
    _mode13,
    _mode14,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode22,
    _mode23,
    _mode25,
  ];
  _mode22.begin = r'\[';
  _mode22.end = r'\]';
  _mode22.contains = [_mode21];
  _mode22.illegal = r'\n';
  _mode22.relevance = 0;
  _mode23.scope = r'string';
  _mode23.relevance = 0;
  _mode23.begin = r"'";
  _mode23.end = r"'";
  _mode23.contains = [_mode24];
  _mode24.match = r"''";
  _mode24.scope = r'char.escape';
  _mode24.relevance = 0;
  _mode25.scope = r'string';
  _mode25.relevance = 0;
  _mode25.variants = [_mode26, _mode28, _mode29];
  _mode25.contains = [_mode30, _mode31];
  _mode26.begin = r"'";
  _mode26.end = r"'";
  _mode26.contains = [_mode27];
  _mode27.begin = r"''";
  _mode27.relevance = 0;
  _mode28.begin = r'"';
  _mode28.end = r'"';
  _mode29.begin = r'[^\s,{}[\]]+';
  _mode30.begin = r'\\[\s\S]';
  _mode30.relevance = 0;
  _mode31.scope = r'template-variable';
  _mode31.variants = [_mode32, _mode33];
  _mode32.begin = r'\{\{';
  _mode32.end = r'\}\}';
  _mode33.begin = r'%\{';
  _mode33.end = r'\}';
  return Mode(
    name: r'YAML',
    caseInsensitive: true,
    aliases: [r'yml'],
    contains: [
      _mode0,
      _mode4,
      _mode5,
      _mode6,
      _mode7,
      _mode8,
      _mode9,
      _mode10,
      _mode11,
      _mode12,
      _mode13,
      _mode14,
      _mode17,
      _mode18,
      _mode19,
      _mode20,
      _mode22,
      _mode23,
      Mode(
        scope: r'string',
        relevance: 0,
        variants: [
          Mode(begin: r'"', end: r'"'),
          Mode(begin: r'\S+'),
        ],
        contains: [_mode30, _mode31],
      ),
    ],
  );
}
