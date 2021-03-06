// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final dts = Mode(
    refs: {
      '~contains~0~contains~8~variants~2':
          Mode(begin: "'\\\\?.", end: "'", illegal: "."),
      '~contains~0~contains~8~variants~1':
          Mode(begin: "(u8?|U)?R\"", end: "\"", contains: [BACKSLASH_ESCAPE]),
      '~contains~0~contains~8~variants~0': Mode(
          className: "string",
          begin: "((u8?|U)|L)?\"",
          end: "\"",
          illegal: "\\n",
          contains: [BACKSLASH_ESCAPE]),
      '~contains~0~contains~8': Mode(className: "string", variants: [
        Mode(ref: '~contains~0~contains~8~variants~0'),
        Mode(ref: '~contains~0~contains~8~variants~1'),
        Mode(ref: '~contains~0~contains~8~variants~2')
      ]),
      '~contains~0~contains~4~contains~0': Mode(
          className: "number",
          variants: [
            Mode(begin: "\\b(\\d+(\\.\\d*)?|\\.\\d+)(u|U|l|L|ul|UL|f|F)"),
            Mode(
                begin:
                    "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)")
          ],
          relevance: 0),
      '~contains~0~contains~4':
          Mode(className: "params", begin: "<", end: ">", contains: [
        Mode(ref: '~contains~0~contains~4~contains~0'),
        Mode(ref: '~contains~0~contains~0')
      ]),
      '~contains~0~contains~3': Mode(
          className: "class",
          begin: "[a-zA-Z_][a-zA-Z\\d_@]*\\s{",
          end: "[{;=]",
          returnBegin: true,
          excludeEnd: true),
      '~contains~0~contains~2':
          Mode(className: "symbol", begin: "^\\s*[a-zA-Z_][a-zA-Z\\d_]*:"),
      '~contains~0~contains~1':
          Mode(className: "meta-keyword", begin: "/[a-z][a-z\\d-]*/"),
      '~contains~0~contains~0':
          Mode(className: "variable", begin: "\\&[a-z\\d_]*\\b"),
    },
    keywords: "",
    contains: [
      Mode(
          className: "class",
          begin: "/\\s*{",
          end: "};",
          relevance: 10,
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~2'),
            Mode(ref: '~contains~0~contains~3'),
            Mode(ref: '~contains~0~contains~4'),
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            Mode(ref: '~contains~0~contains~4~contains~0'),
            Mode(ref: '~contains~0~contains~8')
          ]),
      Mode(ref: '~contains~0~contains~0'),
      Mode(ref: '~contains~0~contains~1'),
      Mode(ref: '~contains~0~contains~2'),
      Mode(ref: '~contains~0~contains~3'),
      Mode(ref: '~contains~0~contains~4'),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(ref: '~contains~0~contains~4~contains~0'),
      Mode(ref: '~contains~0~contains~8'),
      Mode(className: "meta", begin: "#", end: "\$", keywords: {
        "meta-keyword": "if else elif endif define undef ifdef ifndef"
      }, contains: [
        Mode(begin: "\\\\\\n", relevance: 0),
        Mode(beginKeywords: "include", end: "\$", keywords: {
          "meta-keyword": "include"
        }, contains: [
          Mode(className: "meta-string", variants: [
            Mode(ref: '~contains~0~contains~8~variants~0'),
            Mode(ref: '~contains~0~contains~8~variants~1'),
            Mode(ref: '~contains~0~contains~8~variants~2')
          ]),
          Mode(className: "meta-string", begin: "<", end: ">", illegal: "\\n")
        ]),
        Mode(ref: '~contains~0~contains~8'),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE
      ]),
      Mode(begin: "[a-zA-Z]\\w*::", keywords: "")
    ]);
