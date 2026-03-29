// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode julia_repl(Highlight hljs) {
  return Mode(
    name: r'Julia REPL',
    contains: [
      Mode(
        scope: r'meta.prompt',
        begin: r'^julia>',
        relevance: 10,
        starts: Mode(
          end: r'^(?![ ]{6})',
          subLanguage: r'julia',
        ),
      ),
    ],
    aliases: [
      r'jldoctest',
    ],
  );
}
