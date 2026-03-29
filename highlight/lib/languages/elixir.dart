// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode elixir(Highlight hljs) {
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
  final Mode _mode34 = Mode();
  final Mode _mode35 = Mode();
  final Mode _mode36 = Mode();
  final Mode _mode37 = Mode();
  final Mode _mode38 = Mode();
  final Mode _mode39 = Mode();
  final Mode _mode40 = Mode();
  final Mode _mode41 = Mode();
  final Mode _mode42 = Mode();
  final Mode _mode43 = Mode();
  final Mode _mode44 = Mode();
  final Mode _mode45 = Mode();
  final Mode _mode46 = Mode();
  final Mode _mode47 = Mode();
  final Mode _mode48 = Mode();
  final Mode _mode49 = Mode();
  final Mode _mode50 = Mode();
  final Mode _mode51 = Mode();
  final Mode _mode52 = Mode();
  final Mode _mode53 = Mode();
  final Mode _mode54 = Mode();
  final Mode _mode55 = Mode();
  final Mode _mode56 = Mode();
  final Mode _mode57 = Mode();
  final Mode _mode58 = Mode();
  final Mode _mode59 = Mode();
  final Mode _mode60 = Mode();
  final Mode _mode61 = Mode();
  final Mode _mode62 = Mode();
  final Mode _mode63 = Mode();
  final Mode _mode64 = Mode();
  final Mode _mode65 = Mode();
  final Mode _mode66 = Mode();
  final Mode _mode67 = Mode();
  final Mode _mode68 = Mode();
  final Mode _mode69 = Mode();
  final Mode _mode70 = Mode();
  final Mode _mode71 = Mode();
  final Mode _mode72 = Mode();
  final Mode _mode73 = Mode();
  final Mode _mode74 = Mode();
  final Mode _mode75 = Mode();
  final Mode _mode76 = Mode();
  final Mode _mode77 = Mode();
  final Mode _mode78 = Mode();
  final Mode _mode79 = Mode();
  final Mode _mode80 = Mode();
  final Mode _mode81 = Mode();
  final Mode _mode82 = Mode();
  final Mode _mode83 = Mode();
  final Mode _mode84 = Mode();
  final Mode _mode85 = Mode();
  final Mode _mode86 = Mode();
  final Mode _mode87 = Mode();
  final Mode _mode88 = Mode();
  final Mode _mode89 = Mode();
  final Mode _mode90 = Mode();
  final Mode _mode91 = Mode();
  final Mode _mode92 = Mode();
  final Mode _mode93 = Mode();
  _mode0.scope = r'string';
  _mode0.contains = [_mode1, _mode2];
  _mode0.variants = [
    _mode86,
    _mode87,
    _mode88,
    _mode89,
    _mode90,
    _mode91,
    _mode92,
    _mode93,
  ];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'subst';
  _mode2.begin = r'#\{';
  _mode2.end = r'\}';
  _mode2.keywords = {
    r'$pattern': r'[a-zA-Z_][a-zA-Z0-9_.]*(!|\?)?',
    r'keyword': [
      r'after',
      r'alias',
      r'and',
      r'case',
      r'catch',
      r'cond',
      r'defstruct',
      r'defguard',
      r'do',
      r'else',
      r'end',
      r'fn',
      r'for',
      r'if',
      r'import',
      r'in',
      r'not',
      r'or',
      r'quote',
      r'raise',
      r'receive',
      r'require',
      r'reraise',
      r'rescue',
      r'try',
      r'unless',
      r'unquote',
      r'unquote_splicing',
      r'use',
      r'when',
      r'with|0',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  _mode2.contains = [
    _mode0,
    _mode3,
    _mode39,
    _mode56,
    _mode73,
    _mode76,
    _mode78,
    _mode79,
    _mode80,
    _mode82,
    _mode83,
    _mode84,
    _mode85,
  ];
  _mode3.scope = r'regex';
  _mode3.variants = [_mode4, _mode22];
  _mode4.begin = '~r(?=[/|([{<"\'])';
  _mode4.contains = [
    _mode5,
    _mode8,
    _mode10,
    _mode12,
    _mode14,
    _mode16,
    _mode18,
    _mode20,
  ];
  _mode5.begin = r'"';
  _mode5.end = r'"[uismxfU]{0,7}';
  _mode5.contains = [_mode6, _mode7, _mode2];
  _mode6.scope = r'char.escape';
  _mode6.begin = r'\\"';
  _mode6.relevance = 0;
  _mode7.match = r'\\[\s\S]';
  _mode7.scope = r'char.escape';
  _mode7.relevance = 0;
  _mode8.begin = r"'";
  _mode8.end = r"'[uismxfU]{0,7}";
  _mode8.contains = [_mode9, _mode7, _mode2];
  _mode9.scope = r'char.escape';
  _mode9.begin = r"\\'";
  _mode9.relevance = 0;
  _mode10.begin = r'\/';
  _mode10.end = r'\/[uismxfU]{0,7}';
  _mode10.contains = [_mode11, _mode7, _mode2];
  _mode11.scope = r'char.escape';
  _mode11.begin = r'\\\/';
  _mode11.relevance = 0;
  _mode12.begin = r'\|';
  _mode12.end = r'\|[uismxfU]{0,7}';
  _mode12.contains = [_mode13, _mode7, _mode2];
  _mode13.scope = r'char.escape';
  _mode13.begin = r'\\\|';
  _mode13.relevance = 0;
  _mode14.begin = r'\(';
  _mode14.end = r'\)[uismxfU]{0,7}';
  _mode14.contains = [_mode15, _mode7, _mode2];
  _mode15.scope = r'char.escape';
  _mode15.begin = r'\\\)';
  _mode15.relevance = 0;
  _mode16.begin = r'\[';
  _mode16.end = r'\][uismxfU]{0,7}';
  _mode16.contains = [_mode17, _mode7, _mode2];
  _mode17.scope = r'char.escape';
  _mode17.begin = r'\\\]';
  _mode17.relevance = 0;
  _mode18.begin = r'\{';
  _mode18.end = r'\}[uismxfU]{0,7}';
  _mode18.contains = [_mode19, _mode7, _mode2];
  _mode19.scope = r'char.escape';
  _mode19.begin = r'\\\}';
  _mode19.relevance = 0;
  _mode20.begin = r'<';
  _mode20.end = r'>[uismxfU]{0,7}';
  _mode20.contains = [_mode21, _mode7, _mode2];
  _mode21.scope = r'char.escape';
  _mode21.begin = r'\\>';
  _mode21.relevance = 0;
  _mode22.begin = '~R(?=[/|([{<"\'])';
  _mode22.contains = [
    _mode23,
    _mode25,
    _mode27,
    _mode29,
    _mode31,
    _mode33,
    _mode35,
    _mode37,
  ];
  _mode23.begin = r'"';
  _mode23.end = r'"[uismxfU]{0,7}';
  _mode23.contains = [_mode24];
  _mode24.scope = r'char.escape';
  _mode24.begin = r'\\"';
  _mode24.relevance = 0;
  _mode25.begin = r"'";
  _mode25.end = r"'[uismxfU]{0,7}";
  _mode25.contains = [_mode26];
  _mode26.scope = r'char.escape';
  _mode26.begin = r"\\'";
  _mode26.relevance = 0;
  _mode27.begin = r'\/';
  _mode27.end = r'\/[uismxfU]{0,7}';
  _mode27.contains = [_mode28];
  _mode28.scope = r'char.escape';
  _mode28.begin = r'\\\/';
  _mode28.relevance = 0;
  _mode29.begin = r'\|';
  _mode29.end = r'\|[uismxfU]{0,7}';
  _mode29.contains = [_mode30];
  _mode30.scope = r'char.escape';
  _mode30.begin = r'\\\|';
  _mode30.relevance = 0;
  _mode31.begin = r'\(';
  _mode31.end = r'\)[uismxfU]{0,7}';
  _mode31.contains = [_mode32];
  _mode32.scope = r'char.escape';
  _mode32.begin = r'\\\)';
  _mode32.relevance = 0;
  _mode33.begin = r'\[';
  _mode33.end = r'\][uismxfU]{0,7}';
  _mode33.contains = [_mode34];
  _mode34.scope = r'char.escape';
  _mode34.begin = r'\\\]';
  _mode34.relevance = 0;
  _mode35.begin = r'\{';
  _mode35.end = r'\}[uismxfU]{0,7}';
  _mode35.contains = [_mode36];
  _mode36.scope = r'char.escape';
  _mode36.begin = r'\\\}';
  _mode36.relevance = 0;
  _mode37.begin = r'<';
  _mode37.end = r'>[uismxfU]{0,7}';
  _mode37.contains = [_mode38];
  _mode38.scope = r'char.escape';
  _mode38.begin = r'\\>';
  _mode38.relevance = 0;
  _mode39.scope = r'string';
  _mode39.begin = '~[A-Z](?=[/|([{<"\'])';
  _mode39.contains = [
    _mode40,
    _mode42,
    _mode44,
    _mode46,
    _mode48,
    _mode50,
    _mode52,
    _mode54,
  ];
  _mode40.begin = r'"';
  _mode40.end = r'"';
  _mode40.contains = [_mode41];
  _mode41.scope = r'char.escape';
  _mode41.begin = r'\\"';
  _mode41.relevance = 0;
  _mode42.begin = r"'";
  _mode42.end = r"'";
  _mode42.contains = [_mode43];
  _mode43.scope = r'char.escape';
  _mode43.begin = r"\\'";
  _mode43.relevance = 0;
  _mode44.begin = r'\/';
  _mode44.end = r'\/';
  _mode44.contains = [_mode45];
  _mode45.scope = r'char.escape';
  _mode45.begin = r'\\\/';
  _mode45.relevance = 0;
  _mode46.begin = r'\|';
  _mode46.end = r'\|';
  _mode46.contains = [_mode47];
  _mode47.scope = r'char.escape';
  _mode47.begin = r'\\\|';
  _mode47.relevance = 0;
  _mode48.begin = r'\(';
  _mode48.end = r'\)';
  _mode48.contains = [_mode49];
  _mode49.scope = r'char.escape';
  _mode49.begin = r'\\\)';
  _mode49.relevance = 0;
  _mode50.begin = r'\[';
  _mode50.end = r'\]';
  _mode50.contains = [_mode51];
  _mode51.scope = r'char.escape';
  _mode51.begin = r'\\\]';
  _mode51.relevance = 0;
  _mode52.begin = r'\{';
  _mode52.end = r'\}';
  _mode52.contains = [_mode53];
  _mode53.scope = r'char.escape';
  _mode53.begin = r'\\\}';
  _mode53.relevance = 0;
  _mode54.begin = r'<';
  _mode54.end = r'>';
  _mode54.contains = [_mode55];
  _mode55.scope = r'char.escape';
  _mode55.begin = r'\\>';
  _mode55.relevance = 0;
  _mode56.scope = r'string';
  _mode56.begin = '~[a-z](?=[/|([{<"\'])';
  _mode56.contains = [
    _mode57,
    _mode59,
    _mode61,
    _mode63,
    _mode65,
    _mode67,
    _mode69,
    _mode71,
  ];
  _mode57.begin = r'"';
  _mode57.end = r'"';
  _mode57.contains = [_mode58, _mode7, _mode2];
  _mode58.scope = r'char.escape';
  _mode58.begin = r'\\"';
  _mode58.relevance = 0;
  _mode59.begin = r"'";
  _mode59.end = r"'";
  _mode59.contains = [_mode60, _mode7, _mode2];
  _mode60.scope = r'char.escape';
  _mode60.begin = r"\\'";
  _mode60.relevance = 0;
  _mode61.begin = r'\/';
  _mode61.end = r'\/';
  _mode61.contains = [_mode62, _mode7, _mode2];
  _mode62.scope = r'char.escape';
  _mode62.begin = r'\\\/';
  _mode62.relevance = 0;
  _mode63.begin = r'\|';
  _mode63.end = r'\|';
  _mode63.contains = [_mode64, _mode7, _mode2];
  _mode64.scope = r'char.escape';
  _mode64.begin = r'\\\|';
  _mode64.relevance = 0;
  _mode65.begin = r'\(';
  _mode65.end = r'\)';
  _mode65.contains = [_mode66, _mode7, _mode2];
  _mode66.scope = r'char.escape';
  _mode66.begin = r'\\\)';
  _mode66.relevance = 0;
  _mode67.begin = r'\[';
  _mode67.end = r'\]';
  _mode67.contains = [_mode68, _mode7, _mode2];
  _mode68.scope = r'char.escape';
  _mode68.begin = r'\\\]';
  _mode68.relevance = 0;
  _mode69.begin = r'\{';
  _mode69.end = r'\}';
  _mode69.contains = [_mode70, _mode7, _mode2];
  _mode70.scope = r'char.escape';
  _mode70.begin = r'\\\}';
  _mode70.relevance = 0;
  _mode71.begin = r'<';
  _mode71.end = r'>';
  _mode71.contains = [_mode72, _mode7, _mode2];
  _mode72.scope = r'char.escape';
  _mode72.begin = r'\\>';
  _mode72.relevance = 0;
  _mode73.scope = r'comment';
  _mode73.begin = r'#';
  _mode73.end = r'$';
  _mode73.contains = [_mode74, _mode75];
  _mode74.scope = r'doctag';
  _mode74.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode74.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode74.excludeBegin = true;
  _mode74.relevance = 0;
  _mode75.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode76.scope = r'class';
  _mode76.beginKeywords = r'defimpl defmodule defprotocol defrecord';
  _mode76.end = r'\bdo\b|$|;';
  _mode76.contains = [_mode77];
  _mode77.scope = r'title';
  _mode77.begin = r'[a-zA-Z_][a-zA-Z0-9_.]*(!|\?)?';
  _mode77.relevance = 0;
  _mode77.endsParent = true;
  _mode78.scope = r'function';
  _mode78.beginKeywords = r'def defp defmacro defmacrop';
  _mode78.end = r'\B\b';
  _mode78.contains = [_mode77];
  _mode79.begin = r'::';
  _mode80.scope = r'symbol';
  _mode80.begin = r':(?![\s:])';
  _mode80.contains = [_mode0, _mode81];
  _mode80.relevance = 0;
  _mode81.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~`|]|\[\]=?';
  _mode82.scope = r'symbol';
  _mode82.begin = r'[a-zA-Z_][a-zA-Z0-9_.]*(!|\?)?:(?!:)';
  _mode82.relevance = 0;
  _mode83.scope = r'title.class';
  _mode83.begin = r'(\b[A-Z][a-zA-Z0-9_]+)';
  _mode83.relevance = 0;
  _mode84.scope = r'number';
  _mode84.begin =
      r'(\b0o[0-7_]+)|(\b0b[01_]+)|(\b0x[0-9a-fA-F_]+)|(-?\b[0-9][0-9_]*(\.[0-9_]+([eE][-+]?[0-9]+)?)?)';
  _mode84.relevance = 0;
  _mode85.scope = r'variable';
  _mode85.begin = r'(\$\W)|((\$|@@?)(\w+))';
  _mode86.begin = r'"""';
  _mode86.end = r'"""';
  _mode87.begin = r"'''";
  _mode87.end = r"'''";
  _mode88.begin = r'~S"""';
  _mode88.end = r'"""';
  _mode88.contains = [];
  _mode89.begin = r'~S"';
  _mode89.end = r'"';
  _mode89.contains = [];
  _mode90.begin = r"~S'''";
  _mode90.end = r"'''";
  _mode90.contains = [];
  _mode91.begin = r"~S'";
  _mode91.end = r"'";
  _mode91.contains = [];
  _mode92.begin = r"'";
  _mode92.end = r"'";
  _mode93.begin = r'"';
  _mode93.end = r'"';
  return Mode(
    name: r'Elixir',
    aliases: [r'ex', r'exs'],
    keywords: {
      r'$pattern': r'[a-zA-Z_][a-zA-Z0-9_.]*(!|\?)?',
      r'keyword': [
        r'after',
        r'alias',
        r'and',
        r'case',
        r'catch',
        r'cond',
        r'defstruct',
        r'defguard',
        r'do',
        r'else',
        r'end',
        r'fn',
        r'for',
        r'if',
        r'import',
        r'in',
        r'not',
        r'or',
        r'quote',
        r'raise',
        r'receive',
        r'require',
        r'reraise',
        r'rescue',
        r'try',
        r'unless',
        r'unquote',
        r'unquote_splicing',
        r'use',
        r'when',
        r'with|0',
      ],
      r'literal': [r'false', r'nil', r'true'],
    },
    contains: [
      _mode0,
      _mode3,
      _mode39,
      _mode56,
      _mode73,
      _mode76,
      _mode78,
      _mode79,
      _mode80,
      _mode82,
      _mode83,
      _mode84,
      _mode85,
    ],
  );
}
