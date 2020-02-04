// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final coffeescript = Mode(
    refs: {
      '~contains~8~contains~1': Mode(
          className: "params",
          begin: "\\([^\\(]",
          returnBegin: true,
          contains: [
            Mode(begin: "\\(", end: "\\)", keywords: {
              "keyword":
                  "in if for while finally new do return else break catch instanceof throw try this switch continue typeof delete debugger super yield import export from as default await then unless until loop of by when and or is isnt not",
              "literal": "true false null undefined yes no on off",
              "built_in":
                  "npm require console print module global window document"
            }, contains: [
              Mode(self: true),
              BINARY_NUMBER_MODE,
              Mode(ref: '~contains~1'),
              Mode(ref: '~contains~2'),
              Mode(ref: '~contains~2~variants~2~contains~1~contains~3'),
              Mode(ref: '~contains~2~variants~2~contains~1~contains~4'),
              Mode(ref: '~contains~2~variants~2~contains~1~contains~5')
            ])
          ]),
      '~contains~8~contains~0': Mode(
          className: "title",
          begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
          relevance: 0),
      '~contains~2~variants~2~contains~1~contains~5': Mode(
          subLanguage: ["javascript"],
          excludeBegin: true,
          excludeEnd: true,
          variants: [
            Mode(begin: "```", end: "```"),
            Mode(begin: "`", end: "`")
          ]),
      '~contains~2~variants~2~contains~1~contains~4':
          Mode(begin: "@[A-Za-z\$_][0-9A-Za-z\$_]*"),
      '~contains~2~variants~2~contains~1~contains~3':
          Mode(className: "regexp", variants: [
        Mode(begin: "///", end: "///", contains: [
          Mode(ref: '~contains~2~variants~2~contains~1'),
          HASH_COMMENT_MODE
        ]),
        Mode(begin: "//[gim]{0,3}(?=\\W)", relevance: 0),
        Mode(begin: "\\/(?![ *]).*?(?![\\\\]).\\/[gim]{0,3}(?=\\W)")
      ]),
      '~contains~2~variants~2~contains~1':
          Mode(className: "subst", begin: "#\\{", end: "}", keywords: {
        "keyword":
            "in if for while finally new do return else break catch instanceof throw try this switch continue typeof delete debugger super yield import export from as default await then unless until loop of by when and or is isnt not",
        "literal": "true false null undefined yes no on off",
        "built_in": "npm require console print module global window document"
      }, contains: [
        BINARY_NUMBER_MODE,
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~2'),
        Mode(ref: '~contains~2~variants~2~contains~1~contains~3'),
        Mode(ref: '~contains~2~variants~2~contains~1~contains~4'),
        Mode(ref: '~contains~2~variants~2~contains~1~contains~5')
      ]),
      '~contains~2': Mode(className: "string", variants: [
        Mode(begin: "'''", end: "'''", contains: [BACKSLASH_ESCAPE]),
        Mode(begin: "'", end: "'", contains: [BACKSLASH_ESCAPE]),
        Mode(begin: "\"\"\"", end: "\"\"\"", contains: [
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~2~variants~2~contains~1')
        ]),
        Mode(begin: "\"", end: "\"", contains: [
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~2~variants~2~contains~1')
        ])
      ]),
      '~contains~1': Mode(
          className: "number",
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
          relevance: 0,
          starts: Mode(end: "(\\s*/)?", relevance: 0)),
    },
    aliases: ["coffee", "cson", "iced"],
    keywords: {
      "keyword":
          "in if for while finally new do return else break catch instanceof throw try this switch continue typeof delete debugger super yield import export from as default await then unless until loop of by when and or is isnt not",
      "literal": "true false null undefined yes no on off",
      "built_in": "npm require console print module global window document"
    },
    illegal: "\\/\\*",
    contains: [
      BINARY_NUMBER_MODE,
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~2~variants~2~contains~1~contains~3'),
      Mode(ref: '~contains~2~variants~2~contains~1~contains~4'),
      Mode(ref: '~contains~2~variants~2~contains~1~contains~5'),
      Mode(className: "comment", begin: "###", end: "###", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      HASH_COMMENT_MODE,
      Mode(
          className: "function",
          begin:
              "^\\s*[A-Za-z\$_][0-9A-Za-z\$_]*\\s*=\\s*(\\(.*\\))?\\s*\\B[-=]>",
          end: "[-=]>",
          returnBegin: true,
          contains: [
            Mode(ref: '~contains~8~contains~0'),
            Mode(ref: '~contains~8~contains~1')
          ]),
      Mode(begin: "[:\\(,=]\\s*", relevance: 0, contains: [
        Mode(
            className: "function",
            begin: "(\\(.*\\))?\\s*\\B[-=]>",
            end: "[-=]>",
            returnBegin: true,
            contains: [Mode(ref: '~contains~8~contains~1')])
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
                contains: [Mode(ref: '~contains~8~contains~0')]),
            Mode(ref: '~contains~8~contains~0')
          ]),
      Mode(
          begin: "[A-Za-z\$_][0-9A-Za-z\$_]*:",
          end: ":",
          returnBegin: true,
          returnEnd: true,
          relevance: 0)
    ]);
