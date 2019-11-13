// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final angelscript = Mode(
    refs: {
      '~contains~7~contains~0~contains~1': Mode(
          className: "symbol",
          begin: "[a-zA-Z0-9_]+@",
          contains: [Mode(ref: '~contains~7~contains~0')]),
      '~contains~7~contains~0': Mode(
          className: "keyword",
          begin: "<",
          end: ">",
          contains: [
            Mode(ref: '~contains~7'),
            Mode(ref: '~contains~7~contains~0~contains~1')
          ]),
      '~contains~7': Mode(
          className: "built_in",
          begin:
              "\\b(void|bool|int|int8|int16|int32|int64|uint|uint8|uint16|uint32|uint64|string|ref|array|double|float|auto|dictionary)",
          contains: [Mode(ref: '~contains~7~contains~0')]),
    },
    aliases: ["asc"],
    keywords:
        "for in|0 break continue while do|0 return if else case switch namespace is cast or and xor not get|0 in inout|10 out override set|0 private public const default|0 final shared external mixin|10 enum typedef funcdef this super import from interface abstract|0 try catch protected explicit property",
    illegal: "(^using\\s+[A-Za-z0-9_\\.]+;\$|\\bfunctions*[^\\(])",
    contains: [
      Mode(
          className: "string",
          begin: "'",
          end: "'",
          illegal: "\\n",
          contains: [BACKSLASH_ESCAPE],
          relevance: 0),
      Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: [BACKSLASH_ESCAPE],
          relevance: 0),
      Mode(className: "string", begin: "\"\"\"", end: "\"\"\""),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(
          beginKeywords: "interface namespace",
          end: "{",
          illegal: "[;.\\-]",
          contains: [Mode(className: "symbol", begin: "[a-zA-Z0-9_]+")]),
      Mode(beginKeywords: "class", end: "{", illegal: "[;.\\-]", contains: [
        Mode(className: "symbol", begin: "[a-zA-Z0-9_]+", contains: [
          Mode(
              begin: "[:,]\\s*",
              contains: [Mode(className: "symbol", begin: "[a-zA-Z0-9_]+")])
        ])
      ]),
      Mode(ref: '~contains~7'),
      Mode(ref: '~contains~7~contains~0~contains~1'),
      Mode(className: "literal", begin: "\\b(null|true|false)"),
      Mode(
          className: "number",
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?f?|\\.\\d+f?)([eE][-+]?\\d+f?)?)")
    ]);
