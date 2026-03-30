// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `java`.
Mode java(Highlight hljs) {
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
  mode0.scope = r'comment';
  mode0.begin = r'//';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'comment';
  mode3.begin = r'/\*';
  mode3.end = r'\*/';
  mode3.contains = [mode4, mode5];
  mode4.scope = r'doctag';
  mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode4.excludeBegin = true;
  mode4.relevance = 0;
  mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode6.begin = r'\\[\s\S]';
  mode6.relevance = 0;
  mode7.scope = r'string';
  mode7.begin = r"'";
  mode7.end = r"'";
  mode7.illegal = r'\n';
  mode7.contains = [mode6];
  mode8.scope = r'string';
  mode8.begin = r'"';
  mode8.end = r'"';
  mode8.illegal = r'\n';
  mode8.contains = [mode6];
  mode9.scope = r'meta';
  mode9.begin = r'@[À-ʸa-zA-Z_$][À-ʸa-zA-Z_$0-9]*';
  mode9.contains = [mode10];
  mode10.begin = r'\(';
  mode10.end = r'\)';
  mode10.contains = [r'self'];
  mode11.scope = r'number';
  mode11.variants = [
    mode12,
    mode13,
    mode14,
    mode15,
    mode16,
    mode17,
    mode18,
    mode19,
    mode20,
  ];
  mode11.relevance = 0;
  mode12.begin =
      r'(\b([0-9](_*[0-9])*)((\.([0-9](_*[0-9])*))|\.)?|(\.([0-9](_*[0-9])*)))[eE][+-]?([0-9](_*[0-9])*)[fFdD]?\b';
  mode13.begin =
      r'\b([0-9](_*[0-9])*)((\.([0-9](_*[0-9])*))[fFdD]?\b|\.([fFdD]\b)?)';
  mode14.begin = r'(\.([0-9](_*[0-9])*))[fFdD]?\b';
  mode15.begin = r'\b([0-9](_*[0-9])*)[fFdD]\b';
  mode16.begin =
      r'\b0[xX](([0-9a-fA-F](_*[0-9a-fA-F])*)\.?|([0-9a-fA-F](_*[0-9a-fA-F])*)?\.([0-9a-fA-F](_*[0-9a-fA-F])*))[pP][+-]?([0-9](_*[0-9])*)[fFdD]?\b';
  mode17.begin = r'\b(0|[1-9](_*[0-9])*)[lL]?\b';
  mode18.begin = r'\b0[xX]([0-9a-fA-F](_*[0-9a-fA-F])*)[lL]?\b';
  mode19.begin = r'\b0(_*[0-7])*[lL]?\b';
  mode20.begin = r'\b0[bB][01](_*[01])*[lL]?\b';
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
      mode0,
      mode3,
      Mode(begin: r'"""', end: r'"""', scope: r'string', contains: [mode6]),
      mode7,
      mode8,
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
            contains: [mode3],
            endsParent: true,
          ),
          mode0,
          mode3,
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
            contains: [mode9, mode7, mode8, mode11, mode3],
          ),
          mode0,
          mode3,
        ],
      ),
      mode11,
      mode9,
    ],
  );
}
