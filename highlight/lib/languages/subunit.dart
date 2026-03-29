// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode subunit(Highlight hljs) {
  return Mode(
    name: r'SubUnit',
    caseInsensitive: true,
    contains: [
      Mode(scope: r'string', begin: '\\[\n(multipart)?', end: '\\]\n'),
      Mode(
        scope: r'string',
        begin: r'\d{4}-\d{2}-\d{2}(\s+)\d{2}:\d{2}:\d{2}.\d+Z',
      ),
      Mode(scope: r'string', begin: r'(\+|-)\d+'),
      Mode(
        scope: r'keyword',
        relevance: 10,
        variants: [
          Mode(
            begin:
                r'^(test|testing|success|successful|failure|error|skip|xfail|uxsuccess)(:?)\s+(test)?',
          ),
          Mode(begin: r'^progress(:?)(\s+)?(pop|push)?'),
          Mode(begin: r'^tags:'),
          Mode(begin: r'^time:'),
        ],
      ),
    ],
  );
}
