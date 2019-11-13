// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final roboconf = Mode(
    refs: {
      '~contains~0~contains~0': Mode(
          className: "attribute",
          begin: "[a-zA-Z-_]+",
          end: "\\s*:",
          excludeEnd: true,
          starts: Mode(end: ";", relevance: 0, contains: [
            Mode(className: "variable", begin: "\\.[a-zA-Z-_]+"),
            Mode(className: "keyword", begin: "\\(optional\\)")
          ])),
    },
    aliases: ["graph", "instances"],
    case_insensitive: true,
    keywords: "import",
    contains: [
      Mode(
          begin: "^facet [a-zA-Z-_][^\\n{]+\\{",
          end: "}",
          keywords: "facet",
          contains: [Mode(ref: '~contains~0~contains~0'), HASH_COMMENT_MODE]),
      Mode(
          begin: "^\\s*instance of [a-zA-Z-_][^\\n{]+\\{",
          end: "}",
          keywords:
              "name count channels instance-data instance-state instance of",
          illegal: "\\S",
          contains: [
            Mode(self: true),
            Mode(ref: '~contains~0~contains~0'),
            HASH_COMMENT_MODE
          ]),
      Mode(
          begin: "^[a-zA-Z-_][^\\n{]+\\{",
          end: "}",
          contains: [Mode(ref: '~contains~0~contains~0'), HASH_COMMENT_MODE]),
      HASH_COMMENT_MODE
    ]);
