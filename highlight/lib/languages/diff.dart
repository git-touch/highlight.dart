import 'common.dart';
import '../highlight.dart';

var diff = Mode(refs: {}, aliases: [
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
    Mode(begin: "\\*{5}", end: "\\*{5}\$")
  ]),
  Mode(className: "addition", begin: "^\\+", end: "\$"),
  Mode(className: "deletion", begin: "^\\-", end: "\$"),
  Mode(className: "addition", begin: "^\\!", end: "\$")
]);
