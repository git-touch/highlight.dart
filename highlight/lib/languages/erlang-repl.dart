// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final erlangRepl = Mode(refs: {}, keywords: {
  "built_in": "spawn spawn_link self",
  "keyword":
      "after and andalso|10 band begin bnot bor bsl bsr bxor case catch cond div end fun if let not of or orelse|10 query receive rem try when xor"
}, contains: [
  Mode(className: "meta", begin: "^[0-9]+> ", relevance: 10),
  Mode(className: "comment", begin: "%", end: "\$", contains: [
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ]),
  Mode(
      className: "number",
      begin: "\\b(\\d+#[a-fA-F0-9]+|\\d+(\\.\\d+)?([eE][-+]?\\d+)?)",
      relevance: 0),
  APOS_STRING_MODE,
  QUOTE_STRING_MODE,
  Mode(begin: "\\?(::)?([A-Z]\\w*(::)?)+"),
  Mode(begin: "->"),
  Mode(begin: "ok"),
  Mode(begin: "!"),
  Mode(
      begin:
          "(\\b[a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*)|(\\b[a-z'][a-zA-Z0-9_']*)",
      relevance: 0),
  Mode(begin: "[A-Z][a-zA-Z0-9_']*", relevance: 0)
]);
