// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final cal = Mode(
    refs: {
      '~contains~5~contains~1': Mode(
          className: "function",
          beginKeywords: "procedure",
          end: "[:;]",
          keywords: "procedure|10",
          contains: [
            TITLE_MODE,
            Mode(
                className: "params",
                begin: "\\(",
                end: "\\)",
                keywords:
                    "div mod in and or not xor asserterror begin case do downto else end exit for if of repeat then to until while with var",
                contains: [Mode(ref: '~contains~0'), Mode(ref: '~contains~1')]),
            C_LINE_COMMENT_MODE,
            Mode(
                className: "comment",
                begin: "\\{",
                end: "\\}",
                contains: [
                  PHRASAL_WORDS_MODE,
                  Mode(
                      className: "doctag",
                      begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                      relevance: 0)
                ],
                relevance: 0),
            Mode(
                className: "comment",
                begin: "\\(\\*",
                end: "\\*\\)",
                contains: [
                  PHRASAL_WORDS_MODE,
                  Mode(
                      className: "doctag",
                      begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                      relevance: 0)
                ],
                relevance: 10)
          ]),
      '~contains~1': Mode(className: "string", begin: "(#\\d+)+"),
      '~contains~0': Mode(
          className: "string",
          begin: "'",
          end: "'",
          contains: [Mode(begin: "''")]),
    },
    case_insensitive: true,
    keywords: {
      "keyword":
          "div mod in and or not xor asserterror begin case do downto else end exit for if of repeat then to until while with var",
      "literal": "false true"
    },
    illegal: "\\/\\*",
    contains: [
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(
          className: "number",
          begin: "\\b\\d+(\\.\\d+)?(DT|D|T)",
          relevance: 0),
      Mode(className: "string", begin: "\"", end: "\""),
      NUMBER_MODE,
      Mode(
          className: "class",
          begin:
              "OBJECT (Table|Form|Report|Dataport|Codeunit|XMLport|MenuSuite|Page|Query) (\\d+) ([^\\r\\n]+)",
          returnBegin: true,
          contains: [TITLE_MODE, Mode(ref: '~contains~5~contains~1')]),
      Mode(ref: '~contains~5~contains~1')
    ]);
