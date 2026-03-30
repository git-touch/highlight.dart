// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `php-template`.
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
          Mode(begin: r'/\*', end: r'\*/', skip: true),
          Mode(begin: r'b"', end: r'"', skip: true),
          Mode(begin: r"b'", end: r"'", skip: true),
          Mode(scope: r'string', begin: r"'", end: r"'", skip: true),
          Mode(scope: r'string', begin: r'"', end: r'"', skip: true),
        ],
      ),
    ],
  );
}
