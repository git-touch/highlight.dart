// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode kotlin(Highlight hljs) {
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
  _mode3.contains = [_mode4, _mode7, _mode8];
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
  _mode7.scope = r'doctag';
  _mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode7.excludeBegin = true;
  _mode7.relevance = 0;
  _mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode9.scope = r'meta';
  _mode9.begin =
      r'@(?:file|property|field|get|set|receiver|param|setparam|delegate)\s*:(?:\s*[a-zA-Z_]\w*)?';
  _mode10.scope = r'meta';
  _mode10.begin = r'@[a-zA-Z_]\w*';
  _mode10.contains = [_mode11];
  _mode11.begin = r'\(';
  _mode11.end = r'\)';
  _mode11.contains = [_mode12, r'self'];
  _mode12.scope = r'string';
  _mode12.variants = [_mode13, _mode18, _mode20];
  _mode13.begin = r'"""';
  _mode13.end = r'"""(?=[^"])';
  _mode13.contains = [_mode14, _mode15];
  _mode14.scope = r'variable';
  _mode14.begin = r'\$[a-zA-Z_]\w*';
  _mode15.scope = r'subst';
  _mode15.begin = r'\$\{';
  _mode15.end = r'\}';
  _mode15.contains = [_mode16, _mode17];
  _mode16.scope = r'number';
  _mode16.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode16.relevance = 0;
  _mode17.scope = r'string';
  _mode17.variants = [_mode13, _mode18, _mode20];
  _mode18.begin = r"'";
  _mode18.end = r"'";
  _mode18.illegal = r'\n';
  _mode18.contains = [_mode19];
  _mode19.begin = r'\\[\s\S]';
  _mode19.relevance = 0;
  _mode20.begin = r'"';
  _mode20.end = r'"';
  _mode20.illegal = r'\n';
  _mode20.contains = [_mode19, _mode14, _mode15];
  _mode21.scope = r'title';
  _mode21.begin = r'[a-zA-Z_]\w*';
  _mode21.relevance = 0;
  _mode22.variants = [
    Mode(scope: r'type', begin: r'[a-zA-Z_]\w*'),
    Mode(begin: r'\(', end: r'\)', contains: [_mode22]),
  ];
  return Mode(
    name: r'Kotlin',
    aliases: [r'kt', r'kts'],
    keywords: {
      r'keyword':
          r'abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual',
      r'built_in':
          r'Byte Short Char Int Long Boolean Float Double Void Unit Nothing',
      r'literal': r'true false null',
    },
    contains: [
      Mode(
        scope: r'comment',
        begin: r'/\*\*',
        end: r'\*/',
        contains: [
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
      _mode0,
      _mode3,
      Mode(
        scope: r'keyword',
        begin: r'\b(break|continue|return|this)\b',
        starts: Mode(
          contains: [Mode(scope: r'symbol', begin: r'@\w+')],
        ),
      ),
      Mode(scope: r'symbol', begin: r'[a-zA-Z_]\w*@'),
      _mode9,
      _mode10,
      Mode(
        scope: r'function',
        beginKeywords: r'fun',
        end: r'[(]|$',
        returnBegin: true,
        excludeEnd: true,
        keywords: {
          r'keyword':
              r'abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual',
          r'built_in':
              r'Byte Short Char Int Long Boolean Float Double Void Unit Nothing',
          r'literal': r'true false null',
        },
        relevance: 5,
        contains: [
          Mode(
            begin: r'[a-zA-Z_]\w*\s*\(',
            returnBegin: true,
            relevance: 0,
            contains: [_mode21],
          ),
          Mode(
            scope: r'type',
            begin: r'<',
            end: r'>',
            keywords: r'reified',
            relevance: 0,
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            endsParent: true,
            keywords: {
              r'keyword':
                  r'abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual',
              r'built_in':
                  r'Byte Short Char Int Long Boolean Float Double Void Unit Nothing',
              r'literal': r'true false null',
            },
            relevance: 0,
            contains: [
              Mode(
                begin: r':',
                end: r'[=,\/]',
                endsWithParent: true,
                contains: [_mode22, _mode0, _mode3],
                relevance: 0,
              ),
              _mode0,
              _mode3,
              _mode9,
              _mode10,
              _mode17,
              _mode16,
            ],
          ),
          _mode3,
        ],
      ),
      Mode(
        begin: [r'class|interface|trait', r'\s+', r'[a-zA-Z_]\w*'],
        beginScope: {3: r'title.class'},
        keywords: r'class interface trait',
        end: r'[:\{(]|$',
        excludeEnd: true,
        illegal: r'extends implements',
        contains: [
          Mode(beginKeywords: r'public protected internal private constructor'),
          _mode21,
          Mode(
            scope: r'type',
            begin: r'<',
            end: r'>',
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
          ),
          Mode(
            scope: r'type',
            begin: r'[,:]\s*',
            end: r'[<\(,){\s]|$',
            excludeBegin: true,
            returnEnd: true,
          ),
          _mode9,
          _mode10,
        ],
      ),
      _mode17,
      Mode(scope: r'meta', begin: r'^#!/usr/bin/env', end: r'$', illegal: '\n'),
      Mode(
        scope: r'number',
        variants: [
          Mode(
            begin:
                r'(\b([0-9](_*[0-9])*)((\.([0-9](_*[0-9])*))|\.)?|(\.([0-9](_*[0-9])*)))[eE][+-]?([0-9](_*[0-9])*)[fFdD]?\b',
          ),
          Mode(
            begin:
                r'\b([0-9](_*[0-9])*)((\.([0-9](_*[0-9])*))[fFdD]?\b|\.([fFdD]\b)?)',
          ),
          Mode(begin: r'(\.([0-9](_*[0-9])*))[fFdD]?\b'),
          Mode(begin: r'\b([0-9](_*[0-9])*)[fFdD]\b'),
          Mode(
            begin:
                r'\b0[xX](([0-9a-fA-F](_*[0-9a-fA-F])*)\.?|([0-9a-fA-F](_*[0-9a-fA-F])*)?\.([0-9a-fA-F](_*[0-9a-fA-F])*))[pP][+-]?([0-9](_*[0-9])*)[fFdD]?\b',
          ),
          Mode(begin: r'\b(0|[1-9](_*[0-9])*)[lL]?\b'),
          Mode(begin: r'\b0[xX]([0-9a-fA-F](_*[0-9a-fA-F])*)[lL]?\b'),
          Mode(begin: r'\b0(_*[0-7])*[lL]?\b'),
          Mode(begin: r'\b0[bB][01](_*[01])*[lL]?\b'),
        ],
        relevance: 0,
      ),
    ],
  );
}
