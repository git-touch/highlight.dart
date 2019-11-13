// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final haml = Mode(
    refs: {},
    case_insensitive: true,
    contains: [
      Mode(
          className: "meta",
          begin:
              "^!!!( (5|1\\.1|Strict|Frameset|Basic|Mobile|RDFa|XML\\b.*))?\$",
          relevance: 10),
      Mode(
          className: "comment",
          begin: "^\\s*(!=#|=#|-#|/).*\$",
          end: "false",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 0),
      Mode(
          begin: "^\\s*(-|=|!=)(?!#)",
          starts: Mode(end: "\\n", subLanguage: ["ruby"])),
      Mode(className: "tag", begin: "^\\s*%", contains: [
        Mode(className: "selector-tag", begin: "\\w+"),
        Mode(className: "selector-id", begin: "#[\\w-]+"),
        Mode(className: "selector-class", begin: "\\.[\\w-]+"),
        Mode(begin: "{\\s*", end: "\\s*}", contains: [
          Mode(
              begin: ":\\w+\\s*=>",
              end: ",\\s+",
              returnBegin: true,
              endsWithParent: true,
              contains: [
                Mode(className: "attr", begin: ":\\w+"),
                APOS_STRING_MODE,
                QUOTE_STRING_MODE,
                Mode(begin: "\\w+", relevance: 0)
              ])
        ]),
        Mode(begin: "\\(\\s*", end: "\\s*\\)", excludeEnd: true, contains: [
          Mode(
              begin: "\\w+\\s*=",
              end: "\\s+",
              returnBegin: true,
              endsWithParent: true,
              contains: [
                Mode(className: "attr", begin: "\\w+", relevance: 0),
                APOS_STRING_MODE,
                QUOTE_STRING_MODE,
                Mode(begin: "\\w+", relevance: 0)
              ])
        ])
      ]),
      Mode(begin: "^\\s*[=\\x7e]\\s*"),
      Mode(begin: "#{", starts: Mode(end: "}", subLanguage: ["ruby"]))
    ]);
