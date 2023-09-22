// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';

final subunit = Mode(
    refs: {},
    case_insensitive: true,
    contains: [
      Mode(className: "string", begin: "\\[\n(multipart)?", end: "\\]\n"),
      Mode(
          className: "string",
          begin: "\\d{4}-\\d{2}-\\d{2}(\\s+)\\d{2}:\\d{2}:\\d{2}.\\d+Z"),
      Mode(className: "string", begin: "(\\+|-)\\d+"),
      Mode(className: "keyword", relevance: 10, variants: [
        Mode(
            begin:
                "^(test|testing|success|successful|failure|error|skip|xfail|uxsuccess)(:?)\\s+(test)?"),
        Mode(begin: "^progress(:?)(\\s+)?(pop|push)?"),
        Mode(begin: "^tags:"),
        Mode(begin: "^time:")
      ])
    ]);
