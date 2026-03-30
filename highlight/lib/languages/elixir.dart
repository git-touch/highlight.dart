// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `elixir`.
Mode elixir(Highlight hljs) {
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
  final Mode mode34 = Mode();
  final Mode mode35 = Mode();
  final Mode mode36 = Mode();
  final Mode mode37 = Mode();
  final Mode mode38 = Mode();
  final Mode mode39 = Mode();
  final Mode mode40 = Mode();
  final Mode mode41 = Mode();
  final Mode mode42 = Mode();
  final Mode mode43 = Mode();
  final Mode mode44 = Mode();
  final Mode mode45 = Mode();
  final Mode mode46 = Mode();
  final Mode mode47 = Mode();
  final Mode mode48 = Mode();
  final Mode mode49 = Mode();
  final Mode mode50 = Mode();
  final Mode mode51 = Mode();
  final Mode mode52 = Mode();
  final Mode mode53 = Mode();
  final Mode mode54 = Mode();
  final Mode mode55 = Mode();
  final Mode mode56 = Mode();
  final Mode mode57 = Mode();
  final Mode mode58 = Mode();
  final Mode mode59 = Mode();
  final Mode mode60 = Mode();
  final Mode mode61 = Mode();
  final Mode mode62 = Mode();
  final Mode mode63 = Mode();
  final Mode mode64 = Mode();
  final Mode mode65 = Mode();
  final Mode mode66 = Mode();
  final Mode mode67 = Mode();
  final Mode mode68 = Mode();
  final Mode mode69 = Mode();
  final Mode mode70 = Mode();
  final Mode mode71 = Mode();
  final Mode mode72 = Mode();
  final Mode mode73 = Mode();
  final Mode mode74 = Mode();
  final Mode mode75 = Mode();
  final Mode mode76 = Mode();
  final Mode mode77 = Mode();
  final Mode mode78 = Mode();
  final Mode mode79 = Mode();
  final Mode mode80 = Mode();
  final Mode mode81 = Mode();
  final Mode mode82 = Mode();
  final Mode mode83 = Mode();
  final Mode mode84 = Mode();
  final Mode mode85 = Mode();
  final Mode mode86 = Mode();
  final Mode mode87 = Mode();
  final Mode mode88 = Mode();
  final Mode mode89 = Mode();
  final Mode mode90 = Mode();
  final Mode mode91 = Mode();
  final Mode mode92 = Mode();
  final Mode mode93 = Mode();
  mode0.scope = r'string';
  mode0.contains = [mode1, mode2];
  mode0.variants = [
    mode86,
    mode87,
    mode88,
    mode89,
    mode90,
    mode91,
    mode92,
    mode93,
  ];
  mode1.begin = r'\\[\s\S]';
  mode1.relevance = 0;
  mode2.scope = r'subst';
  mode2.begin = r'#\{';
  mode2.end = r'\}';
  mode2.keywords = {
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
  mode2.contains = [
    mode0,
    mode3,
    mode39,
    mode56,
    mode73,
    mode76,
    mode78,
    mode79,
    mode80,
    mode82,
    mode83,
    mode84,
    mode85,
  ];
  mode3.scope = r'regex';
  mode3.variants = [mode4, mode22];
  mode4.begin = '~r(?=[/|([{<"\'])';
  mode4.contains = [
    mode5,
    mode8,
    mode10,
    mode12,
    mode14,
    mode16,
    mode18,
    mode20,
  ];
  mode5.begin = r'"';
  mode5.end = r'"[uismxfU]{0,7}';
  mode5.contains = [mode6, mode7, mode2];
  mode6.scope = r'char.escape';
  mode6.begin = r'\\"';
  mode6.relevance = 0;
  mode7.match = r'\\[\s\S]';
  mode7.scope = r'char.escape';
  mode7.relevance = 0;
  mode8.begin = r"'";
  mode8.end = r"'[uismxfU]{0,7}";
  mode8.contains = [mode9, mode7, mode2];
  mode9.scope = r'char.escape';
  mode9.begin = r"\\'";
  mode9.relevance = 0;
  mode10.begin = r'\/';
  mode10.end = r'\/[uismxfU]{0,7}';
  mode10.contains = [mode11, mode7, mode2];
  mode11.scope = r'char.escape';
  mode11.begin = r'\\\/';
  mode11.relevance = 0;
  mode12.begin = r'\|';
  mode12.end = r'\|[uismxfU]{0,7}';
  mode12.contains = [mode13, mode7, mode2];
  mode13.scope = r'char.escape';
  mode13.begin = r'\\\|';
  mode13.relevance = 0;
  mode14.begin = r'\(';
  mode14.end = r'\)[uismxfU]{0,7}';
  mode14.contains = [mode15, mode7, mode2];
  mode15.scope = r'char.escape';
  mode15.begin = r'\\\)';
  mode15.relevance = 0;
  mode16.begin = r'\[';
  mode16.end = r'\][uismxfU]{0,7}';
  mode16.contains = [mode17, mode7, mode2];
  mode17.scope = r'char.escape';
  mode17.begin = r'\\\]';
  mode17.relevance = 0;
  mode18.begin = r'\{';
  mode18.end = r'\}[uismxfU]{0,7}';
  mode18.contains = [mode19, mode7, mode2];
  mode19.scope = r'char.escape';
  mode19.begin = r'\\\}';
  mode19.relevance = 0;
  mode20.begin = r'<';
  mode20.end = r'>[uismxfU]{0,7}';
  mode20.contains = [mode21, mode7, mode2];
  mode21.scope = r'char.escape';
  mode21.begin = r'\\>';
  mode21.relevance = 0;
  mode22.begin = '~R(?=[/|([{<"\'])';
  mode22.contains = [
    mode23,
    mode25,
    mode27,
    mode29,
    mode31,
    mode33,
    mode35,
    mode37,
  ];
  mode23.begin = r'"';
  mode23.end = r'"[uismxfU]{0,7}';
  mode23.contains = [mode24];
  mode24.scope = r'char.escape';
  mode24.begin = r'\\"';
  mode24.relevance = 0;
  mode25.begin = r"'";
  mode25.end = r"'[uismxfU]{0,7}";
  mode25.contains = [mode26];
  mode26.scope = r'char.escape';
  mode26.begin = r"\\'";
  mode26.relevance = 0;
  mode27.begin = r'\/';
  mode27.end = r'\/[uismxfU]{0,7}';
  mode27.contains = [mode28];
  mode28.scope = r'char.escape';
  mode28.begin = r'\\\/';
  mode28.relevance = 0;
  mode29.begin = r'\|';
  mode29.end = r'\|[uismxfU]{0,7}';
  mode29.contains = [mode30];
  mode30.scope = r'char.escape';
  mode30.begin = r'\\\|';
  mode30.relevance = 0;
  mode31.begin = r'\(';
  mode31.end = r'\)[uismxfU]{0,7}';
  mode31.contains = [mode32];
  mode32.scope = r'char.escape';
  mode32.begin = r'\\\)';
  mode32.relevance = 0;
  mode33.begin = r'\[';
  mode33.end = r'\][uismxfU]{0,7}';
  mode33.contains = [mode34];
  mode34.scope = r'char.escape';
  mode34.begin = r'\\\]';
  mode34.relevance = 0;
  mode35.begin = r'\{';
  mode35.end = r'\}[uismxfU]{0,7}';
  mode35.contains = [mode36];
  mode36.scope = r'char.escape';
  mode36.begin = r'\\\}';
  mode36.relevance = 0;
  mode37.begin = r'<';
  mode37.end = r'>[uismxfU]{0,7}';
  mode37.contains = [mode38];
  mode38.scope = r'char.escape';
  mode38.begin = r'\\>';
  mode38.relevance = 0;
  mode39.scope = r'string';
  mode39.begin = '~[A-Z](?=[/|([{<"\'])';
  mode39.contains = [
    mode40,
    mode42,
    mode44,
    mode46,
    mode48,
    mode50,
    mode52,
    mode54,
  ];
  mode40.begin = r'"';
  mode40.end = r'"';
  mode40.contains = [mode41];
  mode41.scope = r'char.escape';
  mode41.begin = r'\\"';
  mode41.relevance = 0;
  mode42.begin = r"'";
  mode42.end = r"'";
  mode42.contains = [mode43];
  mode43.scope = r'char.escape';
  mode43.begin = r"\\'";
  mode43.relevance = 0;
  mode44.begin = r'\/';
  mode44.end = r'\/';
  mode44.contains = [mode45];
  mode45.scope = r'char.escape';
  mode45.begin = r'\\\/';
  mode45.relevance = 0;
  mode46.begin = r'\|';
  mode46.end = r'\|';
  mode46.contains = [mode47];
  mode47.scope = r'char.escape';
  mode47.begin = r'\\\|';
  mode47.relevance = 0;
  mode48.begin = r'\(';
  mode48.end = r'\)';
  mode48.contains = [mode49];
  mode49.scope = r'char.escape';
  mode49.begin = r'\\\)';
  mode49.relevance = 0;
  mode50.begin = r'\[';
  mode50.end = r'\]';
  mode50.contains = [mode51];
  mode51.scope = r'char.escape';
  mode51.begin = r'\\\]';
  mode51.relevance = 0;
  mode52.begin = r'\{';
  mode52.end = r'\}';
  mode52.contains = [mode53];
  mode53.scope = r'char.escape';
  mode53.begin = r'\\\}';
  mode53.relevance = 0;
  mode54.begin = r'<';
  mode54.end = r'>';
  mode54.contains = [mode55];
  mode55.scope = r'char.escape';
  mode55.begin = r'\\>';
  mode55.relevance = 0;
  mode56.scope = r'string';
  mode56.begin = '~[a-z](?=[/|([{<"\'])';
  mode56.contains = [
    mode57,
    mode59,
    mode61,
    mode63,
    mode65,
    mode67,
    mode69,
    mode71,
  ];
  mode57.begin = r'"';
  mode57.end = r'"';
  mode57.contains = [mode58, mode7, mode2];
  mode58.scope = r'char.escape';
  mode58.begin = r'\\"';
  mode58.relevance = 0;
  mode59.begin = r"'";
  mode59.end = r"'";
  mode59.contains = [mode60, mode7, mode2];
  mode60.scope = r'char.escape';
  mode60.begin = r"\\'";
  mode60.relevance = 0;
  mode61.begin = r'\/';
  mode61.end = r'\/';
  mode61.contains = [mode62, mode7, mode2];
  mode62.scope = r'char.escape';
  mode62.begin = r'\\\/';
  mode62.relevance = 0;
  mode63.begin = r'\|';
  mode63.end = r'\|';
  mode63.contains = [mode64, mode7, mode2];
  mode64.scope = r'char.escape';
  mode64.begin = r'\\\|';
  mode64.relevance = 0;
  mode65.begin = r'\(';
  mode65.end = r'\)';
  mode65.contains = [mode66, mode7, mode2];
  mode66.scope = r'char.escape';
  mode66.begin = r'\\\)';
  mode66.relevance = 0;
  mode67.begin = r'\[';
  mode67.end = r'\]';
  mode67.contains = [mode68, mode7, mode2];
  mode68.scope = r'char.escape';
  mode68.begin = r'\\\]';
  mode68.relevance = 0;
  mode69.begin = r'\{';
  mode69.end = r'\}';
  mode69.contains = [mode70, mode7, mode2];
  mode70.scope = r'char.escape';
  mode70.begin = r'\\\}';
  mode70.relevance = 0;
  mode71.begin = r'<';
  mode71.end = r'>';
  mode71.contains = [mode72, mode7, mode2];
  mode72.scope = r'char.escape';
  mode72.begin = r'\\>';
  mode72.relevance = 0;
  mode73.scope = r'comment';
  mode73.begin = r'#';
  mode73.end = r'$';
  mode73.contains = [mode74, mode75];
  mode74.scope = r'doctag';
  mode74.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode74.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode74.excludeBegin = true;
  mode74.relevance = 0;
  mode75.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode76.scope = r'class';
  mode76.beginKeywords = r'defimpl defmodule defprotocol defrecord';
  mode76.end = r'\bdo\b|$|;';
  mode76.contains = [mode77];
  mode77.scope = r'title';
  mode77.begin = r'[a-zA-Z_][a-zA-Z0-9_.]*(!|\?)?';
  mode77.relevance = 0;
  mode77.endsParent = true;
  mode78.scope = r'function';
  mode78.beginKeywords = r'def defp defmacro defmacrop';
  mode78.end = r'\B\b';
  mode78.contains = [mode77];
  mode79.begin = r'::';
  mode80.scope = r'symbol';
  mode80.begin = r':(?![\s:])';
  mode80.contains = [mode0, mode81];
  mode80.relevance = 0;
  mode81.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~`|]|\[\]=?';
  mode82.scope = r'symbol';
  mode82.begin = r'[a-zA-Z_][a-zA-Z0-9_.]*(!|\?)?:(?!:)';
  mode82.relevance = 0;
  mode83.scope = r'title.class';
  mode83.begin = r'(\b[A-Z][a-zA-Z0-9_]+)';
  mode83.relevance = 0;
  mode84.scope = r'number';
  mode84.begin =
      r'(\b0o[0-7_]+)|(\b0b[01_]+)|(\b0x[0-9a-fA-F_]+)|(-?\b[0-9][0-9_]*(\.[0-9_]+([eE][-+]?[0-9]+)?)?)';
  mode84.relevance = 0;
  mode85.scope = r'variable';
  mode85.begin = r'(\$\W)|((\$|@@?)(\w+))';
  mode86.begin = r'"""';
  mode86.end = r'"""';
  mode87.begin = r"'''";
  mode87.end = r"'''";
  mode88.begin = r'~S"""';
  mode88.end = r'"""';
  mode88.contains = [];
  mode89.begin = r'~S"';
  mode89.end = r'"';
  mode89.contains = [];
  mode90.begin = r"~S'''";
  mode90.end = r"'''";
  mode90.contains = [];
  mode91.begin = r"~S'";
  mode91.end = r"'";
  mode91.contains = [];
  mode92.begin = r"'";
  mode92.end = r"'";
  mode93.begin = r'"';
  mode93.end = r'"';
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
      mode0,
      mode3,
      mode39,
      mode56,
      mode73,
      mode76,
      mode78,
      mode79,
      mode80,
      mode82,
      mode83,
      mode84,
      mode85,
    ],
  );
}
