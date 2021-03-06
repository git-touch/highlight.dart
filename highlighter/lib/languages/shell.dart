// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final shell = Mode(refs: {}, aliases: [
  "console"
], contains: [
  Mode(
      className: "meta",
      begin: "^\\s{0,3}[/\\w\\d\\[\\]()@-]*[>%\$#]",
      starts: Mode(end: "\$", subLanguage: ["bash"]))
]);
