// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `flix`.
Mode flix(Highlight hljs) {
  return Mode(
    name: r'Flix',
    keywords: {
      r'keyword': [
        r'case',
        r'class',
        r'def',
        r'else',
        r'enum',
        r'if',
        r'impl',
        r'import',
        r'in',
        r'lat',
        r'rel',
        r'index',
        r'let',
        r'match',
        r'namespace',
        r'switch',
        r'type',
        r'yield',
        r'with',
      ],
      r'literal': [r'true', r'false'],
    },
    contains: [
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
      Mode(scope: r'string', begin: r"'(.|\\[xXuU][a-zA-Z0-9]+)'"),
      Mode(
        scope: r'string',
        variants: [Mode(begin: r'"', end: r'"')],
      ),
      Mode(
        scope: r'function',
        beginKeywords: r'def',
        end: r'[:={\[(\n;]',
        excludeEnd: true,
        contains: [
          Mode(
            scope: r'title',
            relevance: 0,
            begin:
                '[^0-9\\n\\t "\'(),.`{}\\[\\]:;][^\\n\\t "\'(),.`{}\\[\\]:;]+|[^0-9\\n\\t "\'(),.`{}\\[\\]:;=]',
          ),
        ],
      ),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
    ],
  );
}
