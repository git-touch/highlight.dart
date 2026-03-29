// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode dart(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  _mode0.scope = r'string';
  _mode0.variants = [
    Mode(
      begin: r"r'''",
      end: r"'''",
    ),
    Mode(
      begin: r'r"""',
      end: r'"""',
    ),
    Mode(
      begin: r"r'",
      end: r"'",
      illegal: r'\n',
    ),
    Mode(
      begin: r'r"',
      end: r'"',
      illegal: r'\n',
    ),
    Mode(
      begin: r"'''",
      end: r"'''",
      contains: [
        _mode1,
        _mode2,
        _mode4,
      ],
    ),
    Mode(
      begin: r'"""',
      end: r'"""',
      contains: [
        _mode1,
        _mode2,
        _mode4,
      ],
    ),
    Mode(
      begin: r"'",
      end: r"'",
      illegal: r'\n',
      contains: [
        _mode1,
        _mode2,
        _mode4,
      ],
    ),
    Mode(
      begin: r'"',
      end: r'"',
      illegal: r'\n',
      contains: [
        _mode1,
        _mode2,
        _mode4,
      ],
    ),
  ];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'subst';
  _mode2.variants = [
    _mode3,
  ];
  _mode3.begin = r'\$[A-Za-z0-9_]+';
  _mode4.scope = r'subst';
  _mode4.variants = [
    _mode5,
  ];
  _mode4.keywords = r'true false null this is new super';
  _mode4.contains = [
    _mode6,
    _mode0,
  ];
  _mode5.begin = r'\$\{';
  _mode5.end = r'\}';
  _mode6.scope = r'number';
  _mode6.relevance = 0;
  _mode6.variants = [
    _mode7,
    _mode8,
  ];
  _mode7.match = r'\b[0-9][0-9_]*(\.[0-9][0-9_]*)?([eE][+-]?[0-9][0-9_]*)?\b';
  _mode8.match = r'\b0[xX][0-9A-Fa-f][0-9A-Fa-f_]*\b';
  return Mode(
    name: r'Dart',
    keywords: {
      r'keyword': [
        r'abstract',
        r'as',
        r'assert',
        r'async',
        r'await',
        r'base',
        r'break',
        r'case',
        r'catch',
        r'class',
        r'const',
        r'continue',
        r'covariant',
        r'default',
        r'deferred',
        r'do',
        r'dynamic',
        r'else',
        r'enum',
        r'export',
        r'extends',
        r'extension',
        r'external',
        r'factory',
        r'false',
        r'final',
        r'finally',
        r'for',
        r'Function',
        r'get',
        r'hide',
        r'if',
        r'implements',
        r'import',
        r'in',
        r'interface',
        r'is',
        r'late',
        r'library',
        r'mixin',
        r'new',
        r'null',
        r'on',
        r'operator',
        r'part',
        r'required',
        r'rethrow',
        r'return',
        r'sealed',
        r'set',
        r'show',
        r'static',
        r'super',
        r'switch',
        r'sync',
        r'this',
        r'throw',
        r'true',
        r'try',
        r'typedef',
        r'var',
        r'void',
        r'when',
        r'while',
        r'with',
        r'yield',
      ],
      r'built_in': [
        r'Comparable',
        r'DateTime',
        r'Duration',
        r'Function',
        r'Iterable',
        r'Iterator',
        r'List',
        r'Map',
        r'Match',
        r'Object',
        r'Pattern',
        r'RegExp',
        r'Set',
        r'Stopwatch',
        r'String',
        r'StringBuffer',
        r'StringSink',
        r'Symbol',
        r'Type',
        r'Uri',
        r'bool',
        r'double',
        r'int',
        r'num',
        r'Element',
        r'ElementList',
        r'Comparable?',
        r'DateTime?',
        r'Duration?',
        r'Function?',
        r'Iterable?',
        r'Iterator?',
        r'List?',
        r'Map?',
        r'Match?',
        r'Object?',
        r'Pattern?',
        r'RegExp?',
        r'Set?',
        r'Stopwatch?',
        r'String?',
        r'StringBuffer?',
        r'StringSink?',
        r'Symbol?',
        r'Type?',
        r'Uri?',
        r'bool?',
        r'double?',
        r'int?',
        r'num?',
        r'Element?',
        r'ElementList?',
        r'Never',
        r'Null',
        r'dynamic',
        r'print',
        r'document',
        r'querySelector',
        r'querySelectorAll',
        r'window',
      ],
      r'$pattern': r'[A-Za-z][A-Za-z0-9_]*\??',
    },
    contains: [
      _mode0,
      Mode(
        scope: r'comment',
        begin: r'\/\*\*(?!\/)',
        end: r'\*\/',
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
        subLanguage: r'markdown',
        relevance: 0,
      ),
      Mode(
        scope: r'comment',
        begin: r'\/{3,} ?',
        end: r'$',
        contains: [
          Mode(
            subLanguage: r'markdown',
            begin: r'.',
            end: r'$',
            relevance: 0,
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
        scope: r'class',
        beginKeywords: r'class interface',
        end: r'\{',
        excludeEnd: true,
        contains: [
          Mode(
            beginKeywords: r'extends implements',
          ),
          Mode(
            scope: r'title',
            begin: r'[a-zA-Z_]\w*',
            relevance: 0,
          ),
        ],
      ),
      _mode6,
      Mode(
        scope: r'meta',
        begin: r'@[A-Za-z]+',
      ),
      Mode(
        begin: r'=>',
      ),
    ],
  );
}
