// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final ruby = Mode(
    refs: {
      '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~9':
          Mode(className: "params", begin: "\\|", end: "\\|", keywords: {
        "keyword":
            "and then defined module in return redo if BEGIN retry end for self when next until do begin unless END rescue else break undef not super class case require yield alias while ensure elsif or include attr_reader attr_writer attr_accessor",
        "literal": "true false nil"
      }),
      '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~8':
          Mode(begin: "(\\\$\\W)|((\\\$|\\@\\@?)(\\w+))"),
      '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~7':
          Mode(
              className: "number",
              begin:
                  "(\\b0[0-7_]+)|(\\b0x[0-9a-fA-F_]+)|(\\b[1-9][0-9_]*(\\.[0-9_]+)?)|[0_]\\b",
              relevance: 0),
      '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~6':
          Mode(
              className: "symbol",
              begin: ":(?!\\s)",
              contains: [
                Mode(ref: '~contains~3~starts~contains~0'),
                Mode(
                    begin:
                        "[a-zA-Z_]\\w*[!?=]?|[-+\\x7e]\\@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?")
              ],
              relevance: 0),
      '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~5':
          Mode(
              className: "symbol",
              begin: "[a-zA-Z_]\\w*(\\!|\\?)?:",
              relevance: 0),
      '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~4':
          Mode(begin: "[a-zA-Z]\\w*::"),
      '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~10':
          Mode(
              begin:
                  "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\\x7e|unless)\\s*",
              keywords: "unless",
              contains: [
                Mode(
                    ref: '~contains~3~starts~contains~0~contains~1~contains~1'),
                Mode(
                    className: "regexp",
                    contains: [
                      BACKSLASH_ESCAPE,
                      Mode(ref: '~contains~3~starts~contains~0~contains~1')
                    ],
                    illegal: "\\n",
                    variants: [
                      Mode(begin: "/", end: "/[a-z]*"),
                      Mode(begin: "%r{", end: "}[a-z]*"),
                      Mode(begin: "%r\\(", end: "\\)[a-z]*"),
                      Mode(begin: "%r!", end: "![a-z]*"),
                      Mode(begin: "%r\\[", end: "\\][a-z]*")
                    ]),
                Mode(ref: '~contains~0'),
                Mode(ref: '~contains~1'),
                Mode(ref: '~contains~2')
              ],
              relevance: 0),
      '~contains~3~starts~contains~0~contains~1~contains~3': Mode(
          className: "function",
          beginKeywords: "def",
          end: "\$|;",
          contains: [
            Mode(
                className: "title",
                begin:
                    "[a-zA-Z_]\\w*[!?=]?|[-+\\x7e]\\@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?",
                relevance: 0),
            Mode(
                className: "params",
                begin: "\\(",
                end: "\\)",
                endsParent: true,
                keywords: {
                  "keyword":
                      "and then defined module in return redo if BEGIN retry end for self when next until do begin unless END rescue else break undef not super class case require yield alias while ensure elsif or include attr_reader attr_writer attr_accessor",
                  "literal": "true false nil"
                },
                contains: [
                  Mode(ref: '~contains~3~starts~contains~0'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~1'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~2'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~4'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~5'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~6'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~7'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~8'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~9'),
                  Mode(
                      ref:
                          '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~10'),
                  Mode(ref: '~contains~0'),
                  Mode(ref: '~contains~1'),
                  Mode(ref: '~contains~2')
                ]),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~2')
          ]),
      '~contains~3~starts~contains~0~contains~1~contains~2': Mode(
          className: "class",
          beginKeywords: "class module",
          end: "\$|;",
          illegal: "=",
          contains: [
            Mode(
                className: "title",
                begin: "[A-Za-z_]\\w*(::\\w+)*(\\?|\\!)?",
                relevance: 0),
            Mode(
                begin: "<\\s*",
                contains: [Mode(begin: "([a-zA-Z]\\w*::)?[a-zA-Z]\\w*")]),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~2')
          ]),
      '~contains~3~starts~contains~0~contains~1~contains~1':
          Mode(begin: "#<", end: ">"),
      '~contains~3~starts~contains~0~contains~1':
          Mode(className: "subst", begin: "#\\{", end: "}", keywords: {
        "keyword":
            "and then defined module in return redo if BEGIN retry end for self when next until do begin unless END rescue else break undef not super class case require yield alias while ensure elsif or include attr_reader attr_writer attr_accessor",
        "literal": "true false nil"
      }, contains: [
        Mode(ref: '~contains~3~starts~contains~0'),
        Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~1'),
        Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~2'),
        Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~3'),
        Mode(
            ref:
                '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~4'),
        Mode(
            ref:
                '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~5'),
        Mode(
            ref:
                '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~6'),
        Mode(
            ref:
                '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~7'),
        Mode(
            ref:
                '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~8'),
        Mode(
            ref:
                '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~9'),
        Mode(
            ref:
                '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~10'),
        Mode(ref: '~contains~0'),
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~2')
      ]),
      '~contains~3~starts~contains~0': Mode(className: "string", contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~3~starts~contains~0~contains~1')
      ], variants: [
        Mode(begin: "'", end: "'"),
        Mode(begin: "\"", end: "\""),
        Mode(begin: "`", end: "`"),
        Mode(begin: "%[qQwWx]?\\(", end: "\\)"),
        Mode(begin: "%[qQwWx]?\\[", end: "\\]"),
        Mode(begin: "%[qQwWx]?{", end: "}"),
        Mode(begin: "%[qQwWx]?<", end: ">"),
        Mode(begin: "%[qQwWx]?/", end: "/"),
        Mode(begin: "%[qQwWx]?%", end: "%"),
        Mode(begin: "%[qQwWx]?-", end: "-"),
        Mode(begin: "%[qQwWx]?\\|", end: "\\|"),
        Mode(
            begin:
                "\\B\\?(\\\\\\d{1,3}|\\\\x[A-Fa-f0-9]{1,2}|\\\\u[A-Fa-f0-9]{4}|\\\\?\\S)\\b"),
        Mode(
            begin: "<<[-\\x7e]?'?(\\w+)(?:.|\\n)*?\\n\\s*\\1\\b",
            returnBegin: true,
            contains: [
              Mode(begin: "<<[-\\x7e]?'?"),
              Mode(begin: "\\w+", endSameAsBegin: true, contains: [
                BACKSLASH_ESCAPE,
                Mode(ref: '~contains~3~starts~contains~0~contains~1')
              ])
            ])
      ]),
      '~contains~2': Mode(
          className: "comment",
          begin: "^__END__",
          end: "\\n\$",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ]),
      '~contains~1': Mode(
          className: "comment",
          begin: "^\\=begin",
          end: "^\\=end",
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      '~contains~0~contains~0': Mode(className: "doctag", begin: "@[A-Za-z]+"),
      '~contains~0':
          Mode(className: "comment", begin: "#", end: "\$", contains: [
        Mode(ref: '~contains~0~contains~0'),
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
    },
    aliases: ["rb", "gemspec", "podspec", "thor", "irb"],
    keywords: {
      "keyword":
          "and then defined module in return redo if BEGIN retry end for self when next until do begin unless END rescue else break undef not super class case require yield alias while ensure elsif or include attr_reader attr_writer attr_accessor",
      "literal": "true false nil"
    },
    illegal: "\\/\\*",
    contains: [
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~2'),
      Mode(
          begin: "^\\s*=>",
          starts: Mode(end: "\$", contains: [
            Mode(ref: '~contains~3~starts~contains~0'),
            Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~1'),
            Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~2'),
            Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~3'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~4'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~5'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~6'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~7'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~8'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~9'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~10'),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~2')
          ])),
      Mode(
          className: "meta",
          begin:
              "^([>?]>|[\\w#]+\\(\\w+\\):\\d+:\\d+>|(\\w+-)?\\d+\\.\\d+\\.\\d(p\\d+)?[^>]+>)",
          starts: Mode(end: "\$", contains: [
            Mode(ref: '~contains~3~starts~contains~0'),
            Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~1'),
            Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~2'),
            Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~3'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~4'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~5'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~6'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~7'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~8'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~9'),
            Mode(
                ref:
                    '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~10'),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~2')
          ])),
      Mode(ref: '~contains~3~starts~contains~0'),
      Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~1'),
      Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~2'),
      Mode(ref: '~contains~3~starts~contains~0~contains~1~contains~3'),
      Mode(
          ref:
              '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~4'),
      Mode(
          ref:
              '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~5'),
      Mode(
          ref:
              '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~6'),
      Mode(
          ref:
              '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~7'),
      Mode(
          ref:
              '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~8'),
      Mode(
          ref:
              '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~9'),
      Mode(
          ref:
              '~contains~3~starts~contains~0~contains~1~contains~3~contains~1~contains~10'),
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~2')
    ]);
