// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode mojolicious(Highlight hljs) {
  return Mode(
    name: r'Mojolicious',
    subLanguage: r'xml',
    contains: [
      Mode(
        scope: r'meta',
        begin: r'^__(END|DATA)__$',
      ),
      Mode(
        begin: r'^\s*%{1,2}={0,2}',
        end: r'$',
        subLanguage: r'perl',
      ),
      Mode(
        begin: r'<%{1,2}={0,2}',
        end: r'={0,1}%>',
        subLanguage: r'perl',
        excludeBegin: true,
        excludeEnd: true,
      ),
    ],
  );
}
