import 'mode.dart';

var BACKSLASH_ESCAPE = Mode(begin: "\\\\[\\s\\S]", relevance: 0);
var APOS_STRING_MODE = Mode(
    className: "string",
    begin: "'",
    end: "'",
    illegal: "\\n",
    contains: [Mode(begin: "\\\\[\\s\\S]", relevance: 0)]);
var QUOTE_STRING_MODE = Mode(
    className: "string",
    begin: "\"",
    end: "\"",
    illegal: "\\n",
    contains: [Mode(begin: "\\\\[\\s\\S]", relevance: 0)]);
var PHRASAL_WORDS_MODE = Mode(
    begin:
        "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b");
var C_LINE_COMMENT_MODE =
    Mode(className: "comment", begin: "//", end: "\$", contains: [
  Mode(
      begin:
          "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b"),
  Mode(className: "doctag", begin: "(?:TODO|FIXME|NOTE|BUG|XXX):", relevance: 0)
]);
var C_BLOCK_COMMENT_MODE =
    Mode(className: "comment", begin: "/\\*", end: "\\*/", contains: [
  Mode(
      begin:
          "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b"),
  Mode(className: "doctag", begin: "(?:TODO|FIXME|NOTE|BUG|XXX):", relevance: 0)
]);
var HASH_COMMENT_MODE =
    Mode(className: "comment", begin: "#", end: "\$", contains: [
  Mode(
      begin:
          "\\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\\b"),
  Mode(className: "doctag", begin: "(?:TODO|FIXME|NOTE|BUG|XXX):", relevance: 0)
]);
var NUMBER_MODE =
    Mode(className: "number", begin: "\\b\\d+(\\.\\d+)?", relevance: 0);
var C_NUMBER_MODE = Mode(
    className: "number",
    begin:
        "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
    relevance: 0);
var BINARY_NUMBER_MODE =
    Mode(className: "number", begin: "\\b(0b[01]+)", relevance: 0);
var CSS_NUMBER_MODE = Mode(
    className: "number",
    begin:
        "\\b\\d+(\\.\\d+)?(%|em|ex|ch|rem|vw|vh|vmin|vmax|cm|mm|in|pt|pc|px|deg|grad|rad|turn|s|ms|Hz|kHz|dpi|dpcm|dppx)?",
    relevance: 0);
var REGEXP_MODE = Mode(
    className: "regexp",
    begin: "\\/",
    end: "\\/[gimuy]*",
    illegal: "\\n",
    contains: [
      Mode(begin: "\\\\[\\s\\S]", relevance: 0),
      Mode(
          begin: "\\[",
          end: "\\]",
          relevance: 0,
          contains: [Mode(begin: "\\\\[\\s\\S]", relevance: 0)])
    ]);
var TITLE_MODE = Mode(className: "title", begin: "[a-zA-Z]\\w*", relevance: 0);
var UNDERSCORE_TITLE_MODE =
    Mode(className: "title", begin: "[a-zA-Z_]\\w*", relevance: 0);
var METHOD_GUARD = Mode(begin: "\\.\\s*[a-zA-Z_]\\w*", relevance: 0);
