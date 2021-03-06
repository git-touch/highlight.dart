// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final python = Mode(
    refs: {
      '~contains~3~variants~2~contains~3': Mode(
          className: "subst",
          begin: "\\{",
          end: "\\}",
          keywords: {
            "keyword":
                "and elif is global as in if from raise for except finally print import pass return exec else break not with class assert yield try while continue del or def lambda async await nonlocal|10",
            "built_in": "Ellipsis NotImplemented",
            "literal": "False None True"
          },
          illegal: "#",
          contains: [
            Mode(ref: '~contains~3'),
            Mode(ref: '~contains~1'),
            Mode(ref: '~contains~0')
          ]),
      '~contains~3~variants~2~contains~2': Mode(begin: "\\{\\{", relevance: 0),
      '~contains~3': Mode(className: "string", contains: [
        BACKSLASH_ESCAPE
      ], variants: [
        Mode(
            begin: "(u|b)?r?'''",
            end: "'''",
            contains: [BACKSLASH_ESCAPE, Mode(ref: '~contains~0')],
            relevance: 10),
        Mode(
            begin: "(u|b)?r?\"\"\"",
            end: "\"\"\"",
            contains: [BACKSLASH_ESCAPE, Mode(ref: '~contains~0')],
            relevance: 10),
        Mode(begin: "(fr|rf|f)'''", end: "'''", contains: [
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~0'),
          Mode(ref: '~contains~3~variants~2~contains~2'),
          Mode(ref: '~contains~3~variants~2~contains~3')
        ]),
        Mode(begin: "(fr|rf|f)\"\"\"", end: "\"\"\"", contains: [
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~0'),
          Mode(ref: '~contains~3~variants~2~contains~2'),
          Mode(ref: '~contains~3~variants~2~contains~3')
        ]),
        Mode(begin: "(u|r|ur)'", end: "'", relevance: 10),
        Mode(begin: "(u|r|ur)\"", end: "\"", relevance: 10),
        Mode(begin: "(b|br)'", end: "'"),
        Mode(begin: "(b|br)\"", end: "\""),
        Mode(begin: "(fr|rf|f)'", end: "'", contains: [
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~3~variants~2~contains~2'),
          Mode(ref: '~contains~3~variants~2~contains~3')
        ]),
        Mode(begin: "(fr|rf|f)\"", end: "\"", contains: [
          BACKSLASH_ESCAPE,
          Mode(ref: '~contains~3~variants~2~contains~2'),
          Mode(ref: '~contains~3~variants~2~contains~3')
        ]),
        APOS_STRING_MODE,
        QUOTE_STRING_MODE
      ]),
      '~contains~1': Mode(className: "number", relevance: 0, variants: [
        Mode(begin: "\\b(0b[01]+)[lLjJ]?"),
        Mode(begin: "\\b(0o[0-7]+)[lLjJ]?"),
        Mode(
            begin:
                "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)[lLjJ]?")
      ]),
      '~contains~0': Mode(className: "meta", begin: "^(>>>|\\.\\.\\.) "),
    },
    aliases: ["py", "gyp", "ipython"],
    keywords: {
      "keyword":
          "and elif is global as in if from raise for except finally print import pass return exec else break not with class assert yield try while continue del or def lambda async await nonlocal|10",
      "built_in": "Ellipsis NotImplemented",
      "literal": "False None True"
    },
    illegal: "(<\\/|->|\\?)|=>",
    contains: [
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(beginKeywords: "if", relevance: 0),
      Mode(ref: '~contains~3'),
      HASH_COMMENT_MODE,
      Mode(
          variants: [
            Mode(className: "function", beginKeywords: "def"),
            Mode(className: "class", beginKeywords: "class")
          ],
          end: ":",
          illegal: "[\${=;\\n,]",
          contains: [
            UNDERSCORE_TITLE_MODE,
            Mode(className: "params", begin: "\\(", end: "\\)", contains: [
              Mode(self: true),
              Mode(ref: '~contains~0'),
              Mode(ref: '~contains~1'),
              Mode(ref: '~contains~3'),
              HASH_COMMENT_MODE
            ]),
            Mode(begin: "->", endsWithParent: true, keywords: "None")
          ]),
      Mode(className: "meta", begin: "^[\\t ]*@", end: "\$"),
      Mode(begin: "\\b(print|exec)\\(")
    ]);
