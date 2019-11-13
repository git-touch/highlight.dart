// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final lua = Mode(
    refs: {
      '~contains~1~contains~0': Mode(
          begin: "\\[=*\\[", end: "\\]=*\\]", contains: [Mode(self: true)]),
      '~contains~1': Mode(
          className: "comment",
          begin: "--\\[=*\\[",
          end: "\\]=*\\]",
          contains: [
            Mode(ref: '~contains~1~contains~0'),
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      '~contains~0': Mode(
          className: "comment",
          begin: "--(?!\\[=*\\[)",
          end: "\$",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ]),
    },
    lexemes: "[a-zA-Z_]\\w*",
    keywords: {
      "literal": "true false nil",
      "keyword":
          "and break do else elseif end for goto if in local not or repeat return then until while",
      "built_in":
          "_G _ENV _VERSION __index __newindex __mode __call __metatable __tostring __len __gc __add __sub __mul __div __mod __pow __concat __unm __eq __lt __le assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstringmodule next pairs pcall print rawequal rawget rawset require select setfenvsetmetatable tonumber tostring type unpack xpcall arg selfcoroutine resume yield status wrap create running debug getupvalue debug sethook getmetatable gethook setmetatable setlocal traceback setfenv getinfo setupvalue getlocal getregistry getfenv io lines write close flush open output type read stderr stdin input stdout popen tmpfile math log max acos huge ldexp pi cos tanh pow deg tan cosh sinh random randomseed frexp ceil floor rad abs sqrt modf asin min mod fmod log10 atan2 exp sin atan os exit setlocale date getenv difftime remove time clock tmpname rename execute package preload loadlib loaded loaders cpath config path seeall string sub upper len gfind rep find match char dump gmatch reverse byte format gsub lower table setn insert getn foreachi maxn foreach concat sort remove"
    },
    contains: [
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      Mode(
          className: "function",
          beginKeywords: "function",
          end: "\\)",
          contains: [
            Mode(
                className: "title",
                begin: "([_a-zA-Z]\\w*\\.)*([_a-zA-Z]\\w*:)?[_a-zA-Z]\\w*",
                relevance: 0),
            Mode(
                className: "params",
                begin: "\\(",
                endsWithParent: true,
                contains: [Mode(ref: '~contains~0'), Mode(ref: '~contains~1')]),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~1')
          ]),
      C_NUMBER_MODE,
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      Mode(
          className: "string",
          begin: "\\[=*\\[",
          end: "\\]=*\\]",
          contains: [Mode(ref: '~contains~1~contains~0')],
          relevance: 5)
    ]);
