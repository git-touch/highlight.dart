// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `node-repl`.
Mode node_repl(Highlight hljs) {
  return Mode(
    name: r'Node REPL',
    contains: [
      Mode(
        scope: r'meta.prompt',
        starts: Mode(
          end: r' |$',
          starts: Mode(end: r'$', subLanguage: r'javascript'),
        ),
        variants: [
          Mode(begin: r'^>(?=[ ]|$)'),
          Mode(begin: r'^\.\.\.(?=[ ]|$)'),
        ],
      ),
    ],
  );
}
