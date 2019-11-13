// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final moonscript = Mode(
    refs: {
      '~contains~6~contains~1': Mode(
          className: "params",
          begin: "\\([^\\(]",
          returnBegin: true,
          contains: [
            Mode(begin: "\\(", end: "\\)", keywords: {
              "keyword":
                  "if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using",
              "literal": "true false nil",
              "built_in":
                  "_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table"
            }, contains: [
              Mode(self: true),
              Mode(ref: '~contains~0'),
              Mode(ref: '~contains~1'),
              Mode(ref: '~contains~1~variants~1~contains~1~contains~2'),
              Mode(ref: '~contains~1~variants~1~contains~1~contains~3'),
              Mode(ref: '~contains~1~variants~1~contains~1~contains~4')
            ])
          ]),
      '~contains~6~contains~0': Mode(
          className: "title",
          begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
          relevance: 0),
      '~contains~1~variants~1~contains~1~contains~4':
          Mode(begin: "[a-zA-Z]\\w*\\\\[a-zA-Z]\\w*"),
      '~contains~1~variants~1~contains~1~contains~3':
          Mode(begin: "@[a-zA-Z]\\w*"),
      '~contains~1~variants~1~contains~1~contains~2':
          Mode(className: "built_in", begin: "@__[a-zA-Z]\\w*"),
      '~contains~1': Mode(className: "string", variants: [
        Mode(begin: "'", end: "'", contains: [BACKSLASH_ESCAPE]),
        Mode(begin: "\"", end: "\"", contains: [
          BACKSLASH_ESCAPE,
          Mode(className: "subst", begin: "#\\{", end: "}", keywords: {
            "keyword":
                "if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using",
            "literal": "true false nil",
            "built_in":
                "_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table"
          }, contains: [
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~1~variants~1~contains~1~contains~2'),
            Mode(ref: '~contains~1~variants~1~contains~1~contains~3'),
            Mode(ref: '~contains~1~variants~1~contains~1~contains~4')
          ])
        ])
      ]),
      '~contains~0': Mode(
          className: "number",
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
          relevance: 0,
          starts: Mode(end: "(\\s*/)?", relevance: 0)),
    },
    aliases: ["moon"],
    keywords: {
      "keyword":
          "if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using",
      "literal": "true false nil",
      "built_in":
          "_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table"
    },
    illegal: "\\/\\*",
    contains: [
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~1~variants~1~contains~1~contains~2'),
      Mode(ref: '~contains~1~variants~1~contains~1~contains~3'),
      Mode(ref: '~contains~1~variants~1~contains~1~contains~4'),
      Mode(className: "comment", begin: "--", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(
          className: "function",
          begin:
              "^\\s*[A-Za-z\$_][0-9A-Za-z\$_]*\\s*=\\s*(\\(.*\\))?\\s*\\B[-=]>",
          end: "[-=]>",
          returnBegin: true,
          contains: [
            Mode(ref: '~contains~6~contains~0'),
            Mode(ref: '~contains~6~contains~1')
          ]),
      Mode(begin: "[\\(,:=]\\s*", relevance: 0, contains: [
        Mode(
            className: "function",
            begin: "(\\(.*\\))?\\s*\\B[-=]>",
            end: "[-=]>",
            returnBegin: true,
            contains: [Mode(ref: '~contains~6~contains~1')])
      ]),
      Mode(
          className: "class",
          beginKeywords: "class",
          end: "\$",
          illegal: "[:=\"\\[\\]]",
          contains: [
            Mode(
                beginKeywords: "extends",
                endsWithParent: true,
                illegal: "[:=\"\\[\\]]",
                contains: [Mode(ref: '~contains~6~contains~0')]),
            Mode(ref: '~contains~6~contains~0')
          ]),
      Mode(
          className: "name",
          begin: "[A-Za-z\$_][0-9A-Za-z\$_]*:",
          end: ":",
          returnBegin: true,
          returnEnd: true,
          relevance: 0)
    ]);
