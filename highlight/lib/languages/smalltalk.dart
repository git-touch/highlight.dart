// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final smalltalk = Mode(
    refs: {
      '~contains~6': Mode(className: "string", begin: "\\\$.{1}"),
      '~contains~5': Mode(className: "symbol", begin: "#[a-zA-Z_]\\w*"),
    },
    aliases: ["st"],
    keywords: "self super nil true false thisContext",
    contains: [
      Mode(className: "comment", begin: "\"", end: "\"", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      APOS_STRING_MODE,
      Mode(className: "type", begin: "\\b[A-Z][A-Za-z0-9_]*", relevance: 0),
      Mode(begin: "[a-z][a-zA-Z0-9_]*:", relevance: 0),
      C_NUMBER_MODE,
      Mode(ref: '~contains~5'),
      Mode(ref: '~contains~6'),
      Mode(
          begin: "\\|[ ]*[a-z][a-zA-Z0-9_]*([ ]+[a-z][a-zA-Z0-9_]*)*[ ]*\\|",
          returnBegin: true,
          end: "\\|",
          illegal: "\\S",
          contains: [Mode(begin: "(\\|[ ]*)?[a-z][a-zA-Z0-9_]*")]),
      Mode(begin: "\\#\\(", end: "\\)", contains: [
        APOS_STRING_MODE,
        Mode(ref: '~contains~6'),
        C_NUMBER_MODE,
        Mode(ref: '~contains~5')
      ])
    ]);
