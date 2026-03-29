// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode node_repl(Highlight hljs) {
  return Mode(
    name: r'Node REPL',
    contains: [
      Mode(
        scope: r'meta.prompt',
        starts: Mode(
          end: r' |$',
          starts: Mode(
            end: r'$',
            subLanguage: r'javascript',
          ),
        ),
        variants: [
          Mode(
            begin: r'^>(?=[ ]|$)',
          ),
          Mode(
            begin: r'^\.\.\.(?=[ ]|$)',
          ),
        ],
      ),
    ],
  );
}
