// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `kotlin`.
Mode kotlin(Highlight hljs) {
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
  mode3.contains = [mode4, mode7, mode8];
  mode4.scope = r'comment';
  mode4.begin = r'/\*';
  mode4.end = r'\*/';
  mode4.contains = [mode5, mode6];
  mode5.scope = r'doctag';
  mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode5.excludeBegin = true;
  mode5.relevance = 0;
  mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode7.scope = r'doctag';
  mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode7.excludeBegin = true;
  mode7.relevance = 0;
  mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode9.scope = r'meta';
  mode9.begin =
      r'@(?:file|property|field|get|set|receiver|param|setparam|delegate)\s*:(?:\s*[a-zA-Z_]\w*)?';
  mode10.scope = r'meta';
  mode10.begin = r'@[a-zA-Z_]\w*';
  mode10.contains = [mode11];
  mode11.begin = r'\(';
  mode11.end = r'\)';
  mode11.contains = [mode12, r'self'];
  mode12.scope = r'string';
  mode12.variants = [mode13, mode18, mode20];
  mode13.begin = r'"""';
  mode13.end = r'"""(?=[^"])';
  mode13.contains = [mode14, mode15];
  mode14.scope = r'variable';
  mode14.begin = r'\$[a-zA-Z_]\w*';
  mode15.scope = r'subst';
  mode15.begin = r'\$\{';
  mode15.end = r'\}';
  mode15.contains = [mode16, mode17];
  mode16.scope = r'number';
  mode16.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode16.relevance = 0;
  mode17.scope = r'string';
  mode17.variants = [mode13, mode18, mode20];
  mode18.begin = r"'";
  mode18.end = r"'";
  mode18.illegal = r'\n';
  mode18.contains = [mode19];
  mode19.begin = r'\\[\s\S]';
  mode19.relevance = 0;
  mode20.begin = r'"';
  mode20.end = r'"';
  mode20.illegal = r'\n';
  mode20.contains = [mode19, mode14, mode15];
  mode21.scope = r'title';
  mode21.begin = r'[a-zA-Z_]\w*';
  mode21.relevance = 0;
  mode22.variants = [
    Mode(scope: r'type', begin: r'[a-zA-Z_]\w*'),
    Mode(begin: r'\(', end: r'\)', contains: [mode22]),
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
      mode0,
      mode3,
      Mode(
        scope: r'keyword',
        begin: r'\b(break|continue|return|this)\b',
        starts: Mode(
          contains: [Mode(scope: r'symbol', begin: r'@\w+')],
        ),
      ),
      Mode(scope: r'symbol', begin: r'[a-zA-Z_]\w*@'),
      mode9,
      mode10,
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
            contains: [mode21],
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
                contains: [mode22, mode0, mode3],
                relevance: 0,
              ),
              mode0,
              mode3,
              mode9,
              mode10,
              mode17,
              mode16,
            ],
          ),
          mode3,
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
          mode21,
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
          mode9,
          mode10,
        ],
      ),
      mode17,
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
