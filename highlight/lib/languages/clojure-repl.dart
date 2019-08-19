import 'common.dart';
import '../highlight.dart';

var clojureRepl = Mode(refs: {}, contains: [
  Mode(
      className: "meta",
      begin: "^([\\w.-]+|\\s*#_)?=>",
      starts: Mode(end: "\$", subLanguage: ["clojure"]))
]);
