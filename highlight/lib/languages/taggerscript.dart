// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode taggerscript(Highlight hljs) {
  return Mode(
    name: r'Tagger Script',
    contains: [
      Mode(
        scope: r'comment',
        begin: r'\$noop\(',
        end: r'\)',
        contains: [
          Mode(begin: r'\\[()]'),
          Mode(
            begin: r'\(',
            end: r'\)',
            contains: [
              Mode(begin: r'\\[()]'),
              r'self',
            ],
          ),
        ],
        relevance: 10,
      ),
      Mode(scope: r'keyword', begin: r'\$[_a-zA-Z0-9]+(?=\()'),
      Mode(scope: r'variable', begin: r'%[_a-zA-Z0-9:]+%'),
      Mode(scope: r'symbol', begin: r'\\[\\nt$%,()]'),
      Mode(scope: r'symbol', begin: r'\\u[a-fA-F0-9]{4}'),
    ],
  );
}
