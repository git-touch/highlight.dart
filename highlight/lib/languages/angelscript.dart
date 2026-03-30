// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `angelscript`.
Mode angelscript(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  mode0.begin = r'\\[\s\S]';
  mode0.relevance = 0;
  mode1.scope = r'built_in';
  mode1.begin =
      r'\b(void|bool|int8|int16|int32|int64|int|uint8|uint16|uint32|uint64|uint|string|ref|array|double|float|auto|dictionary)';
  mode1.contains = [mode2];
  mode2.scope = r'keyword';
  mode2.begin = r'<';
  mode2.end = r'>';
  mode2.contains = [mode1, mode3];
  mode3.scope = r'symbol';
  mode3.begin = r'[a-zA-Z0-9_]+@';
  mode3.contains = [mode2];
  return Mode(
    name: r'AngelScript',
    aliases: [r'asc'],
    keywords: [
      r'for',
      r'in|0',
      r'break',
      r'continue',
      r'while',
      r'do|0',
      r'return',
      r'if',
      r'else',
      r'case',
      r'switch',
      r'namespace',
      r'is',
      r'cast',
      r'or',
      r'and',
      r'xor',
      r'not',
      r'get|0',
      r'in',
      r'inout|10',
      r'out',
      r'override',
      r'set|0',
      r'private',
      r'public',
      r'const',
      r'default|0',
      r'final',
      r'shared',
      r'external',
      r'mixin|10',
      r'enum',
      r'typedef',
      r'funcdef',
      r'this',
      r'super',
      r'import',
      r'from',
      r'interface',
      r'abstract|0',
      r'try',
      r'catch',
      r'protected',
      r'explicit',
      r'property',
    ],
    illegal: r'(^using\s+[A-Za-z0-9_\.]+;$|\bfunction\s*[^\(])',
    contains: [
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [mode0],
        relevance: 0,
      ),
      Mode(scope: r'string', begin: r'"""', end: r'"""'),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [mode0],
        relevance: 0,
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
      Mode(scope: r'string', begin: r'^\s*\[', end: r'\]'),
      Mode(
        beginKeywords: r'interface namespace',
        end: r'\{',
        illegal: r'[;.\-]',
        contains: [Mode(scope: r'symbol', begin: r'[a-zA-Z0-9_]+')],
      ),
      Mode(
        beginKeywords: r'class',
        end: r'\{',
        illegal: r'[;.\-]',
        contains: [
          Mode(
            scope: r'symbol',
            begin: r'[a-zA-Z0-9_]+',
            contains: [
              Mode(
                begin: r'[:,]\s*',
                contains: [Mode(scope: r'symbol', begin: r'[a-zA-Z0-9_]+')],
              ),
            ],
          ),
        ],
      ),
      mode1,
      mode3,
      Mode(scope: r'literal', begin: r'\b(null|true|false)'),
      Mode(
        scope: r'number',
        relevance: 0,
        begin:
            r'(-?)(\b0[xXbBoOdD][a-fA-F0-9]+|(\b\d+(\.\d*)?f?|\.\d+f?)([eE][-+]?\d+f?)?)',
      ),
    ],
  );
}
