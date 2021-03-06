// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final step21 = Mode(
    refs: {},
    aliases: ["p21", "step", "stp"],
    case_insensitive: true,
    lexemes: "[A-Z_][A-Z0-9_.]*",
    keywords: {"keyword": "HEADER ENDSEC DATA"},
    contains: [
      Mode(className: "meta", begin: "ISO-10303-21;", relevance: 10),
      Mode(className: "meta", begin: "END-ISO-10303-21;", relevance: 10),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(className: "comment", begin: "/\\*\\*!", end: "\\*/", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      C_NUMBER_MODE,
      Mode(
          className: "string",
          begin: "'",
          end: "'",
          illegal: null,
          contains: [BACKSLASH_ESCAPE]),
      Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: [BACKSLASH_ESCAPE]),
      Mode(className: "string", begin: "'", end: "'"),
      Mode(
          className: "symbol",
          variants: [Mode(begin: "#", end: "\\d+", illegal: "\\W")])
    ]);
