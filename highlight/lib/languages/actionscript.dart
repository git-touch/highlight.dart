// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode actionscript(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  _mode0.scope = r'string';
  _mode0.begin = r"'";
  _mode0.end = r"'";
  _mode0.illegal = r'\n';
  _mode0.contains = [
    _mode1,
  ];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'string';
  _mode2.begin = r'"';
  _mode2.end = r'"';
  _mode2.illegal = r'\n';
  _mode2.contains = [
    _mode1,
  ];
  _mode3.scope = r'comment';
  _mode3.begin = r'//';
  _mode3.end = r'$';
  _mode3.contains = [
    _mode4,
    _mode5,
  ];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.scope = r'comment';
  _mode6.begin = r'/\*';
  _mode6.end = r'\*/';
  _mode6.contains = [
    _mode7,
    _mode8,
  ];
  _mode7.scope = r'doctag';
  _mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode7.excludeBegin = true;
  _mode7.relevance = 0;
  _mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'ActionScript',
    aliases: [
      r'as',
    ],
    keywords: {
      r'keyword': [
        r'as',
        r'break',
        r'case',
        r'catch',
        r'class',
        r'const',
        r'continue',
        r'default',
        r'delete',
        r'do',
        r'dynamic',
        r'each',
        r'else',
        r'extends',
        r'final',
        r'finally',
        r'for',
        r'function',
        r'get',
        r'if',
        r'implements',
        r'import',
        r'in',
        r'include',
        r'instanceof',
        r'interface',
        r'internal',
        r'is',
        r'namespace',
        r'native',
        r'new',
        r'override',
        r'package',
        r'private',
        r'protected',
        r'public',
        r'return',
        r'set',
        r'static',
        r'super',
        r'switch',
        r'this',
        r'throw',
        r'try',
        r'typeof',
        r'use',
        r'var',
        r'void',
        r'while',
        r'with',
      ],
      r'literal': [
        r'true',
        r'false',
        r'null',
        r'undefined',
      ],
    },
    contains: [
      _mode0,
      _mode2,
      _mode3,
      _mode6,
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(
        match: [
          r'\bpackage',
          r'\s+',
          r'[a-zA-Z_$][a-zA-Z0-9_$]*(\.[a-zA-Z_$][a-zA-Z0-9_$]*)*',
        ],
        scope: {
          1: r'keyword',
          3: r'title.class',
        },
      ),
      Mode(
        match: [
          r'\b(?:class|interface|extends|implements)',
          r'\s+',
          r'[a-zA-Z_$][a-zA-Z0-9_$]*',
        ],
        scope: {
          1: r'keyword',
          3: r'title.class',
        },
      ),
      Mode(
        scope: r'meta',
        beginKeywords: r'import include',
        end: r';',
        keywords: {
          r'keyword': r'import include',
        },
      ),
      Mode(
        beginKeywords: r'function',
        end: r'[{;]',
        excludeEnd: true,
        illegal: r'\S',
        contains: [
          Mode(
            scope: r'title.function',
            begin: r'[a-zA-Z]\w*',
            relevance: 0,
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            contains: [
              _mode0,
              _mode2,
              _mode3,
              _mode6,
              Mode(
                scope: r'rest_arg',
                begin: r'[.]{3}',
                end: r'[a-zA-Z_$][a-zA-Z0-9_$]*',
                relevance: 10,
              ),
            ],
          ),
          Mode(
            begin: r':\s*([*]|[a-zA-Z_$][a-zA-Z0-9_$]*)',
          ),
        ],
      ),
      Mode(
        begin: r'\.\s*[a-zA-Z_]\w*',
        relevance: 0,
      ),
    ],
    illegal: r'#',
  );
}
