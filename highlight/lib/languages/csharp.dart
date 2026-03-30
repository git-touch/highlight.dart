// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `csharp`.
Mode csharp(Highlight hljs) {
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
  final Mode mode31 = Mode();
  final Mode mode32 = Mode();
  final Mode mode33 = Mode();
  final Mode mode34 = Mode();
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
  mode6.variants = [mode7, mode8, mode13, mode31, mode24, mode25];
  mode7.scope = r'string';
  mode7.begin = r'"""("*)(?!")(.|\n)*?"""\1';
  mode7.relevance = 1;
  mode8.scope = r'string';
  mode8.begin = r'\$@"';
  mode8.end = r'"';
  mode8.contains = [mode9, mode10, mode11, mode12];
  mode9.begin = r'\{\{';
  mode10.begin = r'\}\}';
  mode11.begin = r'""';
  mode12.scope = r'subst';
  mode12.begin = r'\{';
  mode12.end = r'\}';
  mode12.keywords = {
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
    r'literal': [r'default', r'false', r'null', r'true'],
  };
  mode12.contains = [mode8, mode13, mode31, mode24, mode25, mode26, mode3];
  mode13.scope = r'string';
  mode13.begin = r'\$"';
  mode13.end = r'"';
  mode13.illegal = r'\n';
  mode13.contains = [mode14, mode15, mode16, mode17];
  mode14.begin = r'\{\{';
  mode15.begin = r'\}\}';
  mode16.begin = r'\\[\s\S]';
  mode16.relevance = 0;
  mode17.scope = r'subst';
  mode17.begin = r'\{';
  mode17.end = r'\}';
  mode17.keywords = {
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
    r'literal': [r'default', r'false', r'null', r'true'],
  };
  mode17.illegal = r'\n';
  mode17.contains = [mode18, mode13, mode22, mode24, mode25, mode26, mode30];
  mode18.scope = r'string';
  mode18.begin = r'\$@"';
  mode18.end = r'"';
  mode18.contains = [mode19, mode20, mode21, mode17];
  mode18.illegal = r'\n';
  mode19.begin = r'\{\{';
  mode20.begin = r'\}\}';
  mode21.begin = r'""';
  mode22.scope = r'string';
  mode22.begin = r'@"';
  mode22.end = r'"';
  mode22.contains = [mode23];
  mode22.illegal = r'\n';
  mode23.begin = r'""';
  mode24.scope = r'string';
  mode24.begin = r"'";
  mode24.end = r"'";
  mode24.illegal = r'\n';
  mode24.contains = [mode16];
  mode25.scope = r'string';
  mode25.begin = r'"';
  mode25.end = r'"';
  mode25.illegal = r'\n';
  mode25.contains = [mode16];
  mode26.scope = r'number';
  mode26.variants = [mode27, mode28, mode29];
  mode26.relevance = 0;
  mode27.begin = r"\b(0b[01']+)";
  mode28.begin = r"(-?)\b([\d']+(\.[\d']*)?|\.[\d']+)(u|U|l|L|ul|UL|f|F|b|B)";
  mode29.begin =
      r"(-?)(\b0[xX][a-fA-F0-9']+|(\b[\d']+(\.[\d']*)?|\.[\d']+)([eE][-+]?[\d']+)?)";
  mode30.scope = r'comment';
  mode30.begin = r'/\*';
  mode30.end = r'\*/';
  mode30.contains = [mode4, mode5];
  mode30.illegal = r'\n';
  mode31.scope = r'string';
  mode31.begin = r'@"';
  mode31.end = r'"';
  mode31.contains = [mode23];
  mode32.scope = r'title';
  mode32.begin = r'[a-zA-Z](\.?\w)*';
  mode32.relevance = 0;
  mode33.begin = r'<';
  mode33.end = r'>';
  mode33.contains = [mode34, mode32];
  mode34.beginKeywords = r'in out';
  return Mode(
    name: r'C#',
    aliases: [r'cs', r'c#'],
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
      r'literal': [r'default', r'false', r'null', r'true'],
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
              Mode(begin: r'///', relevance: 0),
              Mode(begin: r'<!--|-->'),
              Mode(begin: r'</?', end: r'>'),
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
      mode0,
      mode3,
      Mode(
        scope: r'meta',
        begin: r'#',
        end: r'$',
        keywords: {
          r'keyword':
              r'if else elif endif define undef warning error line region endregion pragma checksum',
        },
      ),
      mode6,
      mode26,
      Mode(
        beginKeywords: r'class interface',
        relevance: 0,
        end: r'[{;=]',
        illegal: r'[^\s:,]',
        contains: [
          Mode(beginKeywords: r'where class'),
          mode32,
          mode33,
          mode0,
          mode3,
        ],
      ),
      Mode(
        beginKeywords: r'namespace',
        relevance: 0,
        end: r'[{;=]',
        illegal: r'[^\s:]',
        contains: [mode32, mode0, mode3],
      ),
      Mode(
        beginKeywords: r'record',
        relevance: 0,
        end: r'[{;=]',
        illegal: r'[^\s:]',
        contains: [mode32, mode33, mode0, mode3],
      ),
      Mode(
        scope: r'meta',
        begin: r'^\s*\[(?=[\w])',
        excludeBegin: true,
        end: r'\]',
        excludeEnd: true,
        contains: [Mode(scope: r'string', begin: r'"', end: r'"')],
      ),
      Mode(beginKeywords: r'new return throw await else', relevance: 0),
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
          r'literal': [r'default', r'false', r'null', r'true'],
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
              Mode(scope: r'title', begin: r'[a-zA-Z]\w*', relevance: 0),
              mode33,
            ],
            relevance: 0,
          ),
          Mode(match: r'\(\)'),
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
              r'literal': [r'default', r'false', r'null', r'true'],
            },
            relevance: 0,
            contains: [mode6, mode26, mode3],
          ),
          mode0,
          mode3,
        ],
      ),
      Mode(begin: r'@[a-zA-Z]\w*', relevance: 0),
    ],
  );
}
