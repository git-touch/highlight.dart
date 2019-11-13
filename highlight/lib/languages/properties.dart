// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final properties = Mode(
    refs: {
      '~contains~1~starts': Mode(
          end: "([ \\t\\f]*[:=][ \\t\\f]*|[ \\t\\f]+)",
          relevance: 0,
          starts: Mode(
              className: "string",
              end: "\$",
              relevance: 0,
              contains: [Mode(begin: "\\\\\\n")])),
    },
    case_insensitive: true,
    illegal: "\\S",
    contains: [
      Mode(className: "comment", begin: "^\\s*[!#]", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(
          begin:
              "([^\\\\\\W:= \\t\\f\\n]|\\\\.)+([ \\t\\f]*[:=][ \\t\\f]*|[ \\t\\f]+)",
          returnBegin: true,
          contains: [
            Mode(
                className: "attr",
                begin: "([^\\\\\\W:= \\t\\f\\n]|\\\\.)+",
                endsParent: true,
                relevance: 0)
          ],
          starts: Mode(ref: '~contains~1~starts')),
      Mode(
          begin:
              "([^\\\\:= \\t\\f\\n]|\\\\.)+([ \\t\\f]*[:=][ \\t\\f]*|[ \\t\\f]+)",
          returnBegin: true,
          relevance: 0,
          contains: [
            Mode(
                className: "meta",
                begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+",
                endsParent: true,
                relevance: 0)
          ],
          starts: Mode(ref: '~contains~1~starts')),
      Mode(
          className: "attr",
          relevance: 0,
          begin: "([^\\\\:= \\t\\f\\n]|\\\\.)+[ \\t\\f]*\$")
    ]);
