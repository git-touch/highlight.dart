// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode elm(Highlight hljs) {
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
  _mode0.begin = r'\(';
  _mode0.end = r'\)';
  _mode0.illegal = r'"';
  _mode0.contains = [_mode1, _mode2];
  _mode1.scope = r'type';
  _mode1.begin = r'\b[A-Z][\w]*(\((\.\.|,|\w+)\))?';
  _mode2.variants = [_mode3, _mode6];
  _mode3.scope = r'comment';
  _mode3.begin = r'--';
  _mode3.end = r'$';
  _mode3.contains = [_mode4, _mode5];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.scope = r'comment';
  _mode6.begin = r'\{-';
  _mode6.end = r'-\}';
  _mode6.contains = [r'self', _mode7, _mode8];
  _mode7.scope = r'doctag';
  _mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode7.excludeBegin = true;
  _mode7.relevance = 0;
  _mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode9.scope = r'type';
  _mode9.begin = r"\b[A-Z][\w']*";
  _mode9.relevance = 0;
  _mode10.scope = r'number';
  _mode10.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode10.relevance = 0;
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
        contains: [_mode0, _mode2],
        illegal: r'\W\.|;',
      ),
      Mode(
        begin: r'import',
        end: r'$',
        keywords: r'import as exposing',
        contains: [_mode0, _mode2],
        illegal: r'\W\.|;',
      ),
      Mode(
        begin: r'type',
        end: r'$',
        keywords: r'type alias',
        contains: [
          _mode9,
          _mode0,
          Mode(begin: r'\{', end: r'\}', contains: [_mode1, _mode2]),
          _mode2,
        ],
      ),
      Mode(
        beginKeywords: r'infix infixl infixr',
        end: r'$',
        contains: [_mode10, _mode2],
      ),
      Mode(begin: r'port', end: r'$', keywords: r'port', contains: [_mode2]),
      Mode(scope: r'string', begin: r"'\\?.", end: r"'", illegal: r'.'),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      _mode10,
      _mode9,
      Mode(scope: r'title', begin: r"^[_a-z][\w']*", relevance: 0),
      _mode2,
      Mode(begin: r'->|<-'),
    ],
    illegal: r';',
  );
}
