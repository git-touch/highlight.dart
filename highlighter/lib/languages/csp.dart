// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final csp = Mode(
    refs: {},
    case_insensitive: false,
    lexemes: "[a-zA-Z][a-zA-Z0-9_-]*",
    keywords: {
      "keyword":
          "base-uri child-src connect-src default-src font-src form-action frame-ancestors frame-src img-src media-src object-src plugin-types report-uri sandbox script-src style-src"
    },
    contains: [
      Mode(className: "string", begin: "'", end: "'"),
      Mode(
          className: "attribute", begin: "^Content", end: ":", excludeEnd: true)
    ]);
