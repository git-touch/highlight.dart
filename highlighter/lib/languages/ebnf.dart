// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final ebnf = Mode(
    refs: {
      '~contains~0':
          Mode(className: "comment", begin: "\\(\\*", end: "\\*\\)", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
    },
    illegal: "\\S",
    contains: [
      Mode(ref: '~contains~0'),
      Mode(
          className: "attribute",
          begin: "^[ ]*[a-zA-Z][a-zA-Z-_]*([\\s-_]+[a-zA-Z][a-zA-Z]*)*"),
      Mode(begin: "=", end: "[.;]", contains: [
        Mode(ref: '~contains~0'),
        Mode(className: "meta", begin: "\\?.*\\?"),
        Mode(className: "string", variants: [
          APOS_STRING_MODE,
          QUOTE_STRING_MODE,
          Mode(begin: "`", end: "`")
        ])
      ])
    ]);
