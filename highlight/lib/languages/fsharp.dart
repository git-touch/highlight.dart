// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `fsharp`.
Mode fsharp(Highlight hljs) {
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
  mode0.scope = r'keyword';
  mode0.match = r'\b(yield|return|let|do|match|use)!';
  mode1.scope = r'subst';
  mode1.begin = r'\{';
  mode1.end = r'\}';
  mode1.keywords = {
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
  mode1.contains = [
    mode2,
    mode7,
    mode10,
    mode12,
    mode13,
    mode0,
    mode14,
    mode21,
    mode22,
    mode28,
    mode29,
    mode30,
    mode23,
    mode33,
  ];
  mode2.scope = r'string';
  mode2.begin = r'(\$@|@\$)"';
  mode2.end = r'"';
  mode2.contains = [mode3, mode4, mode5, mode6, mode1];
  mode3.match = r'\{\{';
  mode4.match = r'\}\}';
  mode5.match = r'""';
  mode6.begin = r'\\[\s\S]';
  mode6.relevance = 0;
  mode7.scope = r'string';
  mode7.begin = r'\$"';
  mode7.end = r'"';
  mode7.contains = [mode8, mode9, mode6, mode1];
  mode8.match = r'\{\{';
  mode9.match = r'\}\}';
  mode10.scope = r'string';
  mode10.begin = r'@"';
  mode10.end = r'"';
  mode10.contains = [mode11, mode6];
  mode11.match = r'""';
  mode12.scope = r'string';
  mode12.begin = r'"';
  mode12.end = r'"';
  mode12.contains = [mode6];
  mode13.scope = r'string';
  mode13.match =
      r"'(?:[^\\']|\\(?:.|\d{3}|x[a-fA-F\d]{2}|u[a-fA-F\d]{4}|U[a-fA-F\d]{8}))'";
  mode14.variants = [mode15, mode18];
  mode15.scope = r'comment';
  mode15.begin = r'\(\*(?!\))';
  mode15.end = r'\*\)';
  mode15.contains = [r'self', mode16, mode17];
  mode16.scope = r'doctag';
  mode16.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode16.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode16.excludeBegin = true;
  mode16.relevance = 0;
  mode17.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode18.scope = r'comment';
  mode18.begin = r'//';
  mode18.end = r'$';
  mode18.contains = [mode19, mode20];
  mode19.scope = r'doctag';
  mode19.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode19.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode19.excludeBegin = true;
  mode19.relevance = 0;
  mode20.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode21.scope = r'variable';
  mode21.begin = r'``';
  mode21.end = r'``';
  mode22.begin = r":(?=\s*(?:\w|'|\^|#|``|\(|{\|))";
  mode22.beginScope = r'operator';
  mode22.end = r'(?=(?:\n|=))';
  mode22.relevance = 0;
  mode22.keywords = {
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
  mode22.contains = [mode14, mode23, mode26, mode27];
  mode23.scope = r'symbol';
  mode23.variants = [mode24, mode25];
  mode23.relevance = 0;
  mode24.match = r"\B('|\^)``.*?``";
  mode25.match = r"\B('|\^)[a-zA-Z_]\w*";
  mode26.begin = r'``';
  mode26.end = r'``';
  mode27.scope = r'operator';
  mode27.match =
      r'(?:(?:(?:[!%&\*\+\-\/<>@\^\|~\?]|\.)(?=(?:[!%&\*\+\-\/<>@\^\|~\?]|\.))(?:[!%&\*\+\-\/<>@\^\|~\?]|\.)*|[!%&\*\+\-\/<>@\^\|~\?]+)|:\?>|:\?|:>|:=|::?|\$)';
  mode27.relevance = 0;
  mode28.scope = r'computation-expression';
  mode28.match = r'\b[_a-z]\w*(?=\s*\{)';
  mode29.begin = [
    r'^\s*',
    r'#(?:if|else|endif|line|nowarn|light|r|i|I|load|time|help|quit)',
    r'\b',
  ];
  mode29.beginScope = {2: r'meta'};
  mode29.end = r'(?=\s|$)';
  mode30.variants = [mode31, mode32];
  mode31.scope = r'number';
  mode31.begin = r'\b(0b[01]+)';
  mode31.relevance = 0;
  mode32.scope = r'number';
  mode32.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode32.relevance = 0;
  mode33.scope = r'operator';
  mode33.match =
      r'(?:(?:(?:[!%&\*\+\-\/<=>@\^\|~\?]|\.)(?=(?:[!%&\*\+\-\/<=>@\^\|~\?]|\.))(?:[!%&\*\+\-\/<=>@\^\|~\?]|\.)*|[!%&\*\+\-\/<=>@\^\|~\?]+)|:\?>|:\?|:>|:=|::?|\$)';
  mode33.relevance = 0;
  mode34.scope = r'string';
  mode34.begin = r'"""';
  mode34.end = r'"""';
  mode34.relevance = 2;
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
      mode0,
      Mode(
        variants: [
          Mode(
            scope: r'string',
            begin: r'\$"""',
            end: r'"""',
            contains: [
              Mode(match: r'\{\{'),
              Mode(match: r'\}\}'),
              mode1,
            ],
            relevance: 2,
          ),
          mode2,
          mode7,
          mode34,
          mode10,
          mode12,
          mode13,
        ],
      ),
      mode14,
      mode21,
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
          mode14,
          Mode(begin: r'``', end: r'``'),
          mode23,
          Mode(scope: r'operator', match: r'<|>'),
          mode22,
        ],
      ),
      Mode(
        scope: r'meta',
        begin: r'\[<',
        end: r'>\]',
        relevance: 2,
        contains: [mode21, mode34, mode10, mode12, mode13, mode30],
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
          mode14,
          mode23,
          Mode(begin: r'``', end: r'``'),
          mode27,
        ],
      ),
      mode22,
      mode28,
      mode29,
      mode30,
      mode23,
      mode33,
    ],
  );
}
