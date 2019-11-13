// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final prolog = Mode(refs: {
  '~contains~2~contains~4~contains~9': Mode(
      className: "string", begin: "`", end: "`", contains: [BACKSLASH_ESCAPE]),
  '~contains~2~contains~4~contains~5': Mode(
      className: "comment",
      begin: "%",
      end: "\$",
      contains: [PHRASAL_WORDS_MODE]),
  '~contains~2~contains~4~contains~11':
      Mode(className: "string", begin: "0\\'\\\\s"),
  '~contains~2~contains~4~contains~10':
      Mode(className: "string", begin: "0\\'(\\\\\\'|.)"),
  '~contains~2~contains~4': Mode(begin: "\\[", end: "\\]", contains: [
    Mode(ref: '~contains~0'),
    Mode(ref: '~contains~1'),
    Mode(ref: '~contains~2'),
    Mode(ref: '~contains~2~contains~3'),
    Mode(ref: '~contains~2~contains~4'),
    Mode(ref: '~contains~2~contains~4~contains~5'),
    C_BLOCK_COMMENT_MODE,
    QUOTE_STRING_MODE,
    APOS_STRING_MODE,
    Mode(ref: '~contains~2~contains~4~contains~9'),
    Mode(ref: '~contains~2~contains~4~contains~10'),
    Mode(ref: '~contains~2~contains~4~contains~11'),
    C_NUMBER_MODE
  ]),
  '~contains~2~contains~3': Mode(begin: ":-"),
  '~contains~2': Mode(begin: "\\(", end: "\\)", relevance: 0, contains: [
    Mode(ref: '~contains~0'),
    Mode(ref: '~contains~1'),
    Mode(ref: '~contains~2'),
    Mode(ref: '~contains~2~contains~3'),
    Mode(ref: '~contains~2~contains~4'),
    Mode(ref: '~contains~2~contains~4~contains~5'),
    C_BLOCK_COMMENT_MODE,
    QUOTE_STRING_MODE,
    APOS_STRING_MODE,
    Mode(ref: '~contains~2~contains~4~contains~9'),
    Mode(ref: '~contains~2~contains~4~contains~10'),
    Mode(ref: '~contains~2~contains~4~contains~11'),
    C_NUMBER_MODE
  ]),
  '~contains~1': Mode(
      className: "symbol",
      variants: [
        Mode(begin: "[A-Z][a-zA-Z0-9_]*"),
        Mode(begin: "_[A-Za-z0-9_]*")
      ],
      relevance: 0),
  '~contains~0': Mode(begin: "[a-z][A-Za-z0-9_]*", relevance: 0),
}, contains: [
  Mode(ref: '~contains~0'),
  Mode(ref: '~contains~1'),
  Mode(ref: '~contains~2'),
  Mode(ref: '~contains~2~contains~3'),
  Mode(ref: '~contains~2~contains~4'),
  Mode(ref: '~contains~2~contains~4~contains~5'),
  C_BLOCK_COMMENT_MODE,
  QUOTE_STRING_MODE,
  APOS_STRING_MODE,
  Mode(ref: '~contains~2~contains~4~contains~9'),
  Mode(ref: '~contains~2~contains~4~contains~10'),
  Mode(ref: '~contains~2~contains~4~contains~11'),
  C_NUMBER_MODE,
  Mode(begin: "\\.\$")
]);
