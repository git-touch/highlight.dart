// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `python`.
Mode python(Highlight hljs) {
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
  final Mode mode23 = Mode();
  final Mode mode24 = Mode();
  final Mode mode25 = Mode();
  final Mode mode26 = Mode();
  final Mode mode27 = Mode();
  final Mode mode28 = Mode();
  final Mode mode29 = Mode();
  final Mode mode30 = Mode();
  mode0.scope = r'meta';
  mode0.begin = r'^(>>>|\.\.\.) ';
  mode1.scope = r'number';
  mode1.relevance = 0;
  mode1.variants = [mode2, mode3, mode4, mode5, mode6, mode7, mode8];
  mode2.begin =
      r'(\b([0-9](_?[0-9])*)|((\b([0-9](_?[0-9])*))?\.([0-9](_?[0-9])*)|\b([0-9](_?[0-9])*)\.))[eE][+-]?([0-9](_?[0-9])*)[jJ]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  mode3.begin =
      r'((\b([0-9](_?[0-9])*))?\.([0-9](_?[0-9])*)|\b([0-9](_?[0-9])*)\.)[jJ]?';
  mode4.begin =
      r'\b([1-9](_?[0-9])*|0+(_?0)*)[lLjJ]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  mode5.begin =
      r'\b0[bB](_?[01])+[lL]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  mode6.begin =
      r'\b0[oO](_?[0-7])+[lL]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  mode7.begin =
      r'\b0[xX](_?[0-9a-fA-F])+[lL]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  mode8.begin =
      r'\b([0-9](_?[0-9])*)[jJ](?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  mode9.scope = r'string';
  mode9.contains = [mode10];
  mode9.variants = [
    mode11,
    mode12,
    mode13,
    mode16,
    mode17,
    mode18,
    mode19,
    mode20,
    mode21,
    mode22,
    mode23,
    mode24,
  ];
  mode10.begin = r'\\[\s\S]';
  mode10.relevance = 0;
  mode11.begin = r"([uU]|[bB]|[rR]|[bB][rR]|[rR][bB])?'''";
  mode11.end = r"'''";
  mode11.contains = [mode10, mode0];
  mode11.relevance = 10;
  mode12.begin = r'([uU]|[bB]|[rR]|[bB][rR]|[rR][bB])?"""';
  mode12.end = r'"""';
  mode12.contains = [mode10, mode0];
  mode12.relevance = 10;
  mode13.begin = r"([fF][rR]|[rR][fF]|[fF])'''";
  mode13.end = r"'''";
  mode13.contains = [mode10, mode0, mode14, mode15];
  mode14.begin = r'\{\{';
  mode14.relevance = 0;
  mode15.scope = r'subst';
  mode15.begin = r'\{';
  mode15.end = r'\}';
  mode15.keywords = {
    r'$pattern': r'[A-Za-z]\w+|__\w+__',
    r'keyword': [
      r'and',
      r'as',
      r'assert',
      r'async',
      r'await',
      r'break',
      r'case',
      r'class',
      r'continue',
      r'def',
      r'del',
      r'elif',
      r'else',
      r'except',
      r'finally',
      r'for',
      r'from',
      r'global',
      r'if',
      r'import',
      r'in',
      r'is',
      r'lambda',
      r'match',
      r'nonlocal|10',
      r'not',
      r'or',
      r'pass',
      r'raise',
      r'return',
      r'try',
      r'while',
      r'with',
      r'yield',
    ],
    r'built_in': [
      r'__import__',
      r'abs',
      r'all',
      r'any',
      r'ascii',
      r'bin',
      r'bool',
      r'breakpoint',
      r'bytearray',
      r'bytes',
      r'callable',
      r'chr',
      r'classmethod',
      r'compile',
      r'complex',
      r'delattr',
      r'dict',
      r'dir',
      r'divmod',
      r'enumerate',
      r'eval',
      r'exec',
      r'filter',
      r'float',
      r'format',
      r'frozenset',
      r'getattr',
      r'globals',
      r'hasattr',
      r'hash',
      r'help',
      r'hex',
      r'id',
      r'input',
      r'int',
      r'isinstance',
      r'issubclass',
      r'iter',
      r'len',
      r'list',
      r'locals',
      r'map',
      r'max',
      r'memoryview',
      r'min',
      r'next',
      r'object',
      r'oct',
      r'open',
      r'ord',
      r'pow',
      r'print',
      r'property',
      r'range',
      r'repr',
      r'reversed',
      r'round',
      r'set',
      r'setattr',
      r'slice',
      r'sorted',
      r'staticmethod',
      r'str',
      r'sum',
      r'super',
      r'tuple',
      r'type',
      r'vars',
      r'zip',
    ],
    r'literal': [
      r'__debug__',
      r'Ellipsis',
      r'False',
      r'None',
      r'NotImplemented',
      r'True',
    ],
    r'type': [
      r'Any',
      r'Callable',
      r'Coroutine',
      r'Dict',
      r'List',
      r'Literal',
      r'Generic',
      r'Optional',
      r'Sequence',
      r'Set',
      r'Tuple',
      r'Type',
      r'Union',
    ],
  };
  mode15.illegal = r'#';
  mode15.contains = [mode9, mode1, mode0];
  mode16.begin = r'([fF][rR]|[rR][fF]|[fF])"""';
  mode16.end = r'"""';
  mode16.contains = [mode10, mode0, mode14, mode15];
  mode17.begin = r"([uU]|[rR])'";
  mode17.end = r"'";
  mode17.relevance = 10;
  mode18.begin = r'([uU]|[rR])"';
  mode18.end = r'"';
  mode18.relevance = 10;
  mode19.begin = r"([bB]|[bB][rR]|[rR][bB])'";
  mode19.end = r"'";
  mode20.begin = r'([bB]|[bB][rR]|[rR][bB])"';
  mode20.end = r'"';
  mode21.begin = r"([fF][rR]|[rR][fF]|[fF])'";
  mode21.end = r"'";
  mode21.contains = [mode10, mode14, mode15];
  mode22.begin = r'([fF][rR]|[rR][fF]|[fF])"';
  mode22.end = r'"';
  mode22.contains = [mode10, mode14, mode15];
  mode23.scope = r'string';
  mode23.begin = r"'";
  mode23.end = r"'";
  mode23.illegal = r'\n';
  mode23.contains = [mode10];
  mode24.scope = r'string';
  mode24.begin = r'"';
  mode24.end = r'"';
  mode24.illegal = r'\n';
  mode24.contains = [mode10];
  mode25.scope = r'comment';
  mode25.begin = r'#';
  mode25.end = r'$';
  mode25.contains = [mode26, mode27];
  mode26.scope = r'doctag';
  mode26.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode26.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode26.excludeBegin = true;
  mode26.relevance = 0;
  mode27.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode28.scope = r'params';
  mode28.variants = [mode29, mode30];
  mode29.scope = r'';
  mode29.begin = r'\(\s*\)';
  mode29.skip = true;
  mode30.begin = r'\(';
  mode30.end = r'\)';
  mode30.excludeBegin = true;
  mode30.excludeEnd = true;
  mode30.keywords = {
    r'$pattern': r'[A-Za-z]\w+|__\w+__',
    r'keyword': [
      r'and',
      r'as',
      r'assert',
      r'async',
      r'await',
      r'break',
      r'case',
      r'class',
      r'continue',
      r'def',
      r'del',
      r'elif',
      r'else',
      r'except',
      r'finally',
      r'for',
      r'from',
      r'global',
      r'if',
      r'import',
      r'in',
      r'is',
      r'lambda',
      r'match',
      r'nonlocal|10',
      r'not',
      r'or',
      r'pass',
      r'raise',
      r'return',
      r'try',
      r'while',
      r'with',
      r'yield',
    ],
    r'built_in': [
      r'__import__',
      r'abs',
      r'all',
      r'any',
      r'ascii',
      r'bin',
      r'bool',
      r'breakpoint',
      r'bytearray',
      r'bytes',
      r'callable',
      r'chr',
      r'classmethod',
      r'compile',
      r'complex',
      r'delattr',
      r'dict',
      r'dir',
      r'divmod',
      r'enumerate',
      r'eval',
      r'exec',
      r'filter',
      r'float',
      r'format',
      r'frozenset',
      r'getattr',
      r'globals',
      r'hasattr',
      r'hash',
      r'help',
      r'hex',
      r'id',
      r'input',
      r'int',
      r'isinstance',
      r'issubclass',
      r'iter',
      r'len',
      r'list',
      r'locals',
      r'map',
      r'max',
      r'memoryview',
      r'min',
      r'next',
      r'object',
      r'oct',
      r'open',
      r'ord',
      r'pow',
      r'print',
      r'property',
      r'range',
      r'repr',
      r'reversed',
      r'round',
      r'set',
      r'setattr',
      r'slice',
      r'sorted',
      r'staticmethod',
      r'str',
      r'sum',
      r'super',
      r'tuple',
      r'type',
      r'vars',
      r'zip',
    ],
    r'literal': [
      r'__debug__',
      r'Ellipsis',
      r'False',
      r'None',
      r'NotImplemented',
      r'True',
    ],
    r'type': [
      r'Any',
      r'Callable',
      r'Coroutine',
      r'Dict',
      r'List',
      r'Literal',
      r'Generic',
      r'Optional',
      r'Sequence',
      r'Set',
      r'Tuple',
      r'Type',
      r'Union',
    ],
  };
  mode30.contains = [r'self', mode0, mode1, mode9, mode25];
  return Mode(
    name: r'Python',
    aliases: [r'py', r'gyp', r'ipython'],
    unicodeRegex: true,
    keywords: {
      r'$pattern': r'[A-Za-z]\w+|__\w+__',
      r'keyword': [
        r'and',
        r'as',
        r'assert',
        r'async',
        r'await',
        r'break',
        r'case',
        r'class',
        r'continue',
        r'def',
        r'del',
        r'elif',
        r'else',
        r'except',
        r'finally',
        r'for',
        r'from',
        r'global',
        r'if',
        r'import',
        r'in',
        r'is',
        r'lambda',
        r'match',
        r'nonlocal|10',
        r'not',
        r'or',
        r'pass',
        r'raise',
        r'return',
        r'try',
        r'while',
        r'with',
        r'yield',
      ],
      r'built_in': [
        r'__import__',
        r'abs',
        r'all',
        r'any',
        r'ascii',
        r'bin',
        r'bool',
        r'breakpoint',
        r'bytearray',
        r'bytes',
        r'callable',
        r'chr',
        r'classmethod',
        r'compile',
        r'complex',
        r'delattr',
        r'dict',
        r'dir',
        r'divmod',
        r'enumerate',
        r'eval',
        r'exec',
        r'filter',
        r'float',
        r'format',
        r'frozenset',
        r'getattr',
        r'globals',
        r'hasattr',
        r'hash',
        r'help',
        r'hex',
        r'id',
        r'input',
        r'int',
        r'isinstance',
        r'issubclass',
        r'iter',
        r'len',
        r'list',
        r'locals',
        r'map',
        r'max',
        r'memoryview',
        r'min',
        r'next',
        r'object',
        r'oct',
        r'open',
        r'ord',
        r'pow',
        r'print',
        r'property',
        r'range',
        r'repr',
        r'reversed',
        r'round',
        r'set',
        r'setattr',
        r'slice',
        r'sorted',
        r'staticmethod',
        r'str',
        r'sum',
        r'super',
        r'tuple',
        r'type',
        r'vars',
        r'zip',
      ],
      r'literal': [
        r'__debug__',
        r'Ellipsis',
        r'False',
        r'None',
        r'NotImplemented',
        r'True',
      ],
      r'type': [
        r'Any',
        r'Callable',
        r'Coroutine',
        r'Dict',
        r'List',
        r'Literal',
        r'Generic',
        r'Optional',
        r'Sequence',
        r'Set',
        r'Tuple',
        r'Type',
        r'Union',
      ],
    },
    illegal: r'(<\/|\?)|=>',
    contains: [
      mode0,
      mode1,
      Mode(scope: r'variable.language', match: r'\bself\b'),
      Mode(beginKeywords: r'if', relevance: 0),
      Mode(match: r'\bor\b', scope: r'keyword'),
      mode9,
      Mode(
        scope: r'comment',
        begin: r'(?=# type:)',
        end: r'$',
        keywords: {
          r'$pattern': r'[A-Za-z]\w+|__\w+__',
          r'keyword': [
            r'and',
            r'as',
            r'assert',
            r'async',
            r'await',
            r'break',
            r'case',
            r'class',
            r'continue',
            r'def',
            r'del',
            r'elif',
            r'else',
            r'except',
            r'finally',
            r'for',
            r'from',
            r'global',
            r'if',
            r'import',
            r'in',
            r'is',
            r'lambda',
            r'match',
            r'nonlocal|10',
            r'not',
            r'or',
            r'pass',
            r'raise',
            r'return',
            r'try',
            r'while',
            r'with',
            r'yield',
          ],
          r'built_in': [
            r'__import__',
            r'abs',
            r'all',
            r'any',
            r'ascii',
            r'bin',
            r'bool',
            r'breakpoint',
            r'bytearray',
            r'bytes',
            r'callable',
            r'chr',
            r'classmethod',
            r'compile',
            r'complex',
            r'delattr',
            r'dict',
            r'dir',
            r'divmod',
            r'enumerate',
            r'eval',
            r'exec',
            r'filter',
            r'float',
            r'format',
            r'frozenset',
            r'getattr',
            r'globals',
            r'hasattr',
            r'hash',
            r'help',
            r'hex',
            r'id',
            r'input',
            r'int',
            r'isinstance',
            r'issubclass',
            r'iter',
            r'len',
            r'list',
            r'locals',
            r'map',
            r'max',
            r'memoryview',
            r'min',
            r'next',
            r'object',
            r'oct',
            r'open',
            r'ord',
            r'pow',
            r'print',
            r'property',
            r'range',
            r'repr',
            r'reversed',
            r'round',
            r'set',
            r'setattr',
            r'slice',
            r'sorted',
            r'staticmethod',
            r'str',
            r'sum',
            r'super',
            r'tuple',
            r'type',
            r'vars',
            r'zip',
          ],
          r'literal': [
            r'__debug__',
            r'Ellipsis',
            r'False',
            r'None',
            r'NotImplemented',
            r'True',
          ],
          r'type': [
            r'Any',
            r'Callable',
            r'Coroutine',
            r'Dict',
            r'List',
            r'Literal',
            r'Generic',
            r'Optional',
            r'Sequence',
            r'Set',
            r'Tuple',
            r'Type',
            r'Union',
          ],
        },
        contains: [
          Mode(begin: r'# type:'),
          Mode(begin: r'#', end: r'\b\B', endsWithParent: true),
        ],
      ),
      mode25,
      Mode(
        match: [r'\bdef', r'\s+', r'[\p{XID_Start}_]\p{XID_Continue}*'],
        scope: {1: r'keyword', 3: r'title.function'},
        contains: [mode28],
      ),
      Mode(
        variants: [
          Mode(
            match: [
              r'\bclass',
              r'\s+',
              r'[\p{XID_Start}_]\p{XID_Continue}*',
              r'\s*',
              r'\(\s*',
              r'[\p{XID_Start}_]\p{XID_Continue}*',
              r'\s*\)',
            ],
          ),
          Mode(
            match: [r'\bclass', r'\s+', r'[\p{XID_Start}_]\p{XID_Continue}*'],
          ),
        ],
        scope: {1: r'keyword', 3: r'title.class', 6: r'title.class.inherited'},
      ),
      Mode(
        scope: r'meta',
        begin: r'^[\t ]*@',
        end: r'(?=#)|$',
        contains: [mode1, mode28, mode9],
      ),
    ],
  );
}
