// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final actionscript = Mode(refs: {}, aliases: [
  "as"
], keywords: {
  "keyword":
      "as break case catch class const continue default delete do dynamic each else extends final finally for function get if implements import in include instanceof interface internal is namespace native new override package private protected public return set static super switch this throw try typeof use var void while with",
  "literal": "true false null undefined"
}, contains: [
  APOS_STRING_MODE,
  QUOTE_STRING_MODE,
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE,
  C_NUMBER_MODE,
  Mode(
      className: "class",
      beginKeywords: "package",
      end: "{",
      contains: [TITLE_MODE]),
  Mode(
      className: "class",
      beginKeywords: "class interface",
      end: "{",
      excludeEnd: true,
      contains: [Mode(beginKeywords: "extends implements"), TITLE_MODE]),
  Mode(
      className: "meta",
      beginKeywords: "import include",
      end: ";",
      keywords: {"meta-keyword": "import include"}),
  Mode(
      className: "function",
      beginKeywords: "function",
      end: "[{;]",
      excludeEnd: true,
      illegal: "\\S",
      contains: [
        TITLE_MODE,
        Mode(className: "params", begin: "\\(", end: "\\)", contains: [
          APOS_STRING_MODE,
          QUOTE_STRING_MODE,
          C_LINE_COMMENT_MODE,
          C_BLOCK_COMMENT_MODE,
          Mode(
              className: "rest_arg",
              begin: "[.]{3}",
              end: "[a-zA-Z_\$][a-zA-Z0-9_\$]*",
              relevance: 10)
        ]),
        Mode(begin: ":\\s*([*]|[a-zA-Z_\$][a-zA-Z0-9_\$]*)")
      ]),
  METHOD_GUARD
], illegal: "#");
