// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode python_repl(Highlight hljs) {
  return Mode(
    aliases: [
      r'pycon',
    ],
    contains: [
      Mode(
        scope: r'meta.prompt',
        starts: Mode(
          end: r' |$',
          starts: Mode(
            end: r'$',
            subLanguage: r'python',
          ),
        ),
        variants: [
          Mode(
            begin: r'^>>>(?=[ ]|$)',
          ),
          Mode(
            begin: r'^\.\.\.(?=[ ]|$)',
          ),
        ],
      ),
    ],
  );
}
