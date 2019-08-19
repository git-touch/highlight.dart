import 'common.dart';
import '../highlight.dart';

var leaf = Mode(refs: {}, contains: [
  Mode(
      className: "function",
      begin: "#+[A-Za-z_0-9]*\\(",
      end: " {",
      returnBegin: true,
      excludeEnd: true,
      contains: [
        Mode(className: "keyword", begin: "#+"),
        Mode(className: "title", begin: "[A-Za-z_][A-Za-z_0-9]*"),
        Mode(
            className: "params",
            begin: "\\(",
            end: "\\)",
            endsParent: true,
            contains: [
              Mode(className: "string", begin: "\"", end: "\""),
              Mode(className: "variable", begin: "[A-Za-z_][A-Za-z_0-9]*")
            ])
      ])
]);
