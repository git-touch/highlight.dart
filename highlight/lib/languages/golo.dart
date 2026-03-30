// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `golo`.
Mode golo(Highlight hljs) {
  return Mode(
    name: r'Golo',
    keywords: {
      r'keyword': [
        r'println',
        r'readln',
        r'print',
        r'import',
        r'module',
        r'function',
        r'local',
        r'return',
        r'let',
        r'var',
        r'while',
        r'for',
        r'foreach',
        r'times',
        r'in',
        r'case',
        r'when',
        r'match',
        r'with',
        r'break',
        r'continue',
        r'augment',
        r'augmentation',
        r'each',
        r'find',
        r'filter',
        r'reduce',
        r'if',
        r'then',
        r'else',
        r'otherwise',
        r'try',
        r'catch',
        r'finally',
        r'raise',
        r'throw',
        r'orIfNull',
        r'DynamicObject|10',
        r'DynamicVariable',
        r'struct',
        r'Observable',
        r'map',
        r'set',
        r'vector',
        r'list',
        r'array',
      ],
      r'literal': [r'true', r'false', r'null'],
    },
    contains: [
      Mode(
        scope: r'comment',
        begin: r'#',
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
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(scope: r'meta', begin: r'@[A-Za-z]+'),
    ],
  );
}
