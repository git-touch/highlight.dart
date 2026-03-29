// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode csharp(Highlight hljs) {
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
  final Mode _mode31 = Mode();
  final Mode _mode32 = Mode();
  final Mode _mode33 = Mode();
  final Mode _mode34 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'//';
  _mode0.end = r'$';
  _mode0.contains = [
    _mode1,
    _mode2,
  ];
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
  _mode6.variants = [
    _mode7,
    _mode8,
    _mode13,
    _mode31,
    _mode24,
    _mode25,
  ];
  _mode7.scope = r'string';
  _mode7.begin = r'"""("*)(?!")(.|\n)*?"""\1';
  _mode7.relevance = 1;
  _mode8.scope = r'string';
  _mode8.begin = r'\$@"';
  _mode8.end = r'"';
  _mode8.contains = [
    _mode9,
    _mode10,
    _mode11,
    _mode12,
  ];
  _mode9.begin = r'\{\{';
  _mode10.begin = r'\}\}';
  _mode11.begin = r'""';
  _mode12.scope = r'subst';
  _mode12.begin = r'\{';
  _mode12.end = r'\}';
  _mode12.keywords = {
    r'keyword': [
      r'abstract',
      r'as',
      r'base',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'const',
      r'continue',
      r'do',
      r'else',
      r'event',
      r'explicit',
      r'extern',
      r'finally',
      r'fixed',
      r'for',
      r'foreach',
      r'goto',
      r'if',
      r'implicit',
      r'in',
      r'interface',
      r'internal',
      r'is',
      r'lock',
      r'namespace',
      r'new',
      r'operator',
      r'out',
      r'override',
      r'params',
      r'private',
      r'protected',
      r'public',
      r'readonly',
      r'record',
      r'ref',
      r'return',
      r'scoped',
      r'sealed',
      r'sizeof',
      r'stackalloc',
      r'static',
      r'struct',
      r'switch',
      r'this',
      r'throw',
      r'try',
      r'typeof',
      r'unchecked',
      r'unsafe',
      r'using',
      r'virtual',
      r'void',
      r'volatile',
      r'while',
      r'add',
      r'alias',
      r'and',
      r'ascending',
      r'args',
      r'async',
      r'await',
      r'by',
      r'descending',
      r'dynamic',
      r'equals',
      r'file',
      r'from',
      r'get',
      r'global',
      r'group',
      r'init',
      r'into',
      r'join',
      r'let',
      r'nameof',
      r'not',
      r'notnull',
      r'on',
      r'or',
      r'orderby',
      r'partial',
      r'record',
      r'remove',
      r'required',
      r'scoped',
      r'select',
      r'set',
      r'unmanaged',
      r'value|0',
      r'var',
      r'when',
      r'where',
      r'with',
      r'yield',
    ],
    r'built_in': [
      r'bool',
      r'byte',
      r'char',
      r'decimal',
      r'delegate',
      r'double',
      r'dynamic',
      r'enum',
      r'float',
      r'int',
      r'long',
      r'nint',
      r'nuint',
      r'object',
      r'sbyte',
      r'short',
      r'string',
      r'ulong',
      r'uint',
      r'ushort',
    ],
    r'literal': [
      r'default',
      r'false',
      r'null',
      r'true',
    ],
  };
  _mode12.contains = [
    _mode8,
    _mode13,
    _mode31,
    _mode24,
    _mode25,
    _mode26,
    _mode3,
  ];
  _mode13.scope = r'string';
  _mode13.begin = r'\$"';
  _mode13.end = r'"';
  _mode13.illegal = r'\n';
  _mode13.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode17,
  ];
  _mode14.begin = r'\{\{';
  _mode15.begin = r'\}\}';
  _mode16.begin = r'\\[\s\S]';
  _mode16.relevance = 0;
  _mode17.scope = r'subst';
  _mode17.begin = r'\{';
  _mode17.end = r'\}';
  _mode17.keywords = {
    r'keyword': [
      r'abstract',
      r'as',
      r'base',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'const',
      r'continue',
      r'do',
      r'else',
      r'event',
      r'explicit',
      r'extern',
      r'finally',
      r'fixed',
      r'for',
      r'foreach',
      r'goto',
      r'if',
      r'implicit',
      r'in',
      r'interface',
      r'internal',
      r'is',
      r'lock',
      r'namespace',
      r'new',
      r'operator',
      r'out',
      r'override',
      r'params',
      r'private',
      r'protected',
      r'public',
      r'readonly',
      r'record',
      r'ref',
      r'return',
      r'scoped',
      r'sealed',
      r'sizeof',
      r'stackalloc',
      r'static',
      r'struct',
      r'switch',
      r'this',
      r'throw',
      r'try',
      r'typeof',
      r'unchecked',
      r'unsafe',
      r'using',
      r'virtual',
      r'void',
      r'volatile',
      r'while',
      r'add',
      r'alias',
      r'and',
      r'ascending',
      r'args',
      r'async',
      r'await',
      r'by',
      r'descending',
      r'dynamic',
      r'equals',
      r'file',
      r'from',
      r'get',
      r'global',
      r'group',
      r'init',
      r'into',
      r'join',
      r'let',
      r'nameof',
      r'not',
      r'notnull',
      r'on',
      r'or',
      r'orderby',
      r'partial',
      r'record',
      r'remove',
      r'required',
      r'scoped',
      r'select',
      r'set',
      r'unmanaged',
      r'value|0',
      r'var',
      r'when',
      r'where',
      r'with',
      r'yield',
    ],
    r'built_in': [
      r'bool',
      r'byte',
      r'char',
      r'decimal',
      r'delegate',
      r'double',
      r'dynamic',
      r'enum',
      r'float',
      r'int',
      r'long',
      r'nint',
      r'nuint',
      r'object',
      r'sbyte',
      r'short',
      r'string',
      r'ulong',
      r'uint',
      r'ushort',
    ],
    r'literal': [
      r'default',
      r'false',
      r'null',
      r'true',
    ],
  };
  _mode17.illegal = r'\n';
  _mode17.contains = [
    _mode18,
    _mode13,
    _mode22,
    _mode24,
    _mode25,
    _mode26,
    _mode30,
  ];
  _mode18.scope = r'string';
  _mode18.begin = r'\$@"';
  _mode18.end = r'"';
  _mode18.contains = [
    _mode19,
    _mode20,
    _mode21,
    _mode17,
  ];
  _mode18.illegal = r'\n';
  _mode19.begin = r'\{\{';
  _mode20.begin = r'\}\}';
  _mode21.begin = r'""';
  _mode22.scope = r'string';
  _mode22.begin = r'@"';
  _mode22.end = r'"';
  _mode22.contains = [
    _mode23,
  ];
  _mode22.illegal = r'\n';
  _mode23.begin = r'""';
  _mode24.scope = r'string';
  _mode24.begin = r"'";
  _mode24.end = r"'";
  _mode24.illegal = r'\n';
  _mode24.contains = [
    _mode16,
  ];
  _mode25.scope = r'string';
  _mode25.begin = r'"';
  _mode25.end = r'"';
  _mode25.illegal = r'\n';
  _mode25.contains = [
    _mode16,
  ];
  _mode26.scope = r'number';
  _mode26.variants = [
    _mode27,
    _mode28,
    _mode29,
  ];
  _mode26.relevance = 0;
  _mode27.begin = r"\b(0b[01']+)";
  _mode28.begin = r"(-?)\b([\d']+(\.[\d']*)?|\.[\d']+)(u|U|l|L|ul|UL|f|F|b|B)";
  _mode29.begin =
      r"(-?)(\b0[xX][a-fA-F0-9']+|(\b[\d']+(\.[\d']*)?|\.[\d']+)([eE][-+]?[\d']+)?)";
  _mode30.scope = r'comment';
  _mode30.begin = r'/\*';
  _mode30.end = r'\*/';
  _mode30.contains = [
    _mode4,
    _mode5,
  ];
  _mode30.illegal = r'\n';
  _mode31.scope = r'string';
  _mode31.begin = r'@"';
  _mode31.end = r'"';
  _mode31.contains = [
    _mode23,
  ];
  _mode32.scope = r'title';
  _mode32.begin = r'[a-zA-Z](\.?\w)*';
  _mode32.relevance = 0;
  _mode33.begin = r'<';
  _mode33.end = r'>';
  _mode33.contains = [
    _mode34,
    _mode32,
  ];
  _mode34.beginKeywords = r'in out';
  return Mode(
    name: r'C#',
    aliases: [
      r'cs',
      r'c#',
    ],
    keywords: {
      r'keyword': [
        r'abstract',
        r'as',
        r'base',
        r'break',
        r'case',
        r'catch',
        r'class',
        r'const',
        r'continue',
        r'do',
        r'else',
        r'event',
        r'explicit',
        r'extern',
        r'finally',
        r'fixed',
        r'for',
        r'foreach',
        r'goto',
        r'if',
        r'implicit',
        r'in',
        r'interface',
        r'internal',
        r'is',
        r'lock',
        r'namespace',
        r'new',
        r'operator',
        r'out',
        r'override',
        r'params',
        r'private',
        r'protected',
        r'public',
        r'readonly',
        r'record',
        r'ref',
        r'return',
        r'scoped',
        r'sealed',
        r'sizeof',
        r'stackalloc',
        r'static',
        r'struct',
        r'switch',
        r'this',
        r'throw',
        r'try',
        r'typeof',
        r'unchecked',
        r'unsafe',
        r'using',
        r'virtual',
        r'void',
        r'volatile',
        r'while',
        r'add',
        r'alias',
        r'and',
        r'ascending',
        r'args',
        r'async',
        r'await',
        r'by',
        r'descending',
        r'dynamic',
        r'equals',
        r'file',
        r'from',
        r'get',
        r'global',
        r'group',
        r'init',
        r'into',
        r'join',
        r'let',
        r'nameof',
        r'not',
        r'notnull',
        r'on',
        r'or',
        r'orderby',
        r'partial',
        r'record',
        r'remove',
        r'required',
        r'scoped',
        r'select',
        r'set',
        r'unmanaged',
        r'value|0',
        r'var',
        r'when',
        r'where',
        r'with',
        r'yield',
      ],
      r'built_in': [
        r'bool',
        r'byte',
        r'char',
        r'decimal',
        r'delegate',
        r'double',
        r'dynamic',
        r'enum',
        r'float',
        r'int',
        r'long',
        r'nint',
        r'nuint',
        r'object',
        r'sbyte',
        r'short',
        r'string',
        r'ulong',
        r'uint',
        r'ushort',
      ],
      r'literal': [
        r'default',
        r'false',
        r'null',
        r'true',
      ],
    },
    illegal: r'::',
    contains: [
      Mode(
        scope: r'comment',
        begin: r'///',
        end: r'$',
        contains: [
          Mode(
            scope: r'doctag',
            variants: [
              Mode(
                begin: r'///',
                relevance: 0,
              ),
              Mode(
                begin: r'<!--|-->',
              ),
              Mode(
                begin: r'</?',
                end: r'>',
              ),
            ],
          ),
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
        returnBegin: true,
      ),
      _mode0,
      _mode3,
      Mode(
        scope: r'meta',
        begin: r'#',
        end: r'$',
        keywords: {
          r'keyword':
              r'if else elif endif define undef warning error line region endregion pragma checksum',
        },
      ),
      _mode6,
      _mode26,
      Mode(
        beginKeywords: r'class interface',
        relevance: 0,
        end: r'[{;=]',
        illegal: r'[^\s:,]',
        contains: [
          Mode(
            beginKeywords: r'where class',
          ),
          _mode32,
          _mode33,
          _mode0,
          _mode3,
        ],
      ),
      Mode(
        beginKeywords: r'namespace',
        relevance: 0,
        end: r'[{;=]',
        illegal: r'[^\s:]',
        contains: [
          _mode32,
          _mode0,
          _mode3,
        ],
      ),
      Mode(
        beginKeywords: r'record',
        relevance: 0,
        end: r'[{;=]',
        illegal: r'[^\s:]',
        contains: [
          _mode32,
          _mode33,
          _mode0,
          _mode3,
        ],
      ),
      Mode(
        scope: r'meta',
        begin: r'^\s*\[(?=[\w])',
        excludeBegin: true,
        end: r'\]',
        excludeEnd: true,
        contains: [
          Mode(
            scope: r'string',
            begin: r'"',
            end: r'"',
          ),
        ],
      ),
      Mode(
        beginKeywords: r'new return throw await else',
        relevance: 0,
      ),
      Mode(
        scope: r'function',
        begin:
            r'([a-zA-Z]\w*(<[a-zA-Z]\w*(\s*,\s*[a-zA-Z]\w*)*>)?(\[\])?\s+)+[a-zA-Z]\w*\s*(<[^=]+>\s*)?\(',
        returnBegin: true,
        end: r'\s*[{;=]',
        excludeEnd: true,
        keywords: {
          r'keyword': [
            r'abstract',
            r'as',
            r'base',
            r'break',
            r'case',
            r'catch',
            r'class',
            r'const',
            r'continue',
            r'do',
            r'else',
            r'event',
            r'explicit',
            r'extern',
            r'finally',
            r'fixed',
            r'for',
            r'foreach',
            r'goto',
            r'if',
            r'implicit',
            r'in',
            r'interface',
            r'internal',
            r'is',
            r'lock',
            r'namespace',
            r'new',
            r'operator',
            r'out',
            r'override',
            r'params',
            r'private',
            r'protected',
            r'public',
            r'readonly',
            r'record',
            r'ref',
            r'return',
            r'scoped',
            r'sealed',
            r'sizeof',
            r'stackalloc',
            r'static',
            r'struct',
            r'switch',
            r'this',
            r'throw',
            r'try',
            r'typeof',
            r'unchecked',
            r'unsafe',
            r'using',
            r'virtual',
            r'void',
            r'volatile',
            r'while',
            r'add',
            r'alias',
            r'and',
            r'ascending',
            r'args',
            r'async',
            r'await',
            r'by',
            r'descending',
            r'dynamic',
            r'equals',
            r'file',
            r'from',
            r'get',
            r'global',
            r'group',
            r'init',
            r'into',
            r'join',
            r'let',
            r'nameof',
            r'not',
            r'notnull',
            r'on',
            r'or',
            r'orderby',
            r'partial',
            r'record',
            r'remove',
            r'required',
            r'scoped',
            r'select',
            r'set',
            r'unmanaged',
            r'value|0',
            r'var',
            r'when',
            r'where',
            r'with',
            r'yield',
          ],
          r'built_in': [
            r'bool',
            r'byte',
            r'char',
            r'decimal',
            r'delegate',
            r'double',
            r'dynamic',
            r'enum',
            r'float',
            r'int',
            r'long',
            r'nint',
            r'nuint',
            r'object',
            r'sbyte',
            r'short',
            r'string',
            r'ulong',
            r'uint',
            r'ushort',
          ],
          r'literal': [
            r'default',
            r'false',
            r'null',
            r'true',
          ],
        },
        contains: [
          Mode(
            beginKeywords:
                r'public private protected static internal protected abstract async extern override unsafe virtual new sealed partial',
            relevance: 0,
          ),
          Mode(
            begin: r'[a-zA-Z]\w*\s*(<[^=]+>\s*)?\(',
            returnBegin: true,
            contains: [
              Mode(
                scope: r'title',
                begin: r'[a-zA-Z]\w*',
                relevance: 0,
              ),
              _mode33,
            ],
            relevance: 0,
          ),
          Mode(
            match: r'\(\)',
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            excludeBegin: true,
            excludeEnd: true,
            keywords: {
              r'keyword': [
                r'abstract',
                r'as',
                r'base',
                r'break',
                r'case',
                r'catch',
                r'class',
                r'const',
                r'continue',
                r'do',
                r'else',
                r'event',
                r'explicit',
                r'extern',
                r'finally',
                r'fixed',
                r'for',
                r'foreach',
                r'goto',
                r'if',
                r'implicit',
                r'in',
                r'interface',
                r'internal',
                r'is',
                r'lock',
                r'namespace',
                r'new',
                r'operator',
                r'out',
                r'override',
                r'params',
                r'private',
                r'protected',
                r'public',
                r'readonly',
                r'record',
                r'ref',
                r'return',
                r'scoped',
                r'sealed',
                r'sizeof',
                r'stackalloc',
                r'static',
                r'struct',
                r'switch',
                r'this',
                r'throw',
                r'try',
                r'typeof',
                r'unchecked',
                r'unsafe',
                r'using',
                r'virtual',
                r'void',
                r'volatile',
                r'while',
                r'add',
                r'alias',
                r'and',
                r'ascending',
                r'args',
                r'async',
                r'await',
                r'by',
                r'descending',
                r'dynamic',
                r'equals',
                r'file',
                r'from',
                r'get',
                r'global',
                r'group',
                r'init',
                r'into',
                r'join',
                r'let',
                r'nameof',
                r'not',
                r'notnull',
                r'on',
                r'or',
                r'orderby',
                r'partial',
                r'record',
                r'remove',
                r'required',
                r'scoped',
                r'select',
                r'set',
                r'unmanaged',
                r'value|0',
                r'var',
                r'when',
                r'where',
                r'with',
                r'yield',
              ],
              r'built_in': [
                r'bool',
                r'byte',
                r'char',
                r'decimal',
                r'delegate',
                r'double',
                r'dynamic',
                r'enum',
                r'float',
                r'int',
                r'long',
                r'nint',
                r'nuint',
                r'object',
                r'sbyte',
                r'short',
                r'string',
                r'ulong',
                r'uint',
                r'ushort',
              ],
              r'literal': [
                r'default',
                r'false',
                r'null',
                r'true',
              ],
            },
            relevance: 0,
            contains: [
              _mode6,
              _mode26,
              _mode3,
            ],
          ),
          _mode0,
          _mode3,
        ],
      ),
      Mode(
        begin: r'@[a-zA-Z]\w*',
        relevance: 0,
      ),
    ],
  );
}
