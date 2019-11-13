// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final dsconfig = Mode(
    refs: {},
    keywords: "dsconfig",
    contains: [
      Mode(
          className: "keyword",
          begin: "^dsconfig",
          end: "\\s",
          excludeEnd: true,
          relevance: 10),
      Mode(
          className: "built_in",
          begin: "(list|create|get|set|delete)-(\\w+)",
          end: "\\s",
          excludeEnd: true,
          illegal: "!@#\$%^&*()",
          relevance: 10),
      Mode(
          className: "built_in",
          begin: "--(\\w+)",
          end: "\\s",
          excludeEnd: true),
      Mode(className: "string", begin: "\"", end: "\""),
      Mode(className: "string", begin: "'", end: "'"),
      Mode(
          className: "string",
          begin: "[\\w-?]+:\\w+",
          end: "\\W",
          relevance: 0),
      Mode(className: "string", begin: "\\w+-?\\w+", end: "\\W", relevance: 0),
      HASH_COMMENT_MODE
    ]);
