// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode shell(Highlight hljs) {
  return Mode(
    name: r'Shell Session',
    aliases: [
      r'console',
      r'shellsession',
    ],
    contains: [
      Mode(
        scope: r'meta.prompt',
        begin: r'^\s{0,3}[/~\w\d[\]()@-]*[>%$#][ ]?',
        starts: Mode(
          end: r'[^\\](?=\s*$)',
          subLanguage: r'bash',
        ),
      ),
    ],
  );
}
