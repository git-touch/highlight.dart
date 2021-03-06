// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final handlebars = Mode(
    refs: {
      '~contains~7~contains~0': Mode(
          begin: "\".*?\"|'.*?'|\\[.*?\\]|\\w+",
          keywords: {
            "builtin-name":
                "each in with if else unless bindattr action collection debugger log outlet template unbound view yield lookup"
          },
          starts: Mode(ref: '~contains~4~contains~0~starts'),
          relevance: 0),
      '~contains~4~contains~0~starts': Mode(
          endsWithParent: true,
          relevance: 0,
          contains: [
            Mode(begin: "\".*?\"|'.*?'|\\[.*?\\]|\\w+", relevance: 0)
          ]),
      '~contains~4~contains~0': Mode(
          begin: "\".*?\"|'.*?'|\\[.*?\\]|\\w+",
          keywords: {
            "builtin-name":
                "each in with if else unless bindattr action collection debugger log outlet template unbound view yield lookup"
          },
          starts: Mode(ref: '~contains~4~contains~0~starts'),
          className: "name"),
    },
    aliases: ["hbs", "html.hbs", "html.handlebars"],
    case_insensitive: true,
    subLanguage: ["xml"],
    contains: [
      Mode(begin: "\\\\\\{\\{", skip: true),
      Mode(begin: "\\\\\\\\(?=\\{\\{)", skip: true),
      Mode(
          className: "comment",
          begin: "\\{\\{!--",
          end: "--\\}\\}",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ]),
      Mode(className: "comment", begin: "\\{\\{!", end: "\\}\\}", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(
          className: "template-tag",
          begin: "\\{\\{\\{\\{(?!\\/)",
          end: "\\}\\}\\}\\}",
          contains: [Mode(ref: '~contains~4~contains~0')],
          starts: Mode(
              end: "\\{\\{\\{\\{\\/", returnEnd: true, subLanguage: ["xml"])),
      Mode(
          className: "template-tag",
          begin: "\\{\\{\\{\\{\\/",
          end: "\\}\\}\\}\\}",
          contains: [Mode(ref: '~contains~4~contains~0')]),
      Mode(
          className: "template-tag",
          begin: "\\{\\{[#\\/]",
          end: "\\}\\}",
          contains: [Mode(ref: '~contains~4~contains~0')]),
      Mode(
          className: "template-variable",
          begin: "\\{\\{\\{",
          end: "\\}\\}\\}",
          keywords: {
            "builtin-name":
                "each in with if else unless bindattr action collection debugger log outlet template unbound view yield lookup"
          },
          contains: [
            Mode(ref: '~contains~7~contains~0')
          ]),
      Mode(
          className: "template-variable",
          begin: "\\{\\{",
          end: "\\}\\}",
          keywords: {
            "builtin-name":
                "each in with if else unless bindattr action collection debugger log outlet template unbound view yield lookup"
          },
          contains: [
            Mode(ref: '~contains~7~contains~0')
          ])
    ]);
