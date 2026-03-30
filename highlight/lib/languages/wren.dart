// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `wren`.
Mode wren(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  mode0.scope = r'number';
  mode0.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode0.relevance = 0;
  mode1.scope = r'string';
  mode1.begin = r'"';
  mode1.end = r'"';
  mode1.contains = [
    Mode(
      scope: r'subst',
      begin: r'%\(',
      end: r'\)',
      contains: [mode0, mode2, mode3, mode4, mode5, mode1],
    ),
    Mode(
      scope: r'char.escape',
      variants: [
        Mode(match: r'\\\\|\\["0%abefnrtv]'),
        Mode(match: r'\\x[0-9A-F]{2}'),
        Mode(match: r'\\u[0-9A-F]{4}'),
        Mode(match: r'\\U[0-9A-F]{8}'),
      ],
    ),
  ];
  mode2.relevance = 0;
  mode2.match = r'\b[A-Z]+[a-z]+([A-Z]+[a-z]+)*';
  mode2.scope = r'title.class';
  mode2.keywords = {
    r'_': [
      r'Bool',
      r'Class',
      r'Fiber',
      r'Fn',
      r'List',
      r'Map',
      r'Null',
      r'Num',
      r'Object',
      r'Range',
      r'Sequence',
      r'String',
      r'System',
    ],
  };
  mode3.relevance = 0;
  mode3.match = r'\b(?!(if|while|for|else|super)\b)[a-zA-Z]\w*(?=\s*[({])';
  mode3.scope = r'title.function';
  mode4.relevance = 0;
  mode4.match = r'\b_[a-zA-Z]\w*';
  mode4.scope = r'variable';
  mode5.relevance = 0;
  mode5.match =
      r'(?:-|~|\*|%|\.\.\.|\.\.|\+|<<|>>|>=|<=|<|>|\^|!=|!|\bis\b|==|&&|&|\|\||\||\?:|=)';
  mode5.scope = r'operator';
  return Mode(
    name: r'Wren',
    keywords: {
      r'keyword': [
        r'as',
        r'break',
        r'class',
        r'construct',
        r'continue',
        r'else',
        r'for',
        r'foreign',
        r'if',
        r'import',
        r'in',
        r'is',
        r'return',
        r'static',
        r'var',
        r'while',
      ],
      r'variable.language': [r'this', r'super'],
      r'literal': [r'true', r'false', r'null'],
    },
    contains: [
      Mode(
        scope: r'comment',
        variants: [
          Mode(
            begin: [r'#!?', r'[A-Za-z_]+(?=\()'],
            beginScope: {},
            keywords: {
              r'literal': [r'true', r'false', r'null'],
            },
            contains: [],
            end: r'\)',
          ),
          Mode(begin: [r'#!?', r'[A-Za-z_]+'], beginScope: {}, end: r'$'),
        ],
      ),
      mode0,
      mode1,
      Mode(scope: r'string', begin: r'"""', end: r'"""'),
      Mode(
        scope: r'comment',
        begin: r'\/\*\*',
        end: r'\*\/',
        contains: [
          Mode(match: r'@[a-z]+', scope: r'doctag'),
          r'self',
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
      ),
      Mode(
        scope: r'comment',
        begin: r'//',
        end: r'$',
        contains: [
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
      ),
      Mode(
        scope: r'comment',
        begin: r'/\*',
        end: r'\*/',
        contains: [
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
      ),
      mode2,
      Mode(
        variants: [
          Mode(
            match: [r'class\s+', r'[a-zA-Z]\w*', r'\s+is\s+', r'[a-zA-Z]\w*'],
          ),
          Mode(match: [r'class\s+', r'[a-zA-Z]\w*']),
        ],
        scope: {2: r'title.class', 4: r'title.class.inherited'},
        keywords: [
          r'as',
          r'break',
          r'class',
          r'construct',
          r'continue',
          r'else',
          r'for',
          r'foreign',
          r'if',
          r'import',
          r'in',
          r'is',
          r'return',
          r'static',
          r'var',
          r'while',
        ],
      ),
      Mode(
        match: [
          r'[a-zA-Z]\w*',
          r'\s*',
          r'=',
          r'\s*',
          r'\(',
          r'[a-zA-Z]\w*',
          r'\)\s*\{',
        ],
        scope: {1: r'title.function', 3: r'operator', 6: r'params'},
      ),
      Mode(
        match:
            r'(?:\b(?!(if|while|for|else|super)\b)[a-zA-Z]\w*|(?:-|~|\*|%|\.\.\.|\.\.|\+|<<|>>|>=|<=|<|>|\^|!=|!|\bis\b|==|&&|&|\|\||\||\?:|=))(?=\s*\([^)]+\)\s*\{)',
        scope: r'title.function',
        starts: Mode(
          contains: [
            Mode(
              begin: r'\(',
              end: r'\)',
              contains: [
                Mode(relevance: 0, scope: r'params', match: r'[a-zA-Z]\w*'),
              ],
            ),
          ],
        ),
      ),
      mode3,
      mode5,
      mode4,
      Mode(
        scope: r'property',
        begin: r'\.(?=[a-zA-Z]\w*)',
        end: r'[a-zA-Z]\w*',
        excludeBegin: true,
        relevance: 0,
      ),
      Mode(
        relevance: 0,
        match:
            r'\b(?!as|break|class|construct|continue|else|for|foreign|if|import|in|is|return|static|var|while|this|super|true|false|null\b)[a-zA-Z_]\w*(?:[?!]|\b)',
        scope: r'variable',
      ),
    ],
  );
}
