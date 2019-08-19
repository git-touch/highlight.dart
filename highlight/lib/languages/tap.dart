import 'common.dart';
import '../highlight.dart';

var tap = Mode(
    refs: {},
    case_insensitive: true,
    contains: [
      HASH_COMMENT_MODE,
      Mode(className: "meta", variants: [
        Mode(begin: "^TAP version (\\d+)\$"),
        Mode(begin: "^1\\.\\.(\\d+)\$")
      ]),
      Mode(
          begin: "(s+)?---\$",
          end: "\\.\\.\\.\$",
          subLanguage: ["yaml"],
          relevance: 0),
      Mode(className: "number", begin: " (\\d+) "),
      Mode(
          className: "symbol",
          variants: [Mode(begin: "^ok"), Mode(begin: "^not ok")])
    ]);
