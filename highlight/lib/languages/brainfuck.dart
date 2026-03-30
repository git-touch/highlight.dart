// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `brainfuck`.
Mode brainfuck(Highlight hljs) {
  final Mode mode0 = Mode();
  mode0.scope = r'literal';
  mode0.begin = r'[+-]+';
  mode0.relevance = 0;
  return Mode(
    name: r'Brainfuck',
    aliases: [r'bf'],
    contains: [
      Mode(
        scope: r'comment',
        begin: r'[^\[\]\.,\+\-<> \r\n]',
        end: r'[\[\]\.,\+\-<> \r\n]',
        contains: [
          Mode(match: r'[ ]+[^\[\]\.,\+\-<> \r\n]', relevance: 0),
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
        returnEnd: true,
        relevance: 0,
      ),
      Mode(scope: r'title', begin: r'[\[\]]', relevance: 0),
      Mode(scope: r'string', begin: r'[\.,]', relevance: 0),
      Mode(begin: r'(?=\+\+|--)', contains: [mode0]),
      mode0,
    ],
  );
}
