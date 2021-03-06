// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final diff = Mode(refs: {}, aliases: [
  "patch"
], contains: [
  Mode(className: "meta", relevance: 10, variants: [
    Mode(begin: "^@@ +\\-\\d+,\\d+ +\\+\\d+,\\d+ +@@\$"),
    Mode(begin: "^\\*\\*\\* +\\d+,\\d+ +\\*\\*\\*\\*\$"),
    Mode(begin: "^\\-\\-\\- +\\d+,\\d+ +\\-\\-\\-\\-\$")
  ]),
  Mode(className: "comment", variants: [
    Mode(begin: "Index: ", end: "\$"),
    Mode(begin: "={3,}", end: "\$"),
    Mode(begin: "^\\-{3}", end: "\$"),
    Mode(begin: "^\\*{3} ", end: "\$"),
    Mode(begin: "^\\+{3}", end: "\$"),
    Mode(begin: "^\\*{15}\$")
  ]),
  Mode(className: "addition", begin: "^\\+", end: "\$"),
  Mode(className: "deletion", begin: "^\\-", end: "\$"),
  Mode(className: "addition", begin: "^\\!", end: "\$")
]);
