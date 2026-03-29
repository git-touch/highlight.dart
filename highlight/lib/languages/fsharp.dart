// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode fsharp(Highlight hljs) {
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
  _mode0.scope = r'keyword';
  _mode0.match = r'\b(yield|return|let|do|match|use)!';
  _mode1.scope = r'subst';
  _mode1.begin = r'\{';
  _mode1.end = r'\}';
  _mode1.keywords = {
    r'keyword': [
      r'abstract',
      r'and',
      r'as',
      r'assert',
      r'base',
      r'begin',
      r'class',
      r'default',
      r'delegate',
      r'do',
      r'done',
      r'downcast',
      r'downto',
      r'elif',
      r'else',
      r'end',
      r'exception',
      r'extern',
      r'finally',
      r'fixed',
      r'for',
      r'fun',
      r'function',
      r'global',
      r'if',
      r'in',
      r'inherit',
      r'inline',
      r'interface',
      r'internal',
      r'lazy',
      r'let',
      r'match',
      r'member',
      r'module',
      r'mutable',
      r'namespace',
      r'new',
      r'of',
      r'open',
      r'or',
      r'override',
      r'private',
      r'public',
      r'rec',
      r'return',
      r'static',
      r'struct',
      r'then',
      r'to',
      r'try',
      r'type',
      r'upcast',
      r'use',
      r'val',
      r'void',
      r'when',
      r'while',
      r'with',
      r'yield',
    ],
    r'literal': [
      r'true',
      r'false',
      r'null',
      r'Some',
      r'None',
      r'Ok',
      r'Error',
      r'infinity',
      r'infinityf',
      r'nan',
      r'nanf',
    ],
    r'built_in': [
      r'not',
      r'ref',
      r'raise',
      r'reraise',
      r'dict',
      r'readOnlyDict',
      r'set',
      r'get',
      r'enum',
      r'sizeof',
      r'typeof',
      r'typedefof',
      r'nameof',
      r'nullArg',
      r'invalidArg',
      r'invalidOp',
      r'id',
      r'fst',
      r'snd',
      r'ignore',
      r'lock',
      r'using',
      r'box',
      r'unbox',
      r'tryUnbox',
      r'printf',
      r'printfn',
      r'sprintf',
      r'eprintf',
      r'eprintfn',
      r'fprintf',
      r'fprintfn',
      r'failwith',
      r'failwithf',
    ],
    r'variable.constant': [
      r'__LINE__',
      r'__SOURCE_DIRECTORY__',
      r'__SOURCE_FILE__',
    ],
  };
  _mode1.contains = [
    _mode2,
    _mode7,
    _mode10,
    _mode12,
    _mode13,
    _mode0,
    _mode14,
    _mode21,
    _mode22,
    _mode28,
    _mode29,
    _mode30,
    _mode23,
    _mode33,
  ];
  _mode2.scope = r'string';
  _mode2.begin = r'(\$@|@\$)"';
  _mode2.end = r'"';
  _mode2.contains = [_mode3, _mode4, _mode5, _mode6, _mode1];
  _mode3.match = r'\{\{';
  _mode4.match = r'\}\}';
  _mode5.match = r'""';
  _mode6.begin = r'\\[\s\S]';
  _mode6.relevance = 0;
  _mode7.scope = r'string';
  _mode7.begin = r'\$"';
  _mode7.end = r'"';
  _mode7.contains = [_mode8, _mode9, _mode6, _mode1];
  _mode8.match = r'\{\{';
  _mode9.match = r'\}\}';
  _mode10.scope = r'string';
  _mode10.begin = r'@"';
  _mode10.end = r'"';
  _mode10.contains = [_mode11, _mode6];
  _mode11.match = r'""';
  _mode12.scope = r'string';
  _mode12.begin = r'"';
  _mode12.end = r'"';
  _mode12.contains = [_mode6];
  _mode13.scope = r'string';
  _mode13.match =
      r"'(?:[^\\']|\\(?:.|\d{3}|x[a-fA-F\d]{2}|u[a-fA-F\d]{4}|U[a-fA-F\d]{8}))'";
  _mode14.variants = [_mode15, _mode18];
  _mode15.scope = r'comment';
  _mode15.begin = r'\(\*(?!\))';
  _mode15.end = r'\*\)';
  _mode15.contains = [r'self', _mode16, _mode17];
  _mode16.scope = r'doctag';
  _mode16.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode16.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode16.excludeBegin = true;
  _mode16.relevance = 0;
  _mode17.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode18.scope = r'comment';
  _mode18.begin = r'//';
  _mode18.end = r'$';
  _mode18.contains = [_mode19, _mode20];
  _mode19.scope = r'doctag';
  _mode19.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode19.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode19.excludeBegin = true;
  _mode19.relevance = 0;
  _mode20.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode21.scope = r'variable';
  _mode21.begin = r'``';
  _mode21.end = r'``';
  _mode22.begin = r":(?=\s*(?:\w|'|\^|#|``|\(|{\|))";
  _mode22.beginScope = r'operator';
  _mode22.end = r'(?=(?:\n|=))';
  _mode22.relevance = 0;
  _mode22.keywords = {
    r'keyword': [
      r'abstract',
      r'and',
      r'as',
      r'assert',
      r'base',
      r'begin',
      r'class',
      r'default',
      r'delegate',
      r'do',
      r'done',
      r'downcast',
      r'downto',
      r'elif',
      r'else',
      r'end',
      r'exception',
      r'extern',
      r'finally',
      r'fixed',
      r'for',
      r'fun',
      r'function',
      r'global',
      r'if',
      r'in',
      r'inherit',
      r'inline',
      r'interface',
      r'internal',
      r'lazy',
      r'let',
      r'match',
      r'member',
      r'module',
      r'mutable',
      r'namespace',
      r'new',
      r'of',
      r'open',
      r'or',
      r'override',
      r'private',
      r'public',
      r'rec',
      r'return',
      r'static',
      r'struct',
      r'then',
      r'to',
      r'try',
      r'type',
      r'upcast',
      r'use',
      r'val',
      r'void',
      r'when',
      r'while',
      r'with',
      r'yield',
    ],
    r'literal': [
      r'true',
      r'false',
      r'null',
      r'Some',
      r'None',
      r'Ok',
      r'Error',
      r'infinity',
      r'infinityf',
      r'nan',
      r'nanf',
    ],
    r'built_in': [
      r'not',
      r'ref',
      r'raise',
      r'reraise',
      r'dict',
      r'readOnlyDict',
      r'set',
      r'get',
      r'enum',
      r'sizeof',
      r'typeof',
      r'typedefof',
      r'nameof',
      r'nullArg',
      r'invalidArg',
      r'invalidOp',
      r'id',
      r'fst',
      r'snd',
      r'ignore',
      r'lock',
      r'using',
      r'box',
      r'unbox',
      r'tryUnbox',
      r'printf',
      r'printfn',
      r'sprintf',
      r'eprintf',
      r'eprintfn',
      r'fprintf',
      r'fprintfn',
      r'failwith',
      r'failwithf',
    ],
    r'variable.constant': [
      r'__LINE__',
      r'__SOURCE_DIRECTORY__',
      r'__SOURCE_FILE__',
    ],
    r'type': [
      r'bool',
      r'byte',
      r'sbyte',
      r'int8',
      r'int16',
      r'int32',
      r'uint8',
      r'uint16',
      r'uint32',
      r'int',
      r'uint',
      r'int64',
      r'uint64',
      r'nativeint',
      r'unativeint',
      r'decimal',
      r'float',
      r'double',
      r'float32',
      r'single',
      r'char',
      r'string',
      r'unit',
      r'bigint',
      r'option',
      r'voption',
      r'list',
      r'array',
      r'seq',
      r'byref',
      r'exn',
      r'inref',
      r'nativeptr',
      r'obj',
      r'outref',
      r'voidptr',
      r'Result',
    ],
  };
  _mode22.contains = [_mode14, _mode23, _mode26, _mode27];
  _mode23.scope = r'symbol';
  _mode23.variants = [_mode24, _mode25];
  _mode23.relevance = 0;
  _mode24.match = r"\B('|\^)``.*?``";
  _mode25.match = r"\B('|\^)[a-zA-Z_]\w*";
  _mode26.begin = r'``';
  _mode26.end = r'``';
  _mode27.scope = r'operator';
  _mode27.match =
      r'(?:(?:(?:[!%&\*\+\-\/<>@\^\|~\?]|\.)(?=(?:[!%&\*\+\-\/<>@\^\|~\?]|\.))(?:[!%&\*\+\-\/<>@\^\|~\?]|\.)*|[!%&\*\+\-\/<>@\^\|~\?]+)|:\?>|:\?|:>|:=|::?|\$)';
  _mode27.relevance = 0;
  _mode28.scope = r'computation-expression';
  _mode28.match = r'\b[_a-z]\w*(?=\s*\{)';
  _mode29.begin = [
    r'^\s*',
    r'#(?:if|else|endif|line|nowarn|light|r|i|I|load|time|help|quit)',
    r'\b',
  ];
  _mode29.beginScope = {2: r'meta'};
  _mode29.end = r'(?=\s|$)';
  _mode30.variants = [_mode31, _mode32];
  _mode31.scope = r'number';
  _mode31.begin = r'\b(0b[01]+)';
  _mode31.relevance = 0;
  _mode32.scope = r'number';
  _mode32.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode32.relevance = 0;
  _mode33.scope = r'operator';
  _mode33.match =
      r'(?:(?:(?:[!%&\*\+\-\/<=>@\^\|~\?]|\.)(?=(?:[!%&\*\+\-\/<=>@\^\|~\?]|\.))(?:[!%&\*\+\-\/<=>@\^\|~\?]|\.)*|[!%&\*\+\-\/<=>@\^\|~\?]+)|:\?>|:\?|:>|:=|::?|\$)';
  _mode33.relevance = 0;
  _mode34.scope = r'string';
  _mode34.begin = r'"""';
  _mode34.end = r'"""';
  _mode34.relevance = 2;
  return Mode(
    name: r'F#',
    aliases: [r'fs', r'f#'],
    keywords: {
      r'keyword': [
        r'abstract',
        r'and',
        r'as',
        r'assert',
        r'base',
        r'begin',
        r'class',
        r'default',
        r'delegate',
        r'do',
        r'done',
        r'downcast',
        r'downto',
        r'elif',
        r'else',
        r'end',
        r'exception',
        r'extern',
        r'finally',
        r'fixed',
        r'for',
        r'fun',
        r'function',
        r'global',
        r'if',
        r'in',
        r'inherit',
        r'inline',
        r'interface',
        r'internal',
        r'lazy',
        r'let',
        r'match',
        r'member',
        r'module',
        r'mutable',
        r'namespace',
        r'new',
        r'of',
        r'open',
        r'or',
        r'override',
        r'private',
        r'public',
        r'rec',
        r'return',
        r'static',
        r'struct',
        r'then',
        r'to',
        r'try',
        r'type',
        r'upcast',
        r'use',
        r'val',
        r'void',
        r'when',
        r'while',
        r'with',
        r'yield',
      ],
      r'literal': [
        r'true',
        r'false',
        r'null',
        r'Some',
        r'None',
        r'Ok',
        r'Error',
        r'infinity',
        r'infinityf',
        r'nan',
        r'nanf',
      ],
      r'built_in': [
        r'not',
        r'ref',
        r'raise',
        r'reraise',
        r'dict',
        r'readOnlyDict',
        r'set',
        r'get',
        r'enum',
        r'sizeof',
        r'typeof',
        r'typedefof',
        r'nameof',
        r'nullArg',
        r'invalidArg',
        r'invalidOp',
        r'id',
        r'fst',
        r'snd',
        r'ignore',
        r'lock',
        r'using',
        r'box',
        r'unbox',
        r'tryUnbox',
        r'printf',
        r'printfn',
        r'sprintf',
        r'eprintf',
        r'eprintfn',
        r'fprintf',
        r'fprintfn',
        r'failwith',
        r'failwithf',
      ],
      r'variable.constant': [
        r'__LINE__',
        r'__SOURCE_DIRECTORY__',
        r'__SOURCE_FILE__',
      ],
    },
    illegal: r'\/\*',
    classNameAliases: {r'computation-expression': r'keyword'},
    contains: [
      _mode0,
      Mode(
        variants: [
          Mode(
            scope: r'string',
            begin: r'\$"""',
            end: r'"""',
            contains: [
              Mode(match: r'\{\{'),
              Mode(match: r'\}\}'),
              _mode1,
            ],
            relevance: 2,
          ),
          _mode2,
          _mode7,
          _mode34,
          _mode10,
          _mode12,
          _mode13,
        ],
      ),
      _mode14,
      _mode21,
      Mode(
        begin: [r'(^|\s+)', r'type', r'\s+', r"[a-zA-Z_](\w|')*"],
        beginScope: {2: r'keyword', 4: r'title.class'},
        end: r'(?=\(|=|$)',
        keywords: {
          r'keyword': [
            r'abstract',
            r'and',
            r'as',
            r'assert',
            r'base',
            r'begin',
            r'class',
            r'default',
            r'delegate',
            r'do',
            r'done',
            r'downcast',
            r'downto',
            r'elif',
            r'else',
            r'end',
            r'exception',
            r'extern',
            r'finally',
            r'fixed',
            r'for',
            r'fun',
            r'function',
            r'global',
            r'if',
            r'in',
            r'inherit',
            r'inline',
            r'interface',
            r'internal',
            r'lazy',
            r'let',
            r'match',
            r'member',
            r'module',
            r'mutable',
            r'namespace',
            r'new',
            r'of',
            r'open',
            r'or',
            r'override',
            r'private',
            r'public',
            r'rec',
            r'return',
            r'static',
            r'struct',
            r'then',
            r'to',
            r'try',
            r'type',
            r'upcast',
            r'use',
            r'val',
            r'void',
            r'when',
            r'while',
            r'with',
            r'yield',
          ],
          r'literal': [
            r'true',
            r'false',
            r'null',
            r'Some',
            r'None',
            r'Ok',
            r'Error',
            r'infinity',
            r'infinityf',
            r'nan',
            r'nanf',
          ],
          r'built_in': [
            r'not',
            r'ref',
            r'raise',
            r'reraise',
            r'dict',
            r'readOnlyDict',
            r'set',
            r'get',
            r'enum',
            r'sizeof',
            r'typeof',
            r'typedefof',
            r'nameof',
            r'nullArg',
            r'invalidArg',
            r'invalidOp',
            r'id',
            r'fst',
            r'snd',
            r'ignore',
            r'lock',
            r'using',
            r'box',
            r'unbox',
            r'tryUnbox',
            r'printf',
            r'printfn',
            r'sprintf',
            r'eprintf',
            r'eprintfn',
            r'fprintf',
            r'fprintfn',
            r'failwith',
            r'failwithf',
          ],
          r'variable.constant': [
            r'__LINE__',
            r'__SOURCE_DIRECTORY__',
            r'__SOURCE_FILE__',
          ],
        },
        contains: [
          _mode14,
          Mode(begin: r'``', end: r'``'),
          _mode23,
          Mode(scope: r'operator', match: r'<|>'),
          _mode22,
        ],
      ),
      Mode(
        scope: r'meta',
        begin: r'\[<',
        end: r'>\]',
        relevance: 2,
        contains: [_mode21, _mode34, _mode10, _mode12, _mode13, _mode30],
      ),
      Mode(
        begin: r"\bof\b(?=\s*(?:\w|'|\^|#|``|\(|{\|))",
        beginScope: r'keyword',
        end: r'(?=(?:\n|=))',
        relevance: 0,
        keywords: {
          r'keyword': [
            r'abstract',
            r'and',
            r'as',
            r'assert',
            r'base',
            r'begin',
            r'class',
            r'default',
            r'delegate',
            r'do',
            r'done',
            r'downcast',
            r'downto',
            r'elif',
            r'else',
            r'end',
            r'exception',
            r'extern',
            r'finally',
            r'fixed',
            r'for',
            r'fun',
            r'function',
            r'global',
            r'if',
            r'in',
            r'inherit',
            r'inline',
            r'interface',
            r'internal',
            r'lazy',
            r'let',
            r'match',
            r'member',
            r'module',
            r'mutable',
            r'namespace',
            r'new',
            r'of',
            r'open',
            r'or',
            r'override',
            r'private',
            r'public',
            r'rec',
            r'return',
            r'static',
            r'struct',
            r'then',
            r'to',
            r'try',
            r'type',
            r'upcast',
            r'use',
            r'val',
            r'void',
            r'when',
            r'while',
            r'with',
            r'yield',
          ],
          r'literal': [
            r'true',
            r'false',
            r'null',
            r'Some',
            r'None',
            r'Ok',
            r'Error',
            r'infinity',
            r'infinityf',
            r'nan',
            r'nanf',
          ],
          r'built_in': [
            r'not',
            r'ref',
            r'raise',
            r'reraise',
            r'dict',
            r'readOnlyDict',
            r'set',
            r'get',
            r'enum',
            r'sizeof',
            r'typeof',
            r'typedefof',
            r'nameof',
            r'nullArg',
            r'invalidArg',
            r'invalidOp',
            r'id',
            r'fst',
            r'snd',
            r'ignore',
            r'lock',
            r'using',
            r'box',
            r'unbox',
            r'tryUnbox',
            r'printf',
            r'printfn',
            r'sprintf',
            r'eprintf',
            r'eprintfn',
            r'fprintf',
            r'fprintfn',
            r'failwith',
            r'failwithf',
          ],
          r'variable.constant': [
            r'__LINE__',
            r'__SOURCE_DIRECTORY__',
            r'__SOURCE_FILE__',
          ],
          r'type': [
            r'bool',
            r'byte',
            r'sbyte',
            r'int8',
            r'int16',
            r'int32',
            r'uint8',
            r'uint16',
            r'uint32',
            r'int',
            r'uint',
            r'int64',
            r'uint64',
            r'nativeint',
            r'unativeint',
            r'decimal',
            r'float',
            r'double',
            r'float32',
            r'single',
            r'char',
            r'string',
            r'unit',
            r'bigint',
            r'option',
            r'voption',
            r'list',
            r'array',
            r'seq',
            r'byref',
            r'exn',
            r'inref',
            r'nativeptr',
            r'obj',
            r'outref',
            r'voidptr',
            r'Result',
          ],
        },
        contains: [
          _mode14,
          _mode23,
          Mode(begin: r'``', end: r'``'),
          _mode27,
        ],
      ),
      _mode22,
      _mode28,
      _mode29,
      _mode30,
      _mode23,
      _mode33,
    ],
  );
}
