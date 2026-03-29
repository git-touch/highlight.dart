// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode clojure_repl(Highlight hljs) {
  return Mode(
    name: r'Clojure REPL',
    contains: [
      Mode(
        scope: r'meta.prompt',
        begin: r'^([\w.-]+|\s*#_)?=>',
        starts: Mode(end: r'$', subLanguage: r'clojure'),
      ),
    ],
  );
}
