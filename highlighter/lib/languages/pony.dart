// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final pony = Mode(refs: {}, keywords: {
  "keyword":
      "actor addressof and as be break class compile_error compile_intrinsic consume continue delegate digestof do else elseif embed end error for fun if ifdef in interface is isnt lambda let match new not object or primitive recover repeat return struct then trait try type until use var where while with xor",
  "meta": "iso val tag trn box ref",
  "literal": "this false true"
}, contains: [
  Mode(className: "type", begin: "\\b_?[A-Z][\\w]*", relevance: 0),
  Mode(className: "string", begin: "\"\"\"", end: "\"\"\"", relevance: 10),
  Mode(
      className: "string",
      begin: "\"",
      end: "\"",
      contains: [BACKSLASH_ESCAPE]),
  Mode(
      className: "string",
      begin: "'",
      end: "'",
      contains: [BACKSLASH_ESCAPE],
      relevance: 0),
  Mode(begin: "[a-zA-Z]\\w*'", relevance: 0),
  Mode(
      className: "number",
      begin:
          "(-?)(\\b0[xX][a-fA-F0-9]+|\\b0[bB][01]+|(\\b\\d+(_\\d+)?(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
      relevance: 0),
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE
]);
