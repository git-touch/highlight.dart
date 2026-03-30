// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `nestedtext`.
Mode nestedtext(Highlight hljs) {
  return Mode(
    name: r'Nested Text',
    aliases: [r'nt'],
    contains: [
      Mode(
        scope: r'comment',
        begin: r'^\s*(?=#)',
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
        excludeBegin: true,
      ),
      Mode(
        variants: [
          Mode(match: [r'^\s*', r'-', r'[ ]', r'.*$']),
          Mode(match: [r'^\s*', r'-$']),
        ],
        scope: {2: r'bullet', 4: r'string'},
      ),
      Mode(
        match: [r'^\s*', r'>', r'[ ]', r'.*$'],
        scope: {2: r'punctuation', 4: r'string'},
      ),
      Mode(
        match: [r'^\s*(?=\S)', r'[^:]+', r':\s*', r'$'],
        scope: {2: r'attribute', 3: r'punctuation'},
      ),
      Mode(
        match: [r'^\s*(?=\S)', r'[^:]*[^: ]', r'[ ]*:', r'[ ]', r'.*$'],
        scope: {2: r'attribute', 3: r'punctuation', 5: r'string'},
      ),
    ],
  );
}
