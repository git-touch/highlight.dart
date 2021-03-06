// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final erlang = Mode(
    refs: {
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9':
          Mode(
              begin: "#[a-zA-Z_]\\w*",
              relevance: 0,
              returnBegin: true,
              contains: [
            Mode(begin: "#[a-zA-Z_]\\w*", relevance: 0),
            Mode(begin: "{", end: "}", relevance: 0, contains: [
              Mode(ref: '~contains~0~contains~0~contains~0'),
              Mode(ref: '~contains~0~contains~0~contains~1'),
              Mode(ref: '~contains~0~contains~0~contains~2'),
              Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
              QUOTE_STRING_MODE,
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
              Mode(
                  ref:
                      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
            ])
          ]),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8':
          Mode(begin: "[A-Z][a-zA-Z0-9_]*", relevance: 0),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7':
          Mode(begin: "\\b_([A-Z][A-Za-z0-9_]*)?", relevance: 0),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6':
          Mode(begin: "{", end: "}", relevance: 0, contains: [
        Mode(ref: '~contains~0~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~1'),
        Mode(ref: '~contains~0~contains~0~contains~2'),
        Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
        QUOTE_STRING_MODE,
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
      ]),
      '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5':
          Mode(
              className: "number",
              begin: "\\b(\\d+#[a-fA-F0-9]+|\\d+(\\.\\d+)?([eE][-+]?\\d+)?)",
              relevance: 0),
      '~contains~0~contains~0~contains~2~contains~4': Mode(
          begin:
              "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)\\(",
          end: "\\)",
          returnBegin: true,
          relevance: 0,
          contains: [
            Mode(
                begin:
                    "([a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*|[a-z'][a-zA-Z0-9_']*)",
                relevance: 0),
            Mode(
                begin: "\\(",
                end: "\\)",
                endsWithParent: true,
                returnEnd: true,
                relevance: 0,
                contains: [
                  Mode(ref: '~contains~0~contains~0~contains~0'),
                  Mode(ref: '~contains~0~contains~0~contains~1'),
                  Mode(ref: '~contains~0~contains~0~contains~2'),
                  Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
                  QUOTE_STRING_MODE,
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
                  Mode(
                      ref:
                          '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
                ])
          ]),
      '~contains~0~contains~0~contains~2':
          Mode(beginKeywords: "fun receive if try case", end: "end", keywords: {
        "keyword":
            "after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor",
        "literal": "false true"
      }, contains: [
        Mode(ref: '~contains~0~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~1'),
        Mode(
            className: "",
            begin: "'",
            end: "'",
            illegal: "\\n",
            contains: [BACKSLASH_ESCAPE]),
        Mode(ref: '~contains~0~contains~0~contains~2'),
        Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
        QUOTE_STRING_MODE,
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
      ]),
      '~contains~0~contains~0~contains~1':
          Mode(begin: "fun\\s+[a-z'][a-zA-Z0-9_']*/\\d+"),
      '~contains~0~contains~0~contains~0':
          Mode(className: "comment", begin: "%", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      '~contains~0~contains~0':
          Mode(className: "params", begin: "\\(", end: "\\)", contains: [
        Mode(ref: '~contains~0~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~1'),
        Mode(ref: '~contains~0~contains~0~contains~2'),
        Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
        QUOTE_STRING_MODE,
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
        Mode(
            ref:
                '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
      ]),
    },
    aliases: ["erl"],
    keywords: {
      "keyword":
          "after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor",
      "literal": "false true"
    },
    illegal: "(</|\\*=|\\+=|-=|/\\*|\\*/|\\(\\*|\\*\\))",
    contains: [
      Mode(
          className: "function",
          begin: "^[a-z'][a-zA-Z0-9_']*\\s*\\(",
          end: "->",
          returnBegin: true,
          illegal: "\\(|#|//|/\\*|\\\\|:|;",
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(
                className: "title", begin: "[a-z'][a-zA-Z0-9_']*", relevance: 0)
          ],
          starts: Mode(end: ";|\\.", keywords: {
            "keyword":
                "after and andalso|10 band begin bnot bor bsl bzr bxor case catch cond div end fun if let not of orelse|10 query receive rem try when xor",
            "literal": "false true"
          }, contains: [
            Mode(ref: '~contains~0~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~1'),
            Mode(ref: '~contains~0~contains~0~contains~2'),
            Mode(ref: '~contains~0~contains~0~contains~2~contains~4'),
            QUOTE_STRING_MODE,
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
            Mode(
                ref:
                    '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9')
          ])),
      Mode(ref: '~contains~0~contains~0~contains~0'),
      Mode(
          begin: "^-",
          end: "\\.",
          relevance: 0,
          excludeEnd: true,
          returnBegin: true,
          lexemes: "-[a-zA-Z]\\w*",
          keywords:
              "-module -record -undef -export -ifdef -ifndef -author -copyright -doc -vsn -import -include -include_lib -compile -define -else -endif -file -behaviour -behavior -spec",
          contains: [Mode(ref: '~contains~0~contains~0')]),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~5'),
      QUOTE_STRING_MODE,
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~9'),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~7'),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6~contains~8'),
      Mode(
          ref:
              '~contains~0~contains~0~contains~2~contains~4~contains~1~contains~6'),
      Mode(begin: "\\.\$")
    ]);
