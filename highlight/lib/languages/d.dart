// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final d = Mode(
    refs: {},
    lexemes: "[a-zA-Z_]\\w*",
    keywords: {
      "keyword":
          "abstract alias align asm assert auto body break byte case cast catch class const continue debug default delete deprecated do else enum export extern final finally for foreach foreach_reverse|10 goto if immutable import in inout int interface invariant is lazy macro mixin module new nothrow out override package pragma private protected public pure ref return scope shared static struct super switch synchronized template this throw try typedef typeid typeof union unittest version void volatile while with __FILE__ __LINE__ __gshared|10 __thread __traits __DATE__ __EOF__ __TIME__ __TIMESTAMP__ __VENDOR__ __VERSION__",
      "built_in":
          "bool cdouble cent cfloat char creal dchar delegate double dstring float function idouble ifloat ireal long real short string ubyte ucent uint ulong ushort wchar wstring",
      "literal": "false null true"
    },
    contains: [
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(
          className: "comment",
          begin: "\\/\\+",
          end: "\\+\\/",
          contains: [
            Mode(self: true),
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      Mode(
          className: "string",
          begin: "x\"[\\da-fA-F\\s\\n\\r]*\"[cwd]?",
          relevance: 10),
      Mode(
          className: "string",
          begin: "\"",
          contains: [
            Mode(
                begin:
                    "\\\\(['\"\\?\\\\abfnrtv]|u[\\dA-Fa-f]{4}|[0-7]{1,3}|x[\\dA-Fa-f]{2}|U[\\dA-Fa-f]{8})|&[a-zA-Z\\d]{2,};",
                relevance: 0)
          ],
          end: "\"[cwd]?"),
      Mode(className: "string", begin: "[rq]\"", end: "\"[cwd]?", relevance: 5),
      Mode(className: "string", begin: "`", end: "`[cwd]?"),
      Mode(className: "string", begin: "q\"\\{", end: "\\}\""),
      Mode(
          className: "number",
          begin:
              "\\b(((0[xX](([\\da-fA-F][\\da-fA-F_]*|_[\\da-fA-F][\\da-fA-F_]*)\\.([\\da-fA-F][\\da-fA-F_]*|_[\\da-fA-F][\\da-fA-F_]*)|\\.?([\\da-fA-F][\\da-fA-F_]*|_[\\da-fA-F][\\da-fA-F_]*))[pP][+-]?(0|[1-9][\\d_]*|\\d[\\d_]*|[\\d_]+?\\d))|((0|[1-9][\\d_]*|\\d[\\d_]*|[\\d_]+?\\d)(\\.\\d*|([eE][+-]?(0|[1-9][\\d_]*|\\d[\\d_]*|[\\d_]+?\\d)))|\\d+\\.(0|[1-9][\\d_]*|\\d[\\d_]*|[\\d_]+?\\d)(0|[1-9][\\d_]*|\\d[\\d_]*|[\\d_]+?\\d)|\\.(0|[1-9][\\d_]*)([eE][+-]?(0|[1-9][\\d_]*|\\d[\\d_]*|[\\d_]+?\\d))?))([fF]|L|i|[fF]i|Li)?|((0|[1-9][\\d_]*)|0[bB][01_]+|0[xX]([\\da-fA-F][\\da-fA-F_]*|_[\\da-fA-F][\\da-fA-F_]*))(i|[fF]i|Li))",
          relevance: 0),
      Mode(
          className: "number",
          begin:
              "\\b((0|[1-9][\\d_]*)|0[bB][01_]+|0[xX]([\\da-fA-F][\\da-fA-F_]*|_[\\da-fA-F][\\da-fA-F_]*))(L|u|U|Lu|LU|uL|UL)?",
          relevance: 0),
      Mode(
          className: "string",
          begin:
              "'(\\\\(['\"\\?\\\\abfnrtv]|u[\\dA-Fa-f]{4}|[0-7]{1,3}|x[\\dA-Fa-f]{2}|U[\\dA-Fa-f]{8})|&[a-zA-Z\\d]{2,};|.)",
          end: "'",
          illegal: "."),
      Mode(className: "meta", begin: "^#!", end: "\$", relevance: 5),
      Mode(className: "meta", begin: "#(line)", end: "\$", relevance: 5),
      Mode(className: "keyword", begin: "@[a-zA-Z_][a-zA-Z_\\d]*")
    ]);
