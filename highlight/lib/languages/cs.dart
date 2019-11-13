// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final cs = Mode(
    refs: {
      '~contains~4~variants~0~contains~3~contains~2':
          Mode(className: "string", begin: "@\"", end: "\"", contains: [
        Mode(
            ref:
                '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~2~contains~0')
      ]),
      '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~5':
          Mode(
              className: "number",
              variants: [
                Mode(begin: "\\b(0b[01']+)"),
                Mode(
                    begin:
                        "(-?)\\b([\\d']+(\\.[\\d']*)?|\\.[\\d']+)(u|U|l|L|ul|UL|f|F|b|B)"),
                Mode(
                    begin:
                        "(-?)(\\b0[xX][a-fA-F0-9']+|(\\b[\\d']+(\\.[\\d']*)?|\\.[\\d']+)([eE][-+]?[\\d']+)?)")
              ],
              relevance: 0),
      '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~2~contains~0':
          Mode(begin: "\"\""),
      '~contains~4~variants~0~contains~3~contains~1~contains~3': Mode(
          className: "subst",
          begin: "{",
          end: "}",
          keywords: {
            "keyword":
                "abstract as base bool break byte case catch char checked const continue decimal default delegate do double enum event explicit extern finally fixed float for foreach goto if implicit in int interface internal is lock long object operator out override params private protected public readonly ref sbyte sealed short sizeof stackalloc static string struct switch this try typeof uint ulong unchecked unsafe ushort using virtual void volatile while add alias ascending async await by descending dynamic equals from get global group into join let nameof on orderby partial remove select set value var when where yield",
            "literal": "null false true"
          },
          illegal: "\\n",
          contains: [
            Mode(
                className: "string",
                begin: "\\\$@\"",
                end: "\"",
                contains: [
                  Mode(begin: "{{"),
                  Mode(begin: "}}"),
                  Mode(begin: "\"\""),
                  Mode(
                      ref:
                          '~contains~4~variants~0~contains~3~contains~1~contains~3')
                ],
                illegal: "\\n"),
            Mode(ref: '~contains~4~variants~0~contains~3~contains~1'),
            Mode(
                className: "string",
                begin: "@\"",
                end: "\"",
                contains: [
                  Mode(
                      ref:
                          '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~2~contains~0')
                ],
                illegal: "\\n"),
            APOS_STRING_MODE,
            QUOTE_STRING_MODE,
            Mode(
                ref:
                    '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~5'),
            Mode(
                className: "comment",
                begin: "/\\*",
                end: "\\*/",
                contains: [
                  PHRASAL_WORDS_MODE,
                  Mode(
                      className: "doctag",
                      begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                      relevance: 0)
                ],
                illegal: "\\n")
          ]),
      '~contains~4~variants~0~contains~3~contains~1': Mode(
          className: "string",
          begin: "\\\$\"",
          end: "\"",
          illegal: "\\n",
          contains: [
            Mode(begin: "{{"),
            Mode(begin: "}}"),
            BACKSLASH_ESCAPE,
            Mode(ref: '~contains~4~variants~0~contains~3~contains~1~contains~3')
          ]),
      '~contains~4~variants~0':
          Mode(className: "string", begin: "\\\$@\"", end: "\"", contains: [
        Mode(begin: "{{"),
        Mode(begin: "}}"),
        Mode(begin: "\"\""),
        Mode(className: "subst", begin: "{", end: "}", keywords: {
          "keyword":
              "abstract as base bool break byte case catch char checked const continue decimal default delegate do double enum event explicit extern finally fixed float for foreach goto if implicit in int interface internal is lock long object operator out override params private protected public readonly ref sbyte sealed short sizeof stackalloc static string struct switch this try typeof uint ulong unchecked unsafe ushort using virtual void volatile while add alias ascending async await by descending dynamic equals from get global group into join let nameof on orderby partial remove select set value var when where yield",
          "literal": "null false true"
        }, contains: [
          Mode(ref: '~contains~4~variants~0'),
          Mode(ref: '~contains~4~variants~0~contains~3~contains~1'),
          Mode(ref: '~contains~4~variants~0~contains~3~contains~2'),
          APOS_STRING_MODE,
          QUOTE_STRING_MODE,
          Mode(
              ref:
                  '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~5'),
          C_BLOCK_COMMENT_MODE
        ])
      ]),
      '~contains~4': Mode(variants: [
        Mode(ref: '~contains~4~variants~0'),
        Mode(ref: '~contains~4~variants~0~contains~3~contains~1'),
        Mode(ref: '~contains~4~variants~0~contains~3~contains~2'),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE
      ]),
    },
    aliases: ["csharp", "c#"],
    keywords: {
      "keyword":
          "abstract as base bool break byte case catch char checked const continue decimal default delegate do double enum event explicit extern finally fixed float for foreach goto if implicit in int interface internal is lock long object operator out override params private protected public readonly ref sbyte sealed short sizeof stackalloc static string struct switch this try typeof uint ulong unchecked unsafe ushort using virtual void volatile while add alias ascending async await by descending dynamic equals from get global group into join let nameof on orderby partial remove select set value var when where yield",
      "literal": "null false true"
    },
    illegal: "::",
    contains: [
      Mode(
          className: "comment",
          begin: "///",
          end: "\$",
          contains: [
            Mode(className: "doctag", variants: [
              Mode(begin: "///", relevance: 0),
              Mode(begin: "<!--|-->"),
              Mode(begin: "</?", end: ">")
            ]),
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          returnBegin: true),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(className: "meta", begin: "#", end: "\$", keywords: {
        "meta-keyword":
            "if else elif endif define undef warning error line region endregion pragma checksum"
      }),
      Mode(ref: '~contains~4'),
      Mode(
          ref:
              '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~5'),
      Mode(
          beginKeywords: "class interface",
          end: "[{;=]",
          illegal: "[^\\s:,]",
          contains: [TITLE_MODE, C_LINE_COMMENT_MODE, C_BLOCK_COMMENT_MODE]),
      Mode(
          beginKeywords: "namespace",
          end: "[{;=]",
          illegal: "[^\\s:]",
          contains: [
            Mode(className: "title", begin: "[a-zA-Z](\\.?\\w)*", relevance: 0),
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE
          ]),
      Mode(
          className: "meta",
          begin: "^\\s*\\[",
          excludeBegin: true,
          end: "\\]",
          excludeEnd: true,
          contains: [Mode(className: "meta-string", begin: "\"", end: "\"")]),
      Mode(beginKeywords: "new return throw await else", relevance: 0),
      Mode(
          className: "function",
          begin:
              "([a-zA-Z]\\w*(<[a-zA-Z]\\w*(\\s*,\\s*[a-zA-Z]\\w*)*>)?(\\[\\])?\\s+)+[a-zA-Z]\\w*\\s*\\(",
          returnBegin: true,
          end: "\\s*[{;=]",
          excludeEnd: true,
          keywords: {
            "keyword":
                "abstract as base bool break byte case catch char checked const continue decimal default delegate do double enum event explicit extern finally fixed float for foreach goto if implicit in int interface internal is lock long object operator out override params private protected public readonly ref sbyte sealed short sizeof stackalloc static string struct switch this try typeof uint ulong unchecked unsafe ushort using virtual void volatile while add alias ascending async await by descending dynamic equals from get global group into join let nameof on orderby partial remove select set value var when where yield",
            "literal": "null false true"
          },
          contains: [
            Mode(
                begin: "[a-zA-Z]\\w*\\s*\\(",
                returnBegin: true,
                contains: [TITLE_MODE],
                relevance: 0),
            Mode(
                className: "params",
                begin: "\\(",
                end: "\\)",
                excludeBegin: true,
                excludeEnd: true,
                keywords: {
                  "keyword":
                      "abstract as base bool break byte case catch char checked const continue decimal default delegate do double enum event explicit extern finally fixed float for foreach goto if implicit in int interface internal is lock long object operator out override params private protected public readonly ref sbyte sealed short sizeof stackalloc static string struct switch this try typeof uint ulong unchecked unsafe ushort using virtual void volatile while add alias ascending async await by descending dynamic equals from get global group into join let nameof on orderby partial remove select set value var when where yield",
                  "literal": "null false true"
                },
                relevance: 0,
                contains: [
                  Mode(ref: '~contains~4'),
                  Mode(
                      ref:
                          '~contains~4~variants~0~contains~3~contains~1~contains~3~contains~5'),
                  C_BLOCK_COMMENT_MODE
                ]),
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE
          ])
    ]);
