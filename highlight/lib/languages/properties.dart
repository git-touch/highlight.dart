// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `properties`.
Mode properties(Highlight hljs) {
  return Mode(
    name: r'.properties',
    disableAutodetect: true,
    caseInsensitive: true,
    illegal: r'\S',
    contains: [
      Mode(
        scope: r'comment',
        begin: r'^\s*[!#]',
        end: r'$',
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
        returnBegin: true,
        variants: [
          Mode(begin: r'([^\\:= \t\f\n]|\\.)+[ \t\f]*[:=][ \t\f]*'),
          Mode(begin: r'([^\\:= \t\f\n]|\\.)+[ \t\f]+'),
        ],
        contains: [
          Mode(
            scope: r'attr',
            begin: r'([^\\:= \t\f\n]|\\.)+',
            endsParent: true,
          ),
        ],
        starts: Mode(
          end: r'([ \t\f]*[:=][ \t\f]*|[ \t\f]+)',
          relevance: 0,
          starts: Mode(
            scope: r'string',
            end: r'$',
            relevance: 0,
            contains: [
              Mode(begin: r'\\\\'),
              Mode(begin: r'\\\n'),
            ],
          ),
        ),
      ),
      Mode(scope: r'attr', begin: r'([^\\:= \t\f\n]|\\.)+[ \t\f]*$'),
    ],
  );
}
