// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `profile`.
Mode profile(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  mode0.scope = r'number';
  mode0.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode0.relevance = 0;
  mode1.begin = r'\\[\s\S]';
  mode1.relevance = 0;
  return Mode(
    name: r'Python profiler',
    contains: [
      mode0,
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
        contains: [mode0],
        relevance: 10,
      ),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [mode1],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [mode1],
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
