// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode java(Highlight hljs) {
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
  _mode0.scope = r'comment';
  _mode0.begin = r'//';
  _mode0.end = r'$';
  _mode0.contains = [_mode1, _mode2];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'comment';
  _mode3.begin = r'/\*';
  _mode3.end = r'\*/';
  _mode3.contains = [_mode4, _mode5];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.begin = r'\\[\s\S]';
  _mode6.relevance = 0;
  _mode7.scope = r'string';
  _mode7.begin = r"'";
  _mode7.end = r"'";
  _mode7.illegal = r'\n';
  _mode7.contains = [_mode6];
  _mode8.scope = r'string';
  _mode8.begin = r'"';
  _mode8.end = r'"';
  _mode8.illegal = r'\n';
  _mode8.contains = [_mode6];
  _mode9.scope = r'meta';
  _mode9.begin = r'@[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*';
  _mode9.contains = [_mode10];
  _mode10.begin = r'\(';
  _mode10.end = r'\)';
  _mode10.contains = [r'self'];
  _mode11.scope = r'number';
  _mode11.variants = [
    _mode12,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
  ];
  _mode11.relevance = 0;
  _mode12.begin =
      r'(\b([0-9](_*[0-9])*)((\.([0-9](_*[0-9])*))|\.)?|(\.([0-9](_*[0-9])*)))[eE][+-]?([0-9](_*[0-9])*)[fFdD]?\b';
  _mode13.begin =
      r'\b([0-9](_*[0-9])*)((\.([0-9](_*[0-9])*))[fFdD]?\b|\.([fFdD]\b)?)';
  _mode14.begin = r'(\.([0-9](_*[0-9])*))[fFdD]?\b';
  _mode15.begin = r'\b([0-9](_*[0-9])*)[fFdD]\b';
  _mode16.begin =
      r'\b0[xX](([0-9a-fA-F](_*[0-9a-fA-F])*)\.?|([0-9a-fA-F](_*[0-9a-fA-F])*)?\.([0-9a-fA-F](_*[0-9a-fA-F])*))[pP][+-]?([0-9](_*[0-9])*)[fFdD]?\b';
  _mode17.begin = r'\b(0|[1-9](_*[0-9])*)[lL]?\b';
  _mode18.begin = r'\b0[xX]([0-9a-fA-F](_*[0-9a-fA-F])*)[lL]?\b';
  _mode19.begin = r'\b0(_*[0-7])*[lL]?\b';
  _mode20.begin = r'\b0[bB][01](_*[01])*[lL]?\b';
  return Mode(
    name: r'Java',
    aliases: [r'jsp'],
    keywords: {
      r'keyword': [
        r'synchronized',
        r'abstract',
        r'private',
        r'var',
        r'static',
        r'if',
        r'const ',
        r'for',
        r'while',
        r'strictfp',
        r'finally',
        r'protected',
        r'import',
        r'native',
        r'final',
        r'void',
        r'enum',
        r'else',
        r'break',
        r'transient',
        r'catch',
        r'instanceof',
        r'volatile',
        r'case',
        r'assert',
        r'package',
        r'default',
        r'public',
        r'try',
        r'switch',
        r'continue',
        r'throws',
        r'protected',
        r'public',
        r'private',
        r'module',
        r'requires',
        r'exports',
        r'do',
        r'sealed',
        r'yield',
        r'permits',
        r'goto',
        r'when',
      ],
      r'literal': [r'false', r'true', r'null'],
      r'type': [
        r'char',
        r'boolean',
        r'long',
        r'float',
        r'int',
        r'byte',
        r'short',
        r'double',
      ],
      r'built_in': [r'super', r'this'],
    },
    illegal: r'<\/|#',
    contains: [
      Mode(
        scope: r'comment',
        begin: r'/\*\*',
        end: r'\*/',
        contains: [
          Mode(begin: r'\w+@', relevance: 0),
          Mode(scope: r'doctag', begin: r'@[A-Za-z]+'),
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
        relevance: 0,
      ),
      Mode(begin: r'import java\.[a-z]+\.', keywords: r'import', relevance: 2),
      _mode0,
      _mode3,
      Mode(begin: r'"""', end: r'"""', scope: r'string', contains: [_mode6]),
      _mode7,
      _mode8,
      Mode(
        match: [
          r'\b(?:class|interface|enum|extends|implements|new)',
          r'\s+',
          r'[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*',
        ],
        scope: {1: r'keyword', 3: r'title.class'},
      ),
      Mode(match: r'non-sealed', scope: r'keyword'),
      Mode(
        begin: [
          r'(?!else)[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*',
          r'\s+',
          r'[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*',
          r'\s+',
          r'=(?!=)',
        ],
        scope: {1: r'type', 3: r'variable', 5: r'operator'},
      ),
      Mode(
        begin: [r'record', r'\s+', r'[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*'],
        scope: {1: r'keyword', 3: r'title.class'},
        contains: [
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            keywords: {
              r'keyword': [
                r'synchronized',
                r'abstract',
                r'private',
                r'var',
                r'static',
                r'if',
                r'const ',
                r'for',
                r'while',
                r'strictfp',
                r'finally',
                r'protected',
                r'import',
                r'native',
                r'final',
                r'void',
                r'enum',
                r'else',
                r'break',
                r'transient',
                r'catch',
                r'instanceof',
                r'volatile',
                r'case',
                r'assert',
                r'package',
                r'default',
                r'public',
                r'try',
                r'switch',
                r'continue',
                r'throws',
                r'protected',
                r'public',
                r'private',
                r'module',
                r'requires',
                r'exports',
                r'do',
                r'sealed',
                r'yield',
                r'permits',
                r'goto',
                r'when',
              ],
              r'literal': [r'false', r'true', r'null'],
              r'type': [
                r'char',
                r'boolean',
                r'long',
                r'float',
                r'int',
                r'byte',
                r'short',
                r'double',
              ],
              r'built_in': [r'super', r'this'],
            },
            relevance: 0,
            contains: [_mode3],
            endsParent: true,
          ),
          _mode0,
          _mode3,
        ],
      ),
      Mode(beginKeywords: r'new throw return else', relevance: 0),
      Mode(
        begin: [
          r'(?:[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:<[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:<[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:<[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:\s*,\s*[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*)*>)?(?:\s*,\s*[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:<[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:\s*,\s*[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*)*>)?)*>)?(?:\s*,\s*[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:<[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:<[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:\s*,\s*[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*)*>)?(?:\s*,\s*[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:<[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*(?:\s*,\s*[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*)*>)?)*>)?)*>)?\s+)',
          r'[a-zA-Z_]\w*',
          r'\s*(?=\()',
        ],
        scope: {2: r'title.function'},
        keywords: {
          r'keyword': [
            r'synchronized',
            r'abstract',
            r'private',
            r'var',
            r'static',
            r'if',
            r'const ',
            r'for',
            r'while',
            r'strictfp',
            r'finally',
            r'protected',
            r'import',
            r'native',
            r'final',
            r'void',
            r'enum',
            r'else',
            r'break',
            r'transient',
            r'catch',
            r'instanceof',
            r'volatile',
            r'case',
            r'assert',
            r'package',
            r'default',
            r'public',
            r'try',
            r'switch',
            r'continue',
            r'throws',
            r'protected',
            r'public',
            r'private',
            r'module',
            r'requires',
            r'exports',
            r'do',
            r'sealed',
            r'yield',
            r'permits',
            r'goto',
            r'when',
          ],
          r'literal': [r'false', r'true', r'null'],
          r'type': [
            r'char',
            r'boolean',
            r'long',
            r'float',
            r'int',
            r'byte',
            r'short',
            r'double',
          ],
          r'built_in': [r'super', r'this'],
        },
        contains: [
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            keywords: {
              r'keyword': [
                r'synchronized',
                r'abstract',
                r'private',
                r'var',
                r'static',
                r'if',
                r'const ',
                r'for',
                r'while',
                r'strictfp',
                r'finally',
                r'protected',
                r'import',
                r'native',
                r'final',
                r'void',
                r'enum',
                r'else',
                r'break',
                r'transient',
                r'catch',
                r'instanceof',
                r'volatile',
                r'case',
                r'assert',
                r'package',
                r'default',
                r'public',
                r'try',
                r'switch',
                r'continue',
                r'throws',
                r'protected',
                r'public',
                r'private',
                r'module',
                r'requires',
                r'exports',
                r'do',
                r'sealed',
                r'yield',
                r'permits',
                r'goto',
                r'when',
              ],
              r'literal': [r'false', r'true', r'null'],
              r'type': [
                r'char',
                r'boolean',
                r'long',
                r'float',
                r'int',
                r'byte',
                r'short',
                r'double',
              ],
              r'built_in': [r'super', r'this'],
            },
            relevance: 0,
            contains: [_mode9, _mode7, _mode8, _mode11, _mode3],
          ),
          _mode0,
          _mode3,
        ],
      ),
      _mode11,
      _mode9,
    ],
  );
}
