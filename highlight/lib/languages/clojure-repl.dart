import '../src/mode.dart';
import '../src/common_modes.dart';

var clojureRepl = Mode(refs: {}, contains: [
  Mode(
      className: "meta",
      begin: "^([\\w.-]+|\\s*#_)?=>",
      starts: Mode(end: "\$", subLanguage: ["clojure"]))
]);
