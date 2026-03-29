// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode angelscript(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  _mode0.begin = r'\\[\s\S]';
  _mode0.relevance = 0;
  _mode1.scope = r'built_in';
  _mode1.begin =
      r'\b(void|bool|int8|int16|int32|int64|int|uint8|uint16|uint32|uint64|uint|string|ref|array|double|float|auto|dictionary)';
  _mode1.contains = [
    _mode2,
  ];
  _mode2.scope = r'keyword';
  _mode2.begin = r'<';
  _mode2.end = r'>';
  _mode2.contains = [
    _mode1,
    _mode3,
  ];
  _mode3.scope = r'symbol';
  _mode3.begin = r'[a-zA-Z0-9_]+@';
  _mode3.contains = [
    _mode2,
  ];
  return Mode(
    name: r'AngelScript',
    aliases: [
      r'asc',
    ],
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
        contains: [
          _mode0,
        ],
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        begin: r'"""',
        end: r'"""',
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [
          _mode0,
        ],
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
      Mode(
        scope: r'string',
        begin: r'^\s*\[',
        end: r'\]',
      ),
      Mode(
        beginKeywords: r'interface namespace',
        end: r'\{',
        illegal: r'[;.\-]',
        contains: [
          Mode(
            scope: r'symbol',
            begin: r'[a-zA-Z0-9_]+',
          ),
        ],
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
                contains: [
                  Mode(
                    scope: r'symbol',
                    begin: r'[a-zA-Z0-9_]+',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      _mode1,
      _mode3,
      Mode(
        scope: r'literal',
        begin: r'\b(null|true|false)',
      ),
      Mode(
        scope: r'number',
        relevance: 0,
        begin:
            r'(-?)(\b0[xXbBoOdD][a-fA-F0-9]+|(\b\d+(\.\d*)?f?|\.\d+f?)([eE][-+]?\d+f?)?)',
      ),
    ],
  );
}
