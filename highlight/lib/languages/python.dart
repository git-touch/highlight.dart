// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode python(Highlight hljs) {
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
  final Mode _mode24 = Mode();
  final Mode _mode25 = Mode();
  final Mode _mode26 = Mode();
  final Mode _mode27 = Mode();
  final Mode _mode28 = Mode();
  final Mode _mode29 = Mode();
  final Mode _mode30 = Mode();
  _mode0.scope = r'meta';
  _mode0.begin = r'^(>>>|\.\.\.) ';
  _mode1.scope = r'number';
  _mode1.relevance = 0;
  _mode1.variants = [_mode2, _mode3, _mode4, _mode5, _mode6, _mode7, _mode8];
  _mode2.begin =
      r'(\b([0-9](_?[0-9])*)|((\b([0-9](_?[0-9])*))?\.([0-9](_?[0-9])*)|\b([0-9](_?[0-9])*)\.))[eE][+-]?([0-9](_?[0-9])*)[jJ]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  _mode3.begin =
      r'((\b([0-9](_?[0-9])*))?\.([0-9](_?[0-9])*)|\b([0-9](_?[0-9])*)\.)[jJ]?';
  _mode4.begin =
      r'\b([1-9](_?[0-9])*|0+(_?0)*)[lLjJ]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  _mode5.begin =
      r'\b0[bB](_?[01])+[lL]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  _mode6.begin =
      r'\b0[oO](_?[0-7])+[lL]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  _mode7.begin =
      r'\b0[xX](_?[0-9a-fA-F])+[lL]?(?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  _mode8.begin =
      r'\b([0-9](_?[0-9])*)[jJ](?=\b|and|as|assert|async|await|break|case|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|match|nonlocal|10|not|or|pass|raise|return|try|while|with|yield)';
  _mode9.scope = r'string';
  _mode9.contains = [_mode10];
  _mode9.variants = [
    _mode11,
    _mode12,
    _mode13,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
    _mode21,
    _mode22,
    _mode23,
    _mode24,
  ];
  _mode10.begin = r'\\[\s\S]';
  _mode10.relevance = 0;
  _mode11.begin = r"([uU]|[bB]|[rR]|[bB][rR]|[rR][bB])?'''";
  _mode11.end = r"'''";
  _mode11.contains = [_mode10, _mode0];
  _mode11.relevance = 10;
  _mode12.begin = r'([uU]|[bB]|[rR]|[bB][rR]|[rR][bB])?"""';
  _mode12.end = r'"""';
  _mode12.contains = [_mode10, _mode0];
  _mode12.relevance = 10;
  _mode13.begin = r"([fF][rR]|[rR][fF]|[fF])'''";
  _mode13.end = r"'''";
  _mode13.contains = [_mode10, _mode0, _mode14, _mode15];
  _mode14.begin = r'\{\{';
  _mode14.relevance = 0;
  _mode15.scope = r'subst';
  _mode15.begin = r'\{';
  _mode15.end = r'\}';
  _mode15.keywords = {
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
  _mode15.illegal = r'#';
  _mode15.contains = [_mode9, _mode1, _mode0];
  _mode16.begin = r'([fF][rR]|[rR][fF]|[fF])"""';
  _mode16.end = r'"""';
  _mode16.contains = [_mode10, _mode0, _mode14, _mode15];
  _mode17.begin = r"([uU]|[rR])'";
  _mode17.end = r"'";
  _mode17.relevance = 10;
  _mode18.begin = r'([uU]|[rR])"';
  _mode18.end = r'"';
  _mode18.relevance = 10;
  _mode19.begin = r"([bB]|[bB][rR]|[rR][bB])'";
  _mode19.end = r"'";
  _mode20.begin = r'([bB]|[bB][rR]|[rR][bB])"';
  _mode20.end = r'"';
  _mode21.begin = r"([fF][rR]|[rR][fF]|[fF])'";
  _mode21.end = r"'";
  _mode21.contains = [_mode10, _mode14, _mode15];
  _mode22.begin = r'([fF][rR]|[rR][fF]|[fF])"';
  _mode22.end = r'"';
  _mode22.contains = [_mode10, _mode14, _mode15];
  _mode23.scope = r'string';
  _mode23.begin = r"'";
  _mode23.end = r"'";
  _mode23.illegal = r'\n';
  _mode23.contains = [_mode10];
  _mode24.scope = r'string';
  _mode24.begin = r'"';
  _mode24.end = r'"';
  _mode24.illegal = r'\n';
  _mode24.contains = [_mode10];
  _mode25.scope = r'comment';
  _mode25.begin = r'#';
  _mode25.end = r'$';
  _mode25.contains = [_mode26, _mode27];
  _mode26.scope = r'doctag';
  _mode26.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode26.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode26.excludeBegin = true;
  _mode26.relevance = 0;
  _mode27.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode28.scope = r'params';
  _mode28.variants = [_mode29, _mode30];
  _mode29.scope = r'';
  _mode29.begin = r'\(\s*\)';
  _mode29.skip = true;
  _mode30.begin = r'\(';
  _mode30.end = r'\)';
  _mode30.excludeBegin = true;
  _mode30.excludeEnd = true;
  _mode30.keywords = {
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
  _mode30.contains = [r'self', _mode0, _mode1, _mode9, _mode25];
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
      _mode0,
      _mode1,
      Mode(scope: r'variable.language', match: r'\bself\b'),
      Mode(beginKeywords: r'if', relevance: 0),
      Mode(match: r'\bor\b', scope: r'keyword'),
      _mode9,
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
      _mode25,
      Mode(
        match: [r'\bdef', r'\s+', r'[\p{XID_Start}_]\p{XID_Continue}*'],
        scope: {1: r'keyword', 3: r'title.function'},
        contains: [_mode28],
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
        contains: [_mode1, _mode28, _mode9],
      ),
    ],
  );
}
