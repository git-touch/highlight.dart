// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final http = Mode(
    refs: {},
    aliases: ["https"],
    illegal: "\\S",
    contains: [
      Mode(
          begin: "^HTTP/[0-9\\.]+",
          end: "\$",
          contains: [Mode(className: "number", begin: "\\b\\d{3}\\b")]),
      Mode(
          begin: "^[A-Z]+ (.*?) HTTP/[0-9\\.]+\$",
          returnBegin: true,
          end: "\$",
          contains: [
            Mode(
                className: "string",
                begin: " ",
                end: " ",
                excludeBegin: true,
                excludeEnd: true),
            Mode(begin: "HTTP/[0-9\\.]+"),
            Mode(className: "keyword", begin: "[A-Z]+")
          ]),
      Mode(
          className: "attribute",
          begin: "^\\w",
          end: ": ",
          excludeEnd: true,
          illegal: "\\n|\\s|=",
          starts: Mode(end: "\$", relevance: 0)),
      Mode(begin: "\\n\\n", starts: Mode(subLanguage: [], endsWithParent: true))
    ]);
