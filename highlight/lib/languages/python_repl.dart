// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `python-repl`.
Mode python_repl(Highlight hljs) {
  return Mode(
    aliases: [r'pycon'],
    contains: [
      Mode(
        scope: r'meta.prompt',
        starts: Mode(
          end: r' |$',
          starts: Mode(end: r'$', subLanguage: r'python'),
        ),
        variants: [
          Mode(begin: r'^>>>(?=[ ]|$)'),
          Mode(begin: r'^\.\.\.(?=[ ]|$)'),
        ],
      ),
    ],
  );
}
