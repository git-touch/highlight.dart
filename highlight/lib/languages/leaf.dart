// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `leaf`.
Mode leaf(Highlight hljs) {
  final Mode mode0 = Mode();
  mode0.scope = r'params';
  mode0.begin = r'\(';
  mode0.end = r'\)(?=\:?)';
  mode0.endsParent = true;
  mode0.relevance = 7;
  mode0.contains = [
    Mode(
      match: [r'([A-Za-z_][A-Za-z_0-9]*)?', r'(?=\()'],
      scope: {1: r'keyword'},
      contains: [mode0],
    ),
    Mode(scope: r'string', begin: r'"', end: r'"'),
    Mode(scope: r'keyword', match: r'true|false|in'),
    Mode(scope: r'variable', match: r'[A-Za-z_][A-Za-z_0-9]*'),
    Mode(
      scope: r'operator',
      match: r'\+|\-|\*|\/|\%|\=\=|\=|\!|\>|\<|\&\&|\|\|',
    ),
  ];
  return Mode(
    name: r'Leaf',
    contains: [
      Mode(
        match: [r'#+', r'([A-Za-z_][A-Za-z_0-9]*)?', r'(?=\()'],
        scope: {1: r'punctuation', 2: r'keyword'},
        starts: Mode(
          contains: [Mode(match: r'\:', scope: r'punctuation')],
        ),
        contains: [mode0],
      ),
      Mode(
        match: [r'#+', r'([A-Za-z_][A-Za-z_0-9]*)?', r':?'],
        scope: {1: r'punctuation', 2: r'keyword', 3: r'punctuation'},
      ),
    ],
  );
}
