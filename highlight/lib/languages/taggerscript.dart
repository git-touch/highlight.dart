import '../src/mode.dart';
import '../src/common_modes.dart';

var taggerscript = Mode(refs: {}, contains: [
  Mode(
      className: "comment",
      begin: "\\\$noop\\(",
      end: "\\)",
      contains: [
        Mode(
            begin: "\\(",
            end: "\\)",
            contains: [Mode(self: true), Mode(begin: "\\\\.")])
      ],
      relevance: 10),
  Mode(
      className: "keyword",
      begin: "\\\$(?!noop)[a-zA-Z][_a-zA-Z0-9]*",
      end: "\\(",
      excludeEnd: true),
  Mode(className: "variable", begin: "%[_a-zA-Z0-9:]*", end: "%"),
  Mode(className: "symbol", begin: "\\\\.")
]);
