// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode gcode(Highlight hljs) {
  void _letterBoundaryCallback(RegExpMatch match, CallbackResponse response) {
    if (match.start == 0) return;

    final charBeforeMatch = match.input[match.start - 1];
    if ((charBeforeMatch.compareTo('0') >= 0 &&
            charBeforeMatch.compareTo('9') <= 0) ||
        charBeforeMatch == '_') {
      return;
    }

    response.ignoreMatch();
  }

  final Mode _mode0 = Mode();
  _mode0.begin = r'\\[\s\S]';
  _mode0.relevance = 0;
  return Mode(
    name: r'G-code (ISO 6983)',
    aliases: [r'nc'],
    caseInsensitive: true,
    disableAutodetect: true,
    keywords: {
      r'$pattern': r'[A-Z]+|%',
      r'keyword': [
        r'THEN',
        r'ELSE',
        r'ENDIF',
        r'IF',
        r'GOTO',
        r'DO',
        r'WHILE',
        r'WH',
        r'END',
        r'CALL',
        r'SUB',
        r'ENDSUB',
        r'EQ',
        r'NE',
        r'LT',
        r'GT',
        r'LE',
        r'GE',
        r'AND',
        r'OR',
        r'XOR',
        r'%',
      ],
      r'built_in': [
        r'ATAN',
        r'ABS',
        r'ACOS',
        r'ASIN',
        r'COS',
        r'EXP',
        r'FIX',
        r'FUP',
        r'ROUND',
        r'LN',
        r'SIN',
        r'SQRT',
        r'TAN',
        r'EXISTS',
      ],
    },
    contains: [
      Mode(
        scope: r'comment',
        begin: r'\(',
        end: r'\)',
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
        begin: r';',
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
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [_mode0],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [_mode0],
      ),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(
        scope: r'title.function',
        variants: [
          Mode(match: r'\b[GM]\s*\d+(\.\d+)?'),
          Mode(begin: r'[GM]\s*\d+(\.\d+)?', onBegin: _letterBoundaryCallback),
          Mode(match: r'\bT\s*\d+'),
          Mode(begin: r'T\s*\d+', onBegin: _letterBoundaryCallback),
        ],
      ),
      Mode(
        scope: r'symbol',
        variants: [
          Mode(match: r'\bO\s*\d+'),
          Mode(begin: r'O\s*\d+', onBegin: _letterBoundaryCallback),
          Mode(match: r'\bO<.+>'),
          Mode(begin: r'O<.+>', onBegin: _letterBoundaryCallback),
          Mode(match: r'\*\s*\d+\s*$'),
        ],
      ),
      Mode(scope: r'operator', match: r'^N\s*\d+'),
      Mode(scope: r'variable', match: r'-?#\s*\d+'),
      Mode(
        scope: r'property',
        variants: [
          Mode(match: r'\b[ABCUVWXYZ]\s*[+-]?((\.\d+)|(\d+)(\.\d*)?)'),
          Mode(
            begin: r'[ABCUVWXYZ]\s*[+-]?((\.\d+)|(\d+)(\.\d*)?)',
            onBegin: _letterBoundaryCallback,
          ),
        ],
      ),
      Mode(
        scope: r'params',
        variants: [
          Mode(match: r'\b[FHIJKPQRS]\s*[+-]?((\.\d+)|(\d+)(\.\d*)?)'),
          Mode(
            begin: r'[FHIJKPQRS]\s*[+-]?((\.\d+)|(\d+)(\.\d*)?)',
            onBegin: _letterBoundaryCallback,
          ),
        ],
      ),
    ],
  );
}
