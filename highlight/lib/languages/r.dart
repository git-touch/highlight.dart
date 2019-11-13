// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final r = Mode(refs: {}, contains: [
  HASH_COMMENT_MODE,
  Mode(
      begin: "([a-zA-Z]|\\.[a-zA-Z.])[a-zA-Z0-9._]*",
      lexemes: "([a-zA-Z]|\\.[a-zA-Z.])[a-zA-Z0-9._]*",
      keywords: {
        "keyword":
            "function if in break next repeat else for return switch while try tryCatch stop warning require library attach detach source setMethod setGeneric setGroupGeneric setClass ...",
        "literal":
            "NULL NA TRUE FALSE T F Inf NaN NA_integer_|10 NA_real_|10 NA_character_|10 NA_complex_|10"
      },
      relevance: 0),
  Mode(className: "number", begin: "0[xX][0-9a-fA-F]+[Li]?\\b", relevance: 0),
  Mode(
      className: "number", begin: "\\d+(?:[eE][+\\-]?\\d*)?L\\b", relevance: 0),
  Mode(className: "number", begin: "\\d+\\.(?!\\d)(?:i\\b)?", relevance: 0),
  Mode(
      className: "number",
      begin: "\\d+(?:\\.\\d*)?(?:[eE][+\\-]?\\d*)?i?\\b",
      relevance: 0),
  Mode(
      className: "number",
      begin: "\\.\\d+(?:[eE][+\\-]?\\d*)?i?\\b",
      relevance: 0),
  Mode(begin: "`", end: "`", relevance: 0),
  Mode(
      className: "string",
      contains: [BACKSLASH_ESCAPE],
      variants: [Mode(begin: "\"", end: "\""), Mode(begin: "'", end: "'")])
]);
