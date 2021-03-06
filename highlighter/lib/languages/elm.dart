// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final elm = Mode(
    refs: {
      '~contains~2~contains~0':
          Mode(className: "type", begin: "\\b[A-Z][\\w']*", relevance: 0),
      '~contains~0~contains~0~contains~1': Mode(variants: [
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
      '~contains~0~contains~0~contains~0': Mode(
          className: "type", begin: "\\b[A-Z][\\w]*(\\((\\.\\.|,|\\w+)\\))?"),
      '~contains~0~contains~0':
          Mode(begin: "\\(", end: "\\)", illegal: "\"", contains: [
        Mode(ref: '~contains~0~contains~0~contains~0'),
        Mode(ref: '~contains~0~contains~0~contains~1')
      ]),
    },
    keywords:
        "let in if then else case of where module import exposing type alias as infix infixl infixr port effect command subscription",
    contains: [
      Mode(
          beginKeywords: "port effect module",
          end: "exposing",
          keywords: "port effect module where command subscription exposing",
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~1')
          ],
          illegal: "\\W\\.|;"),
      Mode(
          begin: "import",
          end: "\$",
          keywords: "import as exposing",
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~1')
          ],
          illegal: "\\W\\.|;"),
      Mode(begin: "type", end: "\$", keywords: "type alias", contains: [
        Mode(ref: '~contains~2~contains~0'),
        Mode(ref: '~contains~0~contains~0'),
        Mode(begin: "{", end: "}", contains: [
          Mode(ref: '~contains~0~contains~0~contains~0'),
          Mode(ref: '~contains~0~contains~0~contains~1')
        ]),
        Mode(ref: '~contains~0~contains~0~contains~1')
      ]),
      Mode(beginKeywords: "infix infixl infixr", end: "\$", contains: [
        C_NUMBER_MODE,
        Mode(ref: '~contains~0~contains~0~contains~1')
      ]),
      Mode(
          begin: "port",
          end: "\$",
          keywords: "port",
          contains: [Mode(ref: '~contains~0~contains~0~contains~1')]),
      Mode(className: "string", begin: "'\\\\?.", end: "'", illegal: "."),
      QUOTE_STRING_MODE,
      C_NUMBER_MODE,
      Mode(ref: '~contains~2~contains~0'),
      Mode(className: "title", begin: "^[_a-z][\\w']*", relevance: 0),
      Mode(ref: '~contains~0~contains~0~contains~1'),
      Mode(begin: "->|<-")
    ],
    illegal: ";");
