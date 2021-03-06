// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final livescript = Mode(
    refs: {
      '~contains~9~contains~0': Mode(
          className: "title",
          begin: "[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*",
          relevance: 0),
      '~contains~2~variants~2~contains~2': Mode(
          className: "subst",
          begin: "#[A-Za-z\$_]",
          end: "(?:\\-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*",
          keywords: {
            "keyword":
                "in if for while finally new do return else break catch instanceof throw try this switch continue typeof delete debugger case default function var with then unless until loop of by when and or is isnt not it that otherwise from to til fallthrough super case default function var void const let enum export import native list map __hasProp __extends __slice __bind __indexOf",
            "literal": "true false null undefined yes no on off it that void",
            "built_in":
                "npm require console print module global window document"
          }),
      '~contains~2~variants~2~contains~1~contains~5': Mode(
          begin: "``",
          end: "``",
          excludeBegin: true,
          excludeEnd: true,
          subLanguage: ["javascript"]),
      '~contains~2~variants~2~contains~1~contains~4':
          Mode(begin: "@[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*"),
      '~contains~2~variants~2~contains~1~contains~3':
          Mode(className: "regexp", variants: [
        Mode(begin: "//", end: "//[gim]*", contains: [
          Mode(ref: '~contains~2~variants~2~contains~1'),
          HASH_COMMENT_MODE
        ]),
        Mode(begin: "\\/(?![ *])(\\\\\\/|.)*?\\/[gim]*(?=\\W)")
      ]),
      '~contains~2~variants~2~contains~1':
          Mode(className: "subst", begin: "#\\{", end: "}", keywords: {
        "keyword":
            "in if for while finally new do return else break catch instanceof throw try this switch continue typeof delete debugger case default function var with then unless until loop of by when and or is isnt not it that otherwise from to til fallthrough super case default function var void const let enum export import native list map __hasProp __extends __slice __bind __indexOf",
        "literal": "true false null undefined yes no on off it that void",
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
          Mode(ref: '~contains~2~variants~2~contains~1'),
          Mode(ref: '~contains~2~variants~2~contains~2')
        ]),
        Mode(begin: "\"", end: "\"", contains: [
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~2~variants~2~contains~1'),
          Mode(ref: '~contains~2~variants~2~contains~2')
        ]),
        Mode(begin: "\\\\", end: "(\\s|\$)", excludeEnd: true)
      ]),
      '~contains~1': Mode(
          className: "number",
          begin:
              "(\\b0[xX][a-fA-F0-9_]+)|(\\b\\d(\\d|_\\d)*(\\.(\\d(\\d|_\\d)*)?)?(_*[eE]([-+]\\d(_\\d|\\d)*)?)?[_a-z]*)",
          relevance: 0,
          starts: Mode(end: "(\\s*/)?", relevance: 0)),
    },
    aliases: ["ls"],
    keywords: {
      "keyword":
          "in if for while finally new do return else break catch instanceof throw try this switch continue typeof delete debugger case default function var with then unless until loop of by when and or is isnt not it that otherwise from to til fallthrough super case default function var void const let enum export import native list map __hasProp __extends __slice __bind __indexOf",
      "literal": "true false null undefined yes no on off it that void",
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
      Mode(className: "comment", begin: "\\/\\*", end: "\\*\\/", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      HASH_COMMENT_MODE,
      Mode(begin: "(#=>|=>|\\|>>|-?->|\\!->)"),
      Mode(
          className: "function",
          contains: [
            Mode(ref: '~contains~9~contains~0'),
            Mode(
                className: "params",
                begin: "\\(",
                returnBegin: true,
                contains: [
                  Mode(begin: "\\(", end: "\\)", keywords: {
                    "keyword":
                        "in if for while finally new do return else break catch instanceof throw try this switch continue typeof delete debugger case default function var with then unless until loop of by when and or is isnt not it that otherwise from to til fallthrough super case default function var void const let enum export import native list map __hasProp __extends __slice __bind __indexOf",
                    "literal":
                        "true false null undefined yes no on off it that void",
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
                ])
          ],
          returnBegin: true,
          variants: [
            Mode(
                begin:
                    "([A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*\\s*(?:=|:=)\\s*)?(\\(.*\\))?\\s*\\B\\->\\*?",
                end: "\\->\\*?"),
            Mode(
                begin:
                    "([A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*\\s*(?:=|:=)\\s*)?!?(\\(.*\\))?\\s*\\B[-\\x7e]{1,2}>\\*?",
                end: "[-\\x7e]{1,2}>\\*?"),
            Mode(
                begin:
                    "([A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*\\s*(?:=|:=)\\s*)?(\\(.*\\))?\\s*\\B!?[-\\x7e]{1,2}>\\*?",
                end: "!?[-\\x7e]{1,2}>\\*?")
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
                contains: [Mode(ref: '~contains~9~contains~0')]),
            Mode(ref: '~contains~9~contains~0')
          ]),
      Mode(
          begin: "[A-Za-z\$_](?:-[0-9A-Za-z\$_]|[0-9A-Za-z\$_])*:",
          end: ":",
          returnBegin: true,
          returnEnd: true,
          relevance: 0)
    ]);
