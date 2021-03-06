// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final cos = Mode(
    refs: {},
    case_insensitive: true,
    aliases: ["cos", "cls"],
    keywords:
        "property parameter class classmethod clientmethod extends as break catch close continue do d|0 else elseif for goto halt hang h|0 if job j|0 kill k|0 lock l|0 merge new open quit q|0 read r|0 return set s|0 tcommit throw trollback try tstart use view while write w|0 xecute x|0 zkill znspace zn ztrap zwrite zw zzdump zzwrite print zbreak zinsert zload zprint zremove zsave zzprint mv mvcall mvcrt mvdim mvprint zquit zsync ascii",
    contains: [
      Mode(
          className: "number",
          begin: "\\b(\\d+(\\.\\d*)?|\\.\\d+)",
          relevance: 0),
      Mode(className: "string", variants: [
        Mode(
            begin: "\"",
            end: "\"",
            contains: [Mode(begin: "\"\"", relevance: 0)])
      ]),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(className: "comment", begin: ";", end: "\$", relevance: 0),
      Mode(className: "built_in", begin: "(?:\\\$\\\$?|\\.\\.)\\^?[a-zA-Z]+"),
      Mode(className: "built_in", begin: "\\\$\\\$\\\$[a-zA-Z]+"),
      Mode(className: "built_in", begin: "%[a-z]+(?:\\.[a-z]+)*"),
      Mode(className: "symbol", begin: "\\^%?[a-zA-Z][\\w]*"),
      Mode(className: "keyword", begin: "##class|##super|#define|#dim"),
      Mode(
          begin: "&sql\\(",
          end: "\\)",
          excludeBegin: true,
          excludeEnd: true,
          subLanguage: ["sql"]),
      Mode(
          begin: "&(js|jscript|javascript)<",
          end: ">",
          excludeBegin: true,
          excludeEnd: true,
          subLanguage: ["javascript"]),
      Mode(begin: "&html<\\s*<", end: ">\\s*>", subLanguage: ["xml"])
    ]);
