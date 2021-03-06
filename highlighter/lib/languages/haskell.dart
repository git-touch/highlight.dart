// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final haskell = Mode(
    refs: {
      '~contains~2~contains~0':
          Mode(className: "type", begin: "\\b[A-Z][\\w']*", relevance: 0),
      '~contains~0~contains~0~contains~4': Mode(variants: [
        Mode(className: "comment", begin: "--", end: "\$", contains: [
          PHRASAL_WORDS_MODE,
          Mode(
              className: "doctag",
              begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
              relevance: 0)
        ]),
        Mode(className: "comment", begin: "{-", end: "-}", contains: [
          Mode(self: true),
          PHRASAL_WORDS_MODE,
          Mode(
              className: "doctag",
              begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
              relevance: 0)
        ])
      ]),
      '~contains~0~contains~0~contains~3':
          Mode(className: "title", begin: "[_a-z][\\w']*", relevance: 0),
      '~contains~0~contains~0~contains~2': Mode(
          className: "type", begin: "\\b[A-Z][\\w]*(\\((\\.\\.|,|\\w+)\\))?"),
      '~contains~0~contains~0~contains~1':
          Mode(className: "meta", begin: "^#", end: "\$"),
      '~contains~0~contains~0~contains~0':
          Mode(className: "meta", begin: "{-#", end: "#-}"),
      '~contains~0~contains~0':
          Mode(begin: "\\(", end: "\\)", illegal: "\"", contains: [
        Mode(ref: '~contains~0~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~1'),
        Mode(ref: '~contains~0~contains~0~contains~2'),
        Mode(ref: '~contains~0~contains~0~contains~3'),
        Mode(ref: '~contains~0~contains~0~contains~4')
      ]),
    },
    aliases: ["hs"],
    keywords:
        "let in if then else case of where do module import hiding qualified type data newtype deriving class instance as default infix infixl infixr foreign export ccall stdcall cplusplus jvm dotnet safe unsafe family forall mdo proc rec",
    contains: [
      Mode(
          beginKeywords: "module",
          end: "where",
          keywords: "module where",
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ],
          illegal: "\\W\\.|;"),
      Mode(
          begin: "\\bimport\\b",
          end: "\$",
          keywords: "import qualified as hiding",
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ],
          illegal: "\\W\\.|;"),
      Mode(
          className: "class",
          begin: "^(\\s*)?(class|instance)\\b",
          end: "where",
          keywords: "class family instance where",
          contains: [
            Mode(ref: '~contains~2~contains~0'),
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ]),
      Mode(
          className: "class",
          begin: "\\b(data|(new)?type)\\b",
          end: "\$",
          keywords: "data family type newtype deriving",
          contains: [
            Mode(ref: '~contains~0~contains~0~contains~0'),
            Mode(ref: '~contains~2~contains~0'),
            Mode(ref: '~contains~0~contains~0'),
            Mode(begin: "{", end: "}", contains: [
              Mode(ref: '~contains~0~contains~0~contains~0'),
              Mode(ref: '~contains~0~contains~0~contains~1'),
              Mode(ref: '~contains~0~contains~0~contains~2'),
              Mode(ref: '~contains~0~contains~0~contains~3'),
              Mode(ref: '~contains~0~contains~0~contains~4')
            ]),
            Mode(ref: '~contains~0~contains~0~contains~4')
          ]),
      Mode(beginKeywords: "default", end: "\$", contains: [
        Mode(ref: '~contains~2~contains~0'),
        Mode(ref: '~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~4')
      ]),
      Mode(beginKeywords: "infix infixl infixr", end: "\$", contains: [
        C_NUMBER_MODE,
        Mode(ref: '~contains~0~contains~0~contains~4')
      ]),
      Mode(
          begin: "\\bforeign\\b",
          end: "\$",
          keywords:
              "foreign import export ccall stdcall cplusplus jvm dotnet safe unsafe",
          contains: [
            Mode(ref: '~contains~2~contains~0'),
            QUOTE_STRING_MODE,
            Mode(ref: '~contains~0~contains~0~contains~4')
          ]),
      Mode(
          className: "meta",
          begin: "#!\\/usr\\/bin\\/env runhaskell",
          end: "\$"),
      Mode(ref: '~contains~0~contains~0~contains~0'),
      Mode(ref: '~contains~0~contains~0~contains~1'),
      QUOTE_STRING_MODE,
      C_NUMBER_MODE,
      Mode(ref: '~contains~2~contains~0'),
      Mode(className: "title", begin: "^[_a-z][\\w']*", relevance: 0),
      Mode(ref: '~contains~0~contains~0~contains~4'),
      Mode(begin: "->|<-")
    ]);
