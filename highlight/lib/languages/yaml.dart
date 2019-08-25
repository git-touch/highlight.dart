// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

var yaml = Mode(
    refs: {
      '~contains~2~contains~1': Mode(className: "template-variable", variants: [
        Mode(begin: "{{", end: "}}"),
        Mode(begin: "%{", end: "}")
      ]),
    },
    case_insensitive: true,
    aliases: ["yml", "YAML", "yaml"],
    contains: [
      Mode(className: "attr", variants: [
        Mode(begin: "^[ \\-]*[a-zA-Z_][\\w\\-]*:"),
        Mode(begin: "^[ \\-]*\"[a-zA-Z_][\\w\\-]*\":"),
        Mode(begin: "^[ \\-]*'[a-zA-Z_][\\w\\-]*':")
      ]),
      Mode(className: "meta", begin: "^---s*\$", relevance: 10),
      Mode(
          className: "string",
          begin: "[\\|>] *\$",
          returnEnd: true,
          contains: [BACKSLASH_ESCAPE, Mode(ref: '~contains~2~contains~1')],
          end: "^[ \\-]*[a-zA-Z_][\\w\\-]*:"),
      Mode(
          begin: "<%[%=-]?",
          end: "[%-]?%>",
          subLanguage: ["ruby"],
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0),
      Mode(className: "type", begin: "![a-zA-Z_]\\w*"),
      Mode(className: "type", begin: "!![a-zA-Z_]\\w*"),
      Mode(className: "meta", begin: "&[a-zA-Z_]\\w*\$"),
      Mode(className: "meta", begin: "\\*[a-zA-Z_]\\w*\$"),
      Mode(className: "bullet", begin: "^ *-", relevance: 0),
      HASH_COMMENT_MODE,
      Mode(
          beginKeywords: "true false yes no null",
          keywords: {"literal": "true false yes no null"}),
      C_NUMBER_MODE,
      Mode(className: "string", relevance: 0, variants: [
        Mode(begin: "'", end: "'"),
        Mode(begin: "\"", end: "\""),
        Mode(begin: "\\S+")
      ], contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~2~contains~1')
      ])
    ]);
