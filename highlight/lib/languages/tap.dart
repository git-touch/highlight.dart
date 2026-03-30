// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `tap`.
Mode tap(Highlight hljs) {
  return Mode(
    name: r'Test Anything Protocol',
    caseInsensitive: true,
    contains: [
      Mode(
        scope: r'comment',
        begin: r'#',
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
        scope: r'meta',
        variants: [
          Mode(begin: r'^TAP version (\d+)$'),
          Mode(begin: r'^1\.\.(\d+)$'),
        ],
      ),
      Mode(begin: r'---$', end: r'\.\.\.$', subLanguage: r'yaml', relevance: 0),
      Mode(scope: r'number', begin: r' (\d+) '),
      Mode(
        scope: r'symbol',
        variants: [
          Mode(begin: r'^ok'),
          Mode(begin: r'^not ok'),
        ],
      ),
    ],
  );
}
