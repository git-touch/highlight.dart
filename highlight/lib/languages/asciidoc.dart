// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final asciidoc = Mode(refs: {}, aliases: [
  "adoc"
], contains: [
  Mode(
      className: "comment",
      begin: "^/{4,}\\n",
      end: "\\n/{4,}\$",
      contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 10),
  Mode(
      className: "comment",
      begin: "^//",
      end: "\$",
      contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 0),
  Mode(className: "title", begin: "^\\.\\w.*\$"),
  Mode(begin: "^[=\\*]{4,}\\n", end: "\\n^[=\\*]{4,}\$", relevance: 10),
  Mode(className: "section", relevance: 10, variants: [
    Mode(begin: "^(={1,5}) .+?( \\1)?\$"),
    Mode(begin: "^[^\\[\\]\\n]+?\\n[=\\-\\x7e\\^\\+]{2,}\$")
  ]),
  Mode(
      className: "meta",
      begin: "^:.+?:",
      end: "\\s",
      excludeEnd: true,
      relevance: 10),
  Mode(className: "meta", begin: "^\\[.+?\\]\$", relevance: 0),
  Mode(
      className: "quote", begin: "^_{4,}\\n", end: "\\n_{4,}\$", relevance: 10),
  Mode(
      className: "code",
      begin: "^[\\-\\.]{4,}\\n",
      end: "\\n[\\-\\.]{4,}\$",
      relevance: 10),
  Mode(
      begin: "^\\+{4,}\\n",
      end: "\\n\\+{4,}\$",
      contains: [
        Mode(begin: "<", end: ">", subLanguage: ["xml"], relevance: 0)
      ],
      relevance: 10),
  Mode(className: "bullet", begin: "^(\\*+|\\-+|\\.+|[^\\n]+?::)\\s+"),
  Mode(
      className: "symbol",
      begin: "^(NOTE|TIP|IMPORTANT|WARNING|CAUTION):\\s+",
      relevance: 10),
  Mode(
      className: "strong",
      begin: "\\B\\*(?![\\*\\s])",
      end: "(\\n{2}|\\*)",
      contains: [Mode(begin: "\\\\*\\w", relevance: 0)]),
  Mode(
      className: "emphasis",
      begin: "\\B'(?!['\\s])",
      end: "(\\n{2}|')",
      contains: [Mode(begin: "\\\\'\\w", relevance: 0)],
      relevance: 0),
  Mode(
      className: "emphasis",
      begin: "_(?![_\\s])",
      end: "(\\n{2}|_)",
      relevance: 0),
  Mode(
      className: "string",
      variants: [Mode(begin: "``.+?''"), Mode(begin: "`.+?'")]),
  Mode(className: "code", begin: "(`.+?`|\\+.+?\\+)", relevance: 0),
  Mode(className: "code", begin: "^[ \\t]", end: "\$", relevance: 0),
  Mode(begin: "^'{3,}[ \\t]*\$", relevance: 10),
  Mode(
      begin: "(link:)?(http|https|ftp|file|irc|image:?):\\S+\\[.*?\\]",
      returnBegin: true,
      contains: [
        Mode(begin: "(link|image:?):", relevance: 0),
        Mode(className: "link", begin: "\\w", end: "[^\\[]+", relevance: 0),
        Mode(
            className: "string",
            begin: "\\[",
            end: "\\]",
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0)
      ],
      relevance: 10)
]);
