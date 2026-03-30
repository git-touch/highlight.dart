// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `ebnf`.
Mode ebnf(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  mode0.scope = r'comment';
  mode0.begin = r'\(\*';
  mode0.end = r'\*\)';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.begin = r'\\[\s\S]';
  mode3.relevance = 0;
  return Mode(
    name: r'Extended Backus-Naur Form',
    illegal: r'\S',
    contains: [
      mode0,
      Mode(scope: r'attribute', begin: r'^[ ]*[a-zA-Z]+([\s_-]+[a-zA-Z]+)*'),
      Mode(
        begin: r'=',
        end: r'[.;]',
        contains: [
          mode0,
          Mode(scope: r'meta', begin: r'\?.*\?'),
          Mode(
            scope: r'string',
            variants: [
              Mode(
                scope: r'string',
                begin: r"'",
                end: r"'",
                illegal: r'\n',
                contains: [mode3],
              ),
              Mode(
                scope: r'string',
                begin: r'"',
                end: r'"',
                illegal: r'\n',
                contains: [mode3],
              ),
              Mode(begin: r'`', end: r'`'),
            ],
          ),
        ],
      ),
    ],
  );
}
