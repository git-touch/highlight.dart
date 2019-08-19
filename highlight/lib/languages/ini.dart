import 'common.dart';
import '../highlight.dart';

var ini = Mode(
    refs: {},
    aliases: ["toml"],
    case_insensitive: true,
    illegal: "\\S",
    contains: [
      Mode(className: "comment", begin: ";", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      HASH_COMMENT_MODE,
      Mode(className: "section", begin: "^\\s*\\[+", end: "\\]+"),
      Mode(
          begin: "^[a-z0-9\\[\\]_\\.-]+\\s*=\\s*",
          end: "\$",
          returnBegin: true,
          contains: [
            Mode(className: "attr", begin: "[a-z0-9\\[\\]_\\.-]+"),
            Mode(begin: "=", endsWithParent: true, relevance: 0, contains: [
              Mode(className: "comment", begin: ";", end: "\$", contains: [
                PHRASAL_WORDS_MODE,
                Mode(
                    className: "doctag",
                    begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                    relevance: 0)
              ]),
              HASH_COMMENT_MODE,
              Mode(
                  className: "literal",
                  begin: "\\bon|off|true|false|yes|no\\b"),
              Mode(className: "variable", variants: [
                Mode(begin: "\\\$[\\w\\d\"][\\w\\d_]*"),
                Mode(begin: "\\\$\\{(.*?)}")
              ]),
              Mode(className: "string", contains: [
                BACKSLASH_ESCAPE
              ], variants: [
                Mode(begin: "'''", end: "'''", relevance: 10),
                Mode(begin: "\"\"\"", end: "\"\"\"", relevance: 10),
                Mode(begin: "\"", end: "\""),
                Mode(begin: "'", end: "'")
              ]),
              Mode(className: "number", begin: "([\\+\\-]+)?[\\d]+_[\\d_]+"),
              NUMBER_MODE
            ])
          ])
    ]);
