import '../src/mode.dart';
import '../src/common_modes.dart';

var elixir = Mode(
    refs: {
      '~contains~0~contains~1~contains~9': Mode(begin: "->"),
      '~contains~0~contains~1~contains~8': Mode(
          className: "variable", begin: "(\\\$\\W)|((\\\$|\\@\\@?)(\\w+))"),
      '~contains~0~contains~1~contains~7': Mode(
          className: "number",
          begin:
              "(\\b0[0-7_]+)|(\\b0x[0-9a-fA-F_]+)|(\\b[1-9][0-9_]*(\\.[0-9_]+)?)|[0_]\\b",
          relevance: 0),
      '~contains~0~contains~1~contains~6': Mode(
          className: "symbol",
          begin: "[a-zA-Z_][a-zA-Z0-9_.]*(\\!|\\?)?:(?!:)",
          relevance: 0),
      '~contains~0~contains~1~contains~5': Mode(
          className: "symbol",
          begin: ":(?![\\s:])",
          contains: [
            Mode(ref: '~contains~0'),
            Mode(
                begin:
                    "[a-zA-Z_]\\w*[!?=]?|[-+\\x7e]\\@|<<|>>|=~|===?|<=>|[<>]=?|\\*\\*|[-/+%^&*~`|]|\\[\\]=?")
          ],
          relevance: 0),
      '~contains~0~contains~1~contains~4': Mode(begin: "::"),
      '~contains~0~contains~1~contains~3': Mode(
          className: "function",
          beginKeywords: "def defp defmacro",
          end: "\\B\\b",
          contains: [
            Mode(ref: '~contains~0~contains~1~contains~2~contains~0')
          ]),
      '~contains~0~contains~1~contains~2~contains~0': Mode(
          className: "title",
          begin: "[a-zA-Z_][a-zA-Z0-9_.]*(\\!|\\?)?",
          relevance: 0,
          endsParent: true),
      '~contains~0~contains~1~contains~2': Mode(
          className: "class",
          beginKeywords: "defimpl defmodule defprotocol defrecord",
          end: "\\bdo\\b|\$|;",
          contains: [
            Mode(ref: '~contains~0~contains~1~contains~2~contains~0')
          ]),
      '~contains~0~contains~1~contains~10': Mode(
          begin:
              "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\\x7e)\\s*",
          contains: [
            HASH_COMMENT_MODE,
            Mode(className: "regexp", illegal: "\\n", contains: [
              BACKSLASH_ESCAPE,
              Mode(ref: '~contains~0~contains~1')
            ], variants: [
              Mode(begin: "/", end: "/[a-z]*"),
              Mode(begin: "%r\\[", end: "\\][a-z]*")
            ])
          ],
          relevance: 0),
      '~contains~0~contains~1': Mode(
          className: "subst",
          begin: "#\\{",
          end: "}",
          lexemes: "[a-zA-Z_][a-zA-Z0-9_.]*(\\!|\\?)?",
          keywords:
              "and false then defined module in return redo retry end for true self when next until do begin unless nil break not case cond alias while ensure or include use alias fn quote require import with|0",
          contains: [
            Mode(ref: '~contains~0'),
            HASH_COMMENT_MODE,
            Mode(ref: '~contains~0~contains~1~contains~2'),
            Mode(ref: '~contains~0~contains~1~contains~3'),
            Mode(ref: '~contains~0~contains~1~contains~4'),
            Mode(ref: '~contains~0~contains~1~contains~5'),
            Mode(ref: '~contains~0~contains~1~contains~6'),
            Mode(ref: '~contains~0~contains~1~contains~7'),
            Mode(ref: '~contains~0~contains~1~contains~8'),
            Mode(ref: '~contains~0~contains~1~contains~9'),
            Mode(ref: '~contains~0~contains~1~contains~10')
          ]),
      '~contains~0': Mode(
          className: "string",
          contains: [BACKSLASH_ESCAPE, Mode(ref: '~contains~0~contains~1')],
          variants: [Mode(begin: "'", end: "'"), Mode(begin: "\"", end: "\"")]),
    },
    lexemes: "[a-zA-Z_][a-zA-Z0-9_.]*(\\!|\\?)?",
    keywords:
        "and false then defined module in return redo retry end for true self when next until do begin unless nil break not case cond alias while ensure or include use alias fn quote require import with|0",
    contains: [
      Mode(ref: '~contains~0'),
      HASH_COMMENT_MODE,
      Mode(ref: '~contains~0~contains~1~contains~2'),
      Mode(ref: '~contains~0~contains~1~contains~3'),
      Mode(ref: '~contains~0~contains~1~contains~4'),
      Mode(ref: '~contains~0~contains~1~contains~5'),
      Mode(ref: '~contains~0~contains~1~contains~6'),
      Mode(ref: '~contains~0~contains~1~contains~7'),
      Mode(ref: '~contains~0~contains~1~contains~8'),
      Mode(ref: '~contains~0~contains~1~contains~9'),
      Mode(ref: '~contains~0~contains~1~contains~10')
    ]);
