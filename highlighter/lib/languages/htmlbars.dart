// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final htmlbars = Mode(
    refs: {},
    case_insensitive: true,
    subLanguage: ["xml"],
    contains: [
      Mode(className: "comment", begin: "{{!(--)?", end: "(--)?}}", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(
          className: "template-tag",
          begin: "\\{\\{[#\\/]",
          end: "\\}\\}",
          contains: [
            Mode(
                className: "name",
                begin: "[a-zA-Z\\.\\-]+",
                keywords: {
                  "builtin-name":
                      "action collection component concat debugger each each-in else get hash if input link-to loc log mut outlet partial query-params render textarea unbound unless with yield view"
                },
                starts: Mode(endsWithParent: true, relevance: 0, keywords: {
                  "keyword": "as",
                  "built_in":
                      "action collection component concat debugger each each-in else get hash if input link-to loc log mut outlet partial query-params render textarea unbound unless with yield view"
                }, contains: [
                  QUOTE_STRING_MODE,
                  Mode(
                      illegal: "\\}\\}",
                      begin: "[a-zA-Z0-9_]+=",
                      returnBegin: true,
                      relevance: 0,
                      contains: [
                        Mode(className: "attr", begin: "[a-zA-Z0-9_]+")
                      ]),
                  NUMBER_MODE
                ]))
          ]),
      Mode(
          className: "template-variable",
          begin: "\\{\\{[a-zA-Z][a-zA-Z\\-]+",
          end: "\\}\\}",
          keywords: {
            "keyword": "as",
            "built_in":
                "action collection component concat debugger each each-in else get hash if input link-to loc log mut outlet partial query-params render textarea unbound unless with yield view"
          },
          contains: [
            QUOTE_STRING_MODE
          ])
    ]);
