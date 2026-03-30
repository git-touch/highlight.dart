// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `erb`.
Mode erb(Highlight hljs) {
  return Mode(
    name: r'ERB',
    subLanguage: r'xml',
    contains: [
      Mode(
        scope: r'comment',
        begin: r'<%#',
        end: r'%>',
        contains: [
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
      ),
      Mode(
        begin: r'<%[%=-]?',
        end: r'[%-]?%>',
        subLanguage: r'ruby',
        excludeBegin: true,
        excludeEnd: true,
      ),
    ],
  );
}
