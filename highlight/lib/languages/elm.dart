// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `elm`.
Mode elm(Highlight hljs) {
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
  mode0.begin = r'\(';
  mode0.end = r'\)';
  mode0.illegal = r'"';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'type';
  mode1.begin = r'\b[A-Z][\w]*(\((\.\.|,|\w+)\))?';
  mode2.variants = [mode3, mode6];
  mode3.scope = r'comment';
  mode3.begin = r'--';
  mode3.end = r'$';
  mode3.contains = [mode4, mode5];
  mode4.scope = r'doctag';
  mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode4.excludeBegin = true;
  mode4.relevance = 0;
  mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode6.scope = r'comment';
  mode6.begin = r'\{-';
  mode6.end = r'-\}';
  mode6.contains = [r'self', mode7, mode8];
  mode7.scope = r'doctag';
  mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode7.excludeBegin = true;
  mode7.relevance = 0;
  mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode9.scope = r'type';
  mode9.begin = r"\b[A-Z][\w']*";
  mode9.relevance = 0;
  mode10.scope = r'number';
  mode10.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode10.relevance = 0;
  return Mode(
    name: r'Elm',
    keywords: [
      r'let',
      r'in',
      r'if',
      r'then',
      r'else',
      r'case',
      r'of',
      r'where',
      r'module',
      r'import',
      r'exposing',
      r'type',
      r'alias',
      r'as',
      r'infix',
      r'infixl',
      r'infixr',
      r'port',
      r'effect',
      r'command',
      r'subscription',
    ],
    contains: [
      Mode(
        beginKeywords: r'port effect module',
        end: r'exposing',
        keywords: r'port effect module where command subscription exposing',
        contains: [mode0, mode2],
        illegal: r'\W\.|;',
      ),
      Mode(
        begin: r'import',
        end: r'$',
        keywords: r'import as exposing',
        contains: [mode0, mode2],
        illegal: r'\W\.|;',
      ),
      Mode(
        begin: r'type',
        end: r'$',
        keywords: r'type alias',
        contains: [
          mode9,
          mode0,
          Mode(begin: r'\{', end: r'\}', contains: [mode1, mode2]),
          mode2,
        ],
      ),
      Mode(
        beginKeywords: r'infix infixl infixr',
        end: r'$',
        contains: [mode10, mode2],
      ),
      Mode(begin: r'port', end: r'$', keywords: r'port', contains: [mode2]),
      Mode(scope: r'string', begin: r"'\\?.", end: r"'", illegal: r'.'),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      mode10,
      mode9,
      Mode(scope: r'title', begin: r"^[_a-z][\w']*", relevance: 0),
      mode2,
      Mode(begin: r'->|<-'),
    ],
    illegal: r';',
  );
}
