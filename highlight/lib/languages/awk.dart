// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `awk`.
Mode awk(Highlight hljs) {
  final Mode mode0 = Mode();
  mode0.begin = r'\\[\s\S]';
  mode0.relevance = 0;
  return Mode(
    name: r'Awk',
    keywords: {
      r'keyword':
          r'BEGIN END if else while do for in break continue delete next nextfile function func exit|10',
    },
    contains: [
      Mode(
        scope: r'variable',
        variants: [
          Mode(begin: r'\$[\w\d#@][\w\d_]*'),
          Mode(begin: r'\$\{(.*?)\}'),
        ],
      ),
      Mode(
        scope: r'string',
        contains: [mode0],
        variants: [
          Mode(begin: r"(u|b)?r?'''", end: r"'''", relevance: 10),
          Mode(begin: r'(u|b)?r?"""', end: r'"""', relevance: 10),
          Mode(begin: r"(u|r|ur)'", end: r"'", relevance: 10),
          Mode(begin: r'(u|r|ur)"', end: r'"', relevance: 10),
          Mode(begin: r"(b|br)'", end: r"'"),
          Mode(begin: r'(b|br)"', end: r'"'),
          Mode(
            scope: r'string',
            begin: r"'",
            end: r"'",
            illegal: r'\n',
            contains: [mode0],
          ),
          Mode(
            scope: r'string',
            begin: r'"',
            end: r'"',
            illegal: r'\n',
            contains: [mode0],
          ),
        ],
      ),
      Mode(
        scope: r'regexp',
        begin: r'\/(?=[^/\n]*\/)',
        end: r'\/[gimuy]*',
        contains: [
          mode0,
          Mode(begin: r'\[', end: r'\]', relevance: 0, contains: [mode0]),
        ],
      ),
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
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?', relevance: 0),
    ],
  );
}
