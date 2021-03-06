// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final scilab = Mode(
    refs: {
      '~contains~2~contains~1': Mode(
          className: "string",
          begin: "'|\"",
          end: "'|\"",
          contains: [BACKSLASH_ESCAPE, Mode(begin: "''")]),
    },
    aliases: ["sci"],
    lexemes: "%?\\w+",
    keywords: {
      "keyword":
          "abort break case clear catch continue do elseif else endfunction end for function global if pause return resume select try then while",
      "literal": "%f %F %t %T %pi %eps %inf %nan %e %i %z %s",
      "built_in":
          "abs and acos asin atan ceil cd chdir clearglobal cosh cos cumprod deff disp error exec execstr exists exp eye gettext floor fprintf fread fsolve imag isdef isempty isinfisnan isvector lasterror length load linspace list listfiles log10 log2 log max min msprintf mclose mopen ones or pathconvert poly printf prod pwd rand real round sinh sin size gsort sprintf sqrt strcat strcmps tring sum system tanh tan type typename warning zeros matrix"
    },
    illegal: "(\"|#|/\\*|\\s+/\\w+)",
    contains: [
      Mode(
          className: "function",
          beginKeywords: "function",
          end: "\$",
          contains: [
            UNDERSCORE_TITLE_MODE,
            Mode(className: "params", begin: "\\(", end: "\\)")
          ]),
      Mode(
          begin: "[a-zA-Z_][a-zA-Z_0-9]*('+[\\.']*|[\\.']+)",
          end: "",
          relevance: 0),
      Mode(
          begin: "\\[",
          end: "\\]'*[\\.']*",
          relevance: 0,
          contains: [C_NUMBER_MODE, Mode(ref: '~contains~2~contains~1')]),
      Mode(className: "comment", begin: "//", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      C_NUMBER_MODE,
      Mode(ref: '~contains~2~contains~1')
    ]);
