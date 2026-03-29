// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode ceylon(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  _mode0.scope = r'string';
  _mode0.begin = r'"""';
  _mode0.end = r'"""';
  _mode0.relevance = 10;
  _mode1.scope = r'string';
  _mode1.begin = r'"';
  _mode1.end = r'"';
  _mode1.contains = [
    Mode(
      scope: r'subst',
      excludeBegin: true,
      excludeEnd: true,
      begin: r'``',
      end: r'``',
      keywords: [
        r'assembly',
        r'module',
        r'package',
        r'import',
        r'alias',
        r'class',
        r'interface',
        r'object',
        r'given',
        r'value',
        r'assign',
        r'void',
        r'function',
        r'new',
        r'of',
        r'extends',
        r'satisfies',
        r'abstracts',
        r'in',
        r'out',
        r'return',
        r'break',
        r'continue',
        r'throw',
        r'assert',
        r'dynamic',
        r'if',
        r'else',
        r'switch',
        r'case',
        r'for',
        r'while',
        r'try',
        r'catch',
        r'finally',
        r'then',
        r'let',
        r'this',
        r'outer',
        r'super',
        r'is',
        r'exists',
        r'nonempty',
      ],
      relevance: 10,
      contains: [_mode0, _mode1, _mode2, _mode3],
    ),
  ];
  _mode2.scope = r'string';
  _mode2.begin = r"'";
  _mode2.end = r"'";
  _mode3.scope = r'number';
  _mode3.begin =
      r'#[0-9a-fA-F_]+|\$[01_]+|[0-9_]+(?:\.[0-9_](?:[eE][+-]?\d+)?)?[kMGTPmunpf]?';
  _mode3.relevance = 0;
  return Mode(
    name: r'Ceylon',
    keywords: {
      r'keyword': [
        r'assembly',
        r'module',
        r'package',
        r'import',
        r'alias',
        r'class',
        r'interface',
        r'object',
        r'given',
        r'value',
        r'assign',
        r'void',
        r'function',
        r'new',
        r'of',
        r'extends',
        r'satisfies',
        r'abstracts',
        r'in',
        r'out',
        r'return',
        r'break',
        r'continue',
        r'throw',
        r'assert',
        r'dynamic',
        r'if',
        r'else',
        r'switch',
        r'case',
        r'for',
        r'while',
        r'try',
        r'catch',
        r'finally',
        r'then',
        r'let',
        r'this',
        r'outer',
        r'super',
        r'is',
        r'exists',
        r'nonempty',
        r'shared',
        r'abstract',
        r'formal',
        r'default',
        r'actual',
        r'variable',
        r'late',
        r'native',
        r'deprecated',
        r'final',
        r'sealed',
        r'annotation',
        r'suppressWarnings',
        r'small',
      ],
      r'meta': [r'doc', r'by', r'license', r'see', r'throws', r'tagged'],
    },
    illegal: r'\$[^01]|#[^0-9a-fA-F]',
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
          r'self',
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
      Mode(scope: r'meta', begin: r'@[a-z]\w*(?::"[^"]*")?'),
      _mode0,
      _mode1,
      _mode2,
      _mode3,
    ],
  );
}
