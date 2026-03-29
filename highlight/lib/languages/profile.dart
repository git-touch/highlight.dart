// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode profile(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  _mode0.scope = r'number';
  _mode0.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode0.relevance = 0;
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  return Mode(
    name: r'Python profiler',
    contains: [
      _mode0,
      Mode(
        begin: r'[a-zA-Z_][\da-zA-Z_]+\.[\da-zA-Z_]{1,3}',
        end: r':',
        excludeEnd: true,
      ),
      Mode(
        begin: r'(ncalls|tottime|cumtime)',
        end: r'$',
        keywords: r'ncalls tottime|10 cumtime|10 filename',
        relevance: 10,
      ),
      Mode(
        begin: r'function calls',
        end: r'$',
        contains: [
          _mode0,
        ],
        relevance: 10,
      ),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [
          _mode1,
        ],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [
          _mode1,
        ],
      ),
      Mode(
        scope: r'string',
        begin: r'\(',
        end: r'\)$',
        excludeBegin: true,
        excludeEnd: true,
        relevance: 0,
      ),
    ],
  );
}
