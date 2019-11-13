// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final less = Mode(
    refs: {
      '~contains~3~starts~contains~13~contains~5': Mode(
          variants: [
            Mode(begin: "[\\.#:&\\[>]", end: "[;{}]"),
            Mode(begin: "([\\w-]+|@{[\\w-]+})", end: "{")
          ],
          returnBegin: true,
          returnEnd: true,
          illegal: "[<='\$\"]",
          relevance: 0,
          contains: [
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            Mode(beginKeywords: "when", endsWithParent: true, contains: [
              Mode(beginKeywords: "and not"),
              C_LINE_COMMENT_MODE,
              C_BLOCK_COMMENT_MODE,
              Mode(ref: '~contains~2~starts~contains~2'),
              Mode(ref: '~contains~2~starts~contains~3'),
              CSS_NUMBER_MODE,
              Mode(ref: '~contains~2~starts~contains~5'),
              Mode(ref: '~contains~2~starts~contains~6'),
              Mode(ref: '~contains~2~starts~contains~7'),
              Mode(ref: '~contains~2~starts~contains~7~contains~8'),
              Mode(ref: '~contains~2~starts~contains~7~contains~9'),
              Mode(ref: '~contains~2~starts~contains~7~contains~10'),
              Mode(ref: '~contains~2~starts~contains~7~contains~11'),
              Mode(ref: '~contains~2~starts~contains~7~contains~12')
            ]),
            Mode(className: "keyword", begin: "all\\b"),
            Mode(className: "variable", begin: "@{[\\w-]+}"),
            Mode(
                className: "selector-tag",
                begin: "([\\w-]+|@{[\\w-]+})%?",
                relevance: 0),
            Mode(className: "selector-id", begin: "#([\\w-]+|@{[\\w-]+})"),
            Mode(
                className: "selector-class",
                begin: "\\.([\\w-]+|@{[\\w-]+})",
                relevance: 0),
            Mode(className: "selector-tag", begin: "&", relevance: 0),
            Mode(className: "selector-attr", begin: "\\[", end: "\\]"),
            Mode(
                className: "selector-pseudo",
                begin: ":(:)?[a-zA-Z0-9\\_\\-\\+\\(\\)\"'.]+"),
            Mode(begin: "\\(", end: "\\)", contains: [
              C_LINE_COMMENT_MODE,
              C_BLOCK_COMMENT_MODE,
              Mode(ref: '~contains~2~starts~contains~2'),
              Mode(ref: '~contains~2~starts~contains~3'),
              CSS_NUMBER_MODE,
              Mode(ref: '~contains~2~starts~contains~5'),
              Mode(ref: '~contains~2~starts~contains~6'),
              Mode(ref: '~contains~2~starts~contains~7'),
              Mode(ref: '~contains~2~starts~contains~7~contains~8'),
              Mode(ref: '~contains~2~starts~contains~7~contains~9'),
              Mode(ref: '~contains~2~starts~contains~7~contains~10'),
              Mode(ref: '~contains~2~starts~contains~7~contains~11'),
              Mode(ref: '~contains~2~starts~contains~7~contains~12'),
              Mode(ref: '~contains~3~starts~contains~13')
            ]),
            Mode(begin: "!important")
          ]),
      '~contains~3~starts~contains~13~contains~4': Mode(
          begin: "([\\w-]+|@{[\\w-]+})\\s*:",
          returnBegin: true,
          end: "[;}]",
          relevance: 0,
          contains: [
            Mode(
                className: "attribute",
                begin: "([\\w-]+|@{[\\w-]+})",
                end: ":",
                excludeEnd: true,
                starts: Mode(
                    endsWithParent: true,
                    illegal: "[<=\$]",
                    relevance: 0,
                    contains: [
                      C_LINE_COMMENT_MODE,
                      C_BLOCK_COMMENT_MODE,
                      Mode(ref: '~contains~2~starts~contains~2'),
                      Mode(ref: '~contains~2~starts~contains~3'),
                      CSS_NUMBER_MODE,
                      Mode(ref: '~contains~2~starts~contains~5'),
                      Mode(ref: '~contains~2~starts~contains~6'),
                      Mode(ref: '~contains~2~starts~contains~7'),
                      Mode(ref: '~contains~2~starts~contains~7~contains~8'),
                      Mode(ref: '~contains~2~starts~contains~7~contains~9'),
                      Mode(ref: '~contains~2~starts~contains~7~contains~10'),
                      Mode(ref: '~contains~2~starts~contains~7~contains~11'),
                      Mode(ref: '~contains~2~starts~contains~7~contains~12')
                    ]))
          ]),
      '~contains~3~starts~contains~13': Mode(begin: "{", end: "}", contains: [
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        Mode(ref: '~contains~2'),
        Mode(ref: '~contains~3'),
        Mode(ref: '~contains~3~starts~contains~13~contains~4'),
        Mode(ref: '~contains~3~starts~contains~13~contains~5')
      ]),
      '~contains~3': Mode(
          className: "variable",
          variants: [
            Mode(begin: "@[\\w-]+\\s*:", relevance: 15),
            Mode(begin: "@[\\w-]+")
          ],
          starts: Mode(end: "[;}]", returnEnd: true, contains: [
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            Mode(ref: '~contains~2~starts~contains~2'),
            Mode(ref: '~contains~2~starts~contains~3'),
            CSS_NUMBER_MODE,
            Mode(ref: '~contains~2~starts~contains~5'),
            Mode(ref: '~contains~2~starts~contains~6'),
            Mode(ref: '~contains~2~starts~contains~7'),
            Mode(ref: '~contains~2~starts~contains~7~contains~8'),
            Mode(ref: '~contains~2~starts~contains~7~contains~9'),
            Mode(ref: '~contains~2~starts~contains~7~contains~10'),
            Mode(ref: '~contains~2~starts~contains~7~contains~11'),
            Mode(ref: '~contains~2~starts~contains~7~contains~12'),
            Mode(ref: '~contains~3~starts~contains~13')
          ])),
      '~contains~2~starts~contains~7~contains~9':
          Mode(className: "variable", begin: "@{[\\w-]+}"),
      '~contains~2~starts~contains~7~contains~8':
          Mode(className: "variable", begin: "@@?[\\w-]+", relevance: 10),
      '~contains~2~starts~contains~7~contains~12':
          Mode(className: "meta", begin: "!important"),
      '~contains~2~starts~contains~7~contains~11': Mode(
          className: "attribute",
          begin: "[\\w-]+\\s*:",
          end: ":",
          returnBegin: true,
          excludeEnd: true),
      '~contains~2~starts~contains~7~contains~10':
          Mode(className: "built_in", begin: "\\x7e?`[^`]*?`"),
      '~contains~2~starts~contains~7': Mode(
          begin: "\\(",
          end: "\\)",
          contains: [
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            Mode(ref: '~contains~2~starts~contains~2'),
            Mode(ref: '~contains~2~starts~contains~3'),
            CSS_NUMBER_MODE,
            Mode(ref: '~contains~2~starts~contains~5'),
            Mode(ref: '~contains~2~starts~contains~6'),
            Mode(ref: '~contains~2~starts~contains~7'),
            Mode(ref: '~contains~2~starts~contains~7~contains~8'),
            Mode(ref: '~contains~2~starts~contains~7~contains~9'),
            Mode(ref: '~contains~2~starts~contains~7~contains~10'),
            Mode(ref: '~contains~2~starts~contains~7~contains~11'),
            Mode(ref: '~contains~2~starts~contains~7~contains~12')
          ],
          relevance: 0),
      '~contains~2~starts~contains~6':
          Mode(className: "number", begin: "#[0-9A-Fa-f]+\\b"),
      '~contains~2~starts~contains~5': Mode(
          begin: "(url|data-uri)\\(",
          starts: Mode(className: "string", end: "[\\)\\n]", excludeEnd: true)),
      '~contains~2~starts~contains~3':
          Mode(className: "string", begin: "\\x7e?\".*?\""),
      '~contains~2~starts~contains~2':
          Mode(className: "string", begin: "\\x7e?'.*?'"),
      '~contains~2': Mode(
          className: "keyword",
          begin:
              "@(import|media|charset|font-face|(-[a-z]+-)?keyframes|supports|document|namespace|page|viewport|host)\\b",
          starts: Mode(
              end: "[;{}]",
              returnEnd: true,
              contains: [
                C_LINE_COMMENT_MODE,
                C_BLOCK_COMMENT_MODE,
                Mode(ref: '~contains~2~starts~contains~2'),
                Mode(ref: '~contains~2~starts~contains~3'),
                CSS_NUMBER_MODE,
                Mode(ref: '~contains~2~starts~contains~5'),
                Mode(ref: '~contains~2~starts~contains~6'),
                Mode(ref: '~contains~2~starts~contains~7'),
                Mode(ref: '~contains~2~starts~contains~7~contains~8'),
                Mode(ref: '~contains~2~starts~contains~7~contains~9'),
                Mode(ref: '~contains~2~starts~contains~7~contains~10'),
                Mode(ref: '~contains~2~starts~contains~7~contains~11'),
                Mode(ref: '~contains~2~starts~contains~7~contains~12')
              ],
              relevance: 0)),
    },
    case_insensitive: true,
    illegal: "[=>'/<(\$\"]",
    contains: [
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~3~starts~contains~13~contains~4'),
      Mode(ref: '~contains~3~starts~contains~13~contains~5')
    ]);
