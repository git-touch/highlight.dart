// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode lisp(Highlight hljs) {
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
  _mode0.scope = r'number';
  _mode0.variants = [_mode1, _mode2, _mode3, _mode4, _mode5];
  _mode1.begin = r'(-|\+)?\d+(\.\d+|\/\d+)?((d|e|f|l|s|D|E|F|L|S)(\+|-)?\d+)?';
  _mode1.relevance = 0;
  _mode2.begin = r'#(b|B)[0-1]+(/[0-1]+)?';
  _mode3.begin = r'#(o|O)[0-7]+(/[0-7]+)?';
  _mode4.begin = r'#(x|X)[0-9a-fA-F]+(/[0-9a-fA-F]+)?';
  _mode5.begin =
      r'#(c|C)\((-|\+)?\d+(\.\d+|\/\d+)?((d|e|f|l|s|D|E|F|L|S)(\+|-)?\d+)? +(-|\+)?\d+(\.\d+|\/\d+)?((d|e|f|l|s|D|E|F|L|S)(\+|-)?\d+)?';
  _mode5.end = r'\)';
  _mode6.scope = r'literal';
  _mode6.begin = r'\b(t{1}|nil)\b';
  _mode7.scope = r'string';
  _mode7.begin = r'"';
  _mode7.end = r'"';
  _mode7.contains = [_mode8];
  _mode8.begin = r'\\[\s\S]';
  _mode8.relevance = 0;
  _mode9.scope = r'comment';
  _mode9.begin = r';';
  _mode9.end = r'$';
  _mode9.contains = [_mode10, _mode11];
  _mode9.relevance = 0;
  _mode10.scope = r'doctag';
  _mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode10.excludeBegin = true;
  _mode10.relevance = 0;
  _mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode12.contains = [_mode0, _mode7, _mode13, _mode14, _mode15, _mode16];
  _mode12.variants = [_mode17, _mode18, _mode19];
  _mode13.begin = r'\*';
  _mode13.end = r'\*';
  _mode14.scope = r'symbol';
  _mode14.begin = r'[:&][a-zA-Z_\-+\*\/<=>&#][a-zA-Z0-9_\-+*\/<=>&#!]*';
  _mode15.begin = r'\(';
  _mode15.end = r'\)';
  _mode15.contains = [r'self', _mode6, _mode7, _mode0, _mode16];
  _mode16.begin = r'[a-zA-Z_\-+\*\/<=>&#][a-zA-Z0-9_\-+*\/<=>&#!]*';
  _mode16.relevance = 0;
  _mode17.begin = r"['`]\(";
  _mode17.end = r'\)';
  _mode18.begin = r'\(quote ';
  _mode18.end = r'\)';
  _mode18.keywords = {r'name': r'quote'};
  _mode19.begin = r"'\|[^]*?\|";
  _mode20.variants = [_mode21, _mode22];
  _mode21.begin = r"'[a-zA-Z_\-+\*\/<=>&#][a-zA-Z0-9_\-+*\/<=>&#!]*";
  _mode22.begin =
      r"#'[a-zA-Z_\-+\*\/<=>&#][a-zA-Z0-9_\-+*\/<=>&#!]*(::[a-zA-Z_\-+\*\/<=>&#][a-zA-Z0-9_\-+*\/<=>&#!]*)*";
  _mode23.begin = r'\(\s*';
  _mode23.end = r'\)';
  _mode23.contains = [
    Mode(
      scope: r'name',
      variants: [
        Mode(
          begin: r'[a-zA-Z_\-+\*\/<=>&#][a-zA-Z0-9_\-+*\/<=>&#!]*',
          relevance: 0,
        ),
        Mode(begin: r'\|[^]*?\|'),
      ],
    ),
    Mode(
      endsWithParent: true,
      relevance: 0,
      contains: [
        _mode12,
        _mode20,
        _mode23,
        _mode6,
        _mode0,
        _mode7,
        _mode9,
        _mode13,
        _mode14,
        Mode(begin: r'\|[^]*?\|'),
        _mode16,
      ],
    ),
  ];
  return Mode(
    name: r'Lisp',
    illegal: r'\S',
    contains: [
      _mode0,
      Mode(scope: r'meta', begin: r'^#![ ]*\/', end: r'$', relevance: 0),
      _mode6,
      _mode7,
      _mode9,
      _mode12,
      _mode20,
      _mode23,
      _mode16,
    ],
  );
}
