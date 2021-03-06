// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final graphql = Mode(refs: {}, aliases: [
  "gql"
], keywords: {
  "keyword":
      "query mutation subscription|10 type interface union scalar fragment|10 enum on ...",
  "literal": "true false null"
}, contains: [
  HASH_COMMENT_MODE,
  QUOTE_STRING_MODE,
  NUMBER_MODE,
  Mode(
      className: "type",
      begin: "[^\\w][A-Z][a-z]",
      end: "\\W",
      excludeEnd: true),
  Mode(
      className: "literal",
      begin: "[^\\w][A-Z][A-Z]",
      end: "\\W",
      excludeEnd: true),
  Mode(className: "variable", begin: "\\\$", end: "\\W", excludeEnd: true),
  Mode(className: "keyword", begin: "[.]{2}", end: "\\."),
  Mode(className: "meta", begin: "@", end: "\\W", excludeEnd: true)
], illegal: "([;<']|BEGIN)");
