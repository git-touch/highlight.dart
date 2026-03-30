// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `julia-repl`.
Mode julia_repl(Highlight hljs) {
  return Mode(
    name: r'Julia REPL',
    contains: [
      Mode(
        scope: r'meta.prompt',
        begin: r'^julia>',
        relevance: 10,
        starts: Mode(end: r'^(?![ ]{6})', subLanguage: r'julia'),
      ),
    ],
    aliases: [r'jldoctest'],
  );
}
