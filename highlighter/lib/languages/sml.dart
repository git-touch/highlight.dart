// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final sml = Mode(
    refs: {},
    aliases: ["ml"],
    keywords: {
      "keyword":
          "abstype and andalso as case datatype do else end eqtype exception fn fun functor handle if in include infix infixr let local nonfix of op open orelse raise rec sharing sig signature struct structure then type val with withtype where while",
      "built_in":
          "array bool char exn int list option order real ref string substring vector unit word",
      "literal": "true false NONE SOME LESS EQUAL GREATER nil"
    },
    illegal: "\\/\\/|>>",
    lexemes: "[a-z_]\\w*!?",
    contains: [
      Mode(className: "literal", begin: "\\[(\\|\\|)?\\]|\\(\\)", relevance: 0),
      Mode(className: "comment", begin: "\\(\\*", end: "\\*\\)", contains: [
        Mode(self: true),
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(className: "symbol", begin: "'[A-Za-z_](?!')[\\w']*"),
      Mode(className: "type", begin: "`[A-Z][\\w']*"),
      Mode(className: "type", begin: "\\b[A-Z][\\w']*", relevance: 0),
      Mode(begin: "[a-z_]\\w*'[\\w']*"),
      Mode(
          className: "string",
          begin: "'",
          end: "'",
          illegal: "\\n",
          contains: [BACKSLASH_ESCAPE],
          relevance: 0),
      Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: [BACKSLASH_ESCAPE]),
      Mode(
          className: "number",
          begin:
              "\\b(0[xX][a-fA-F0-9_]+[Lln]?|0[oO][0-7_]+[Lln]?|0[bB][01_]+[Lln]?|[0-9][0-9_]*([Lln]|(\\.[0-9_]*)?([eE][-+]?[0-9_]+)?)?)",
          relevance: 0),
      Mode(begin: "[-=]>")
    ]);
