// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final profile = Mode(refs: {}, contains: [
  C_NUMBER_MODE,
  Mode(
      begin: "[a-zA-Z_][\\da-zA-Z_]+\\.[\\da-zA-Z_]{1,3}",
      end: ":",
      excludeEnd: true),
  Mode(
      begin: "(ncalls|tottime|cumtime)",
      end: "\$",
      keywords: "ncalls tottime|10 cumtime|10 filename",
      relevance: 10),
  Mode(
      begin: "function calls",
      end: "\$",
      contains: [C_NUMBER_MODE],
      relevance: 10),
  APOS_STRING_MODE,
  QUOTE_STRING_MODE,
  Mode(
      className: "string",
      begin: "\\(",
      end: "\\)\$",
      excludeBegin: true,
      excludeEnd: true,
      relevance: 0)
]);
