// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode leaf(Highlight hljs) {
  final Mode _mode0 = Mode();
  _mode0.scope = r'params';
  _mode0.begin = r'\(';
  _mode0.end = r'\)(?=\:?)';
  _mode0.endsParent = true;
  _mode0.relevance = 7;
  _mode0.contains = [
    Mode(
      match: [r'([A-Za-z_][A-Za-z_0-9]*)?', r'(?=\()'],
      scope: {1: r'keyword'},
      contains: [_mode0],
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
        contains: [_mode0],
      ),
      Mode(
        match: [r'#+', r'([A-Za-z_][A-Za-z_0-9]*)?', r':?'],
        scope: {1: r'punctuation', 2: r'keyword', 3: r'punctuation'},
      ),
    ],
  );
}
