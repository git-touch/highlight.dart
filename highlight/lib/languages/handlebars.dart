import 'common.dart';
import '../highlight.dart';

var handlebars = Mode(
    refs: {},
    aliases: ["hbs", "html.hbs", "html.handlebars"],
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
                begin: "[a-zA-Z\\.-]+",
                keywords: {
                  "builtin-name":
                      "each in with if else unless bindattr action collection debugger log outlet template unbound view yield"
                },
                starts: Mode(
                    endsWithParent: true,
                    relevance: 0,
                    contains: [QUOTE_STRING_MODE]))
          ]),
      Mode(
          className: "template-variable",
          begin: "\\{\\{",
          end: "\\}\\}",
          keywords: {
            "builtin-name":
                "each in with if else unless bindattr action collection debugger log outlet template unbound view yield"
          })
    ]);
