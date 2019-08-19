import 'common.dart';
import '../highlight.dart';

var bnf = Mode(refs: {}, contains: [
  Mode(className: "attribute", begin: "<", end: ">"),
  Mode(
      begin: "::=",
      starts: Mode(end: "\$", contains: [
        Mode(begin: "<", end: ">"),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        APOS_STRING_MODE,
        QUOTE_STRING_MODE
      ]))
]);
