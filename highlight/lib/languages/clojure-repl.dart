// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final clojureRepl = Mode(refs: {}, contains: [
  Mode(
      className: "meta",
      begin: "^([\\w.-]+|\\s*#_)?=>",
      starts: Mode(end: "\$", subLanguage: ["clojure"]))
]);
