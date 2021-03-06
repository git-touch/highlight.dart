// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final groovy = Mode(refs: {}, keywords: {
  "literal": "true false null",
  "keyword":
      "byte short char int long boolean float double void def as in assert trait super this abstract static volatile transient public private protected synchronized final class interface enum if else for while switch case break default continue throw throws try catch finally implements extends new import package return instanceof"
}, contains: [
  Mode(
      className: "comment",
      begin: "/\\*\\*",
      end: "\\*/",
      contains: [
        Mode(begin: "\\w+@", relevance: 0),
        Mode(className: "doctag", begin: "@[A-Za-z]+"),
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 0),
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE,
  Mode(className: "string", begin: "\"\"\"", end: "\"\"\""),
  Mode(className: "string", begin: "'''", end: "'''"),
  Mode(className: "string", begin: "\\\$/", end: "/\\\$", relevance: 10),
  APOS_STRING_MODE,
  Mode(
      className: "regexp",
      begin: "\\x7e?\\/[^\\/\\n]+\\/",
      contains: [BACKSLASH_ESCAPE]),
  QUOTE_STRING_MODE,
  Mode(className: "meta", begin: "^#!/usr/bin/env", end: "\$", illegal: "\n"),
  BINARY_NUMBER_MODE,
  Mode(
      className: "class",
      beginKeywords: "class interface trait enum",
      end: "{",
      illegal: ":",
      contains: [
        Mode(beginKeywords: "extends implements"),
        UNDERSCORE_TITLE_MODE
      ]),
  C_NUMBER_MODE,
  Mode(className: "meta", begin: "@[A-Za-z]+"),
  Mode(className: "string", begin: "[^\\?]{0}[A-Za-z0-9_\$]+ *:"),
  Mode(begin: "\\?", end: "\\:"),
  Mode(className: "symbol", begin: "^\\s*[A-Za-z0-9_\$]+:", relevance: 0)
], illegal: "#|<\\/");
