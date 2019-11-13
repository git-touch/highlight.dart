// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final markdown = Mode(refs: {}, aliases: [
  "md",
  "mkdown",
  "mkd"
], contains: [
  Mode(className: "section", variants: [
    Mode(begin: "^#{1,6}", end: "\$"),
    Mode(begin: "^.+?\\n[=-]{2,}\$")
  ]),
  Mode(begin: "<", end: ">", subLanguage: ["xml"], relevance: 0),
  Mode(className: "bullet", begin: "^\\s*([*+-]|(\\d+\\.))\\s+"),
  Mode(className: "strong", begin: "[*_]{2}.+?[*_]{2}"),
  Mode(
      className: "emphasis",
      variants: [Mode(begin: "\\*.+?\\*"), Mode(begin: "_.+?_", relevance: 0)]),
  Mode(className: "quote", begin: "^>\\s+", end: "\$"),
  Mode(className: "code", variants: [
    Mode(begin: "^```\\w*\\s*\$", end: "^```[ ]*\$"),
    Mode(begin: "`.+?`"),
    Mode(begin: "^( {4}|\\t)", end: "\$", relevance: 0)
  ]),
  Mode(begin: "^[-\\*]{3,}", end: "\$"),
  Mode(
      begin: "\\[.+?\\][\\(\\[].*?[\\)\\]]",
      returnBegin: true,
      contains: [
        Mode(
            className: "string",
            begin: "\\[",
            end: "\\]",
            excludeBegin: true,
            returnEnd: true,
            relevance: 0),
        Mode(
            className: "link",
            begin: "\\]\\(",
            end: "\\)",
            excludeBegin: true,
            excludeEnd: true),
        Mode(
            className: "symbol",
            begin: "\\]\\[",
            end: "\\]",
            excludeBegin: true,
            excludeEnd: true)
      ],
      relevance: 10),
  Mode(begin: "^\\[[^\\n]+\\]:", returnBegin: true, contains: [
    Mode(
        className: "symbol",
        begin: "\\[",
        end: "\\]",
        excludeBegin: true,
        excludeEnd: true),
    Mode(className: "link", begin: ":\\s*", end: "\$", excludeBegin: true)
  ])
]);
