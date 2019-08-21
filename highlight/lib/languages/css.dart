import '../src/mode.dart';
import '../src/common_modes.dart';

var css = Mode(
    refs: {},
    case_insensitive: true,
    illegal: "[=\\/|'\\\$]",
    contains: [
      C_BLOCK_COMMENT_MODE,
      Mode(className: "selector-id", begin: "#[A-Za-z0-9_-]+"),
      Mode(className: "selector-class", begin: "\\.[A-Za-z0-9_-]+"),
      Mode(className: "selector-attr", begin: "\\[", end: "\\]", illegal: "\$"),
      Mode(
          className: "selector-pseudo",
          begin: ":(:)?[a-zA-Z0-9\\_\\-\\+\\(\\)\"'.]+"),
      Mode(
          begin: "@(font-face|page)",
          lexemes: "[a-z-]+",
          keywords: "font-face page"),
      Mode(begin: "@", end: "[{;]", illegal: ":", contains: [
        Mode(className: "keyword", begin: "\\w+"),
        Mode(
            begin: "\\s",
            endsWithParent: true,
            excludeEnd: true,
            relevance: 0,
            contains: [APOS_STRING_MODE, QUOTE_STRING_MODE, CSS_NUMBER_MODE])
      ]),
      Mode(
          className: "selector-tag",
          begin: "[a-zA-Z-][a-zA-Z0-9_-]*",
          relevance: 0),
      Mode(begin: "{", end: "}", illegal: "\\S", contains: [
        C_BLOCK_COMMENT_MODE,
        Mode(
            begin: "(?:[A-Z\\_\\.\\-]+|--[a-zA-Z0-9_-]+)\\s*:",
            returnBegin: true,
            end: ";",
            endsWithParent: true,
            contains: [
              Mode(
                  className: "attribute",
                  begin: "\\S",
                  end: ":",
                  excludeEnd: true,
                  starts:
                      Mode(endsWithParent: true, excludeEnd: true, contains: [
                    Mode(begin: "[\\w-]+\\(", returnBegin: true, contains: [
                      Mode(className: "built_in", begin: "[\\w-]+"),
                      Mode(
                          begin: "\\(",
                          end: "\\)",
                          contains: [APOS_STRING_MODE, QUOTE_STRING_MODE])
                    ]),
                    CSS_NUMBER_MODE,
                    QUOTE_STRING_MODE,
                    APOS_STRING_MODE,
                    C_BLOCK_COMMENT_MODE,
                    Mode(className: "number", begin: "#[0-9A-Fa-f]+"),
                    Mode(className: "meta", begin: "!important")
                  ]))
            ])
      ])
    ]);
