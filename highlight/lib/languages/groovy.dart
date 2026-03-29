// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode groovy(Highlight hljs) {
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
  _mode0.variants = [_mode1, _mode4, _mode7];
  _mode1.scope = r'comment';
  _mode1.begin = r'//';
  _mode1.end = r'$';
  _mode1.contains = [_mode2, _mode3];
  _mode2.scope = r'doctag';
  _mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode2.excludeBegin = true;
  _mode2.relevance = 0;
  _mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode4.scope = r'comment';
  _mode4.begin = r'/\*';
  _mode4.end = r'\*/';
  _mode4.contains = [_mode5, _mode6];
  _mode5.scope = r'doctag';
  _mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode5.excludeBegin = true;
  _mode5.relevance = 0;
  _mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode7.scope = r'comment';
  _mode7.begin = r'/\*\*';
  _mode7.end = r'\*/';
  _mode7.contains = [_mode8, _mode9, _mode10, _mode11];
  _mode7.relevance = 0;
  _mode8.begin = r'\w+@';
  _mode8.relevance = 0;
  _mode9.scope = r'doctag';
  _mode9.begin = r'@[A-Za-z]+';
  _mode10.scope = r'doctag';
  _mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode10.excludeBegin = true;
  _mode10.relevance = 0;
  _mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode12.scope = r'string';
  _mode12.variants = [_mode13, _mode14, _mode15, _mode16, _mode18];
  _mode13.begin = r'"""';
  _mode13.end = r'"""';
  _mode14.begin = r"'''";
  _mode14.end = r"'''";
  _mode15.begin = r'\$/';
  _mode15.end = r'/\$';
  _mode15.relevance = 10;
  _mode16.scope = r'string';
  _mode16.begin = r"'";
  _mode16.end = r"'";
  _mode16.illegal = r'\n';
  _mode16.contains = [_mode17];
  _mode17.begin = r'\\[\s\S]';
  _mode17.relevance = 0;
  _mode18.scope = r'string';
  _mode18.begin = r'"';
  _mode18.end = r'"';
  _mode18.illegal = r'\n';
  _mode18.contains = [_mode17];
  _mode19.scope = r'regexp';
  _mode19.begin = r'~?\/[^\/\n]+\/';
  _mode19.contains = [_mode17];
  _mode20.variants = [_mode21, _mode22];
  _mode21.scope = r'number';
  _mode21.begin = r'\b(0b[01]+)';
  _mode21.relevance = 0;
  _mode22.scope = r'number';
  _mode22.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode22.relevance = 0;
  return Mode(
    name: r'Groovy',
    keywords: {
      r'variable.language': r'this super',
      r'literal': r'true false null',
      r'type': [
        r'byte',
        r'short',
        r'char',
        r'int',
        r'long',
        r'boolean',
        r'float',
        r'double',
        r'void',
      ],
      r'keyword': [
        r'def',
        r'as',
        r'in',
        r'assert',
        r'trait',
        r'abstract',
        r'static',
        r'volatile',
        r'transient',
        r'public',
        r'private',
        r'protected',
        r'synchronized',
        r'final',
        r'class',
        r'interface',
        r'enum',
        r'if',
        r'else',
        r'for',
        r'while',
        r'switch',
        r'case',
        r'break',
        r'default',
        r'continue',
        r'throw',
        r'throws',
        r'try',
        r'catch',
        r'finally',
        r'implements',
        r'extends',
        r'new',
        r'import',
        r'package',
        r'return',
        r'instanceof',
        r'var',
      ],
    },
    contains: [
      Mode(
        scope: r'meta',
        begin: r'^#![ ]*\/.*\bgroovy\b.*',
        end: r'$',
        relevance: 10,
        binary: r'groovy',
      ),
      _mode0,
      _mode12,
      _mode19,
      _mode20,
      Mode(
        match: [
          r'(class|interface|trait|enum|record|extends|implements)',
          r'\s+',
          r'[a-zA-Z_]\w*',
        ],
        scope: {1: r'keyword', 3: r'title.class'},
      ),
      Mode(scope: r'meta', begin: r'@[A-Za-z]+', relevance: 0),
      Mode(scope: r'attr', begin: r'[A-Za-z0-9_$]+[ 	]*:', relevance: 0),
      Mode(
        begin: r'\?',
        end: r':',
        relevance: 0,
        contains: [_mode0, _mode12, _mode19, _mode20, r'self'],
      ),
      Mode(
        scope: r'symbol',
        begin: r'^[ 	]*(?=[A-Za-z0-9_$]+:)',
        excludeBegin: true,
        end: r'[A-Za-z0-9_$]+:',
        relevance: 0,
      ),
    ],
    illegal: r'#|<\/',
  );
}
