import 'common.dart';
import '../highlight.dart';

var shell = Mode(refs: {}, aliases: [
  "console"
], contains: [
  Mode(
      className: "meta",
      begin: "^\\s{0,3}[\\w\\d\\[\\]()@-]*[>%\$#]",
      starts: Mode(end: "\$", subLanguage: ["bash"]))
]);
