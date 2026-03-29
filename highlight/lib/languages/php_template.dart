// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode php_template(Highlight hljs) {
  return Mode(
    name: r'PHP template',
    subLanguage: r'xml',
    contains: [
      Mode(
        begin: r'<\?(php|=)?',
        end: r'\?>',
        subLanguage: r'php',
        contains: [
          Mode(
            begin: r'/\*',
            end: r'\*/',
            skip: true,
          ),
          Mode(
            begin: r'b"',
            end: r'"',
            skip: true,
          ),
          Mode(
            begin: r"b'",
            end: r"'",
            skip: true,
          ),
          Mode(
            scope: r'string',
            begin: r"'",
            end: r"'",
            skip: true,
          ),
          Mode(
            scope: r'string',
            begin: r'"',
            end: r'"',
            skip: true,
          ),
        ],
      ),
    ],
  );
}
