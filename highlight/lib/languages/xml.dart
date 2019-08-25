// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

var xml = Mode(
    refs: {
      '~contains~5~contains~0':
          Mode(endsWithParent: true, illegal: "<", relevance: 0, contains: [
        Mode(className: "attr", begin: "[A-Za-z0-9\\._:-]+", relevance: 0),
        Mode(begin: "=\\s*", relevance: 0, contains: [
          Mode(className: "string", endsParent: true, variants: [
            Mode(begin: "\"", end: "\""),
            Mode(begin: "'", end: "'"),
            Mode(begin: "[^\\s\"'=<>`]+")
          ])
        ])
      ]),
    },
    aliases: [
      "html",
      "xhtml",
      "rss",
      "atom",
      "xjb",
      "xsd",
      "xsl",
      "plist",
      "wsf"
    ],
    case_insensitive: true,
    contains: [
      Mode(
          className: "meta",
          begin: "<!DOCTYPE",
          end: ">",
          relevance: 10,
          contains: [Mode(begin: "\\[", end: "\\]")]),
      Mode(
          className: "comment",
          begin: "<!--",
          end: "-->",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      Mode(begin: "<\\!\\[CDATA\\[", end: "\\]\\]>", relevance: 10),
      Mode(className: "meta", begin: "<\\?xml", end: "\\?>", relevance: 10),
      Mode(begin: "<\\?(php)?", end: "\\?>", subLanguage: [
        "php"
      ], contains: [
        Mode(begin: "/\\*", end: "\\*/", skip: true),
        Mode(begin: "b\"", end: "\"", skip: true),
        Mode(begin: "b'", end: "'", skip: true),
        Mode(
            className: null,
            begin: "'",
            end: "'",
            illegal: null,
            contains: null,
            skip: true),
        Mode(
            className: null,
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: null,
            skip: true)
      ]),
      Mode(
          className: "tag",
          begin: "<style(?=\\s|>|\$)",
          end: ">",
          keywords: {"name": "style"},
          contains: [Mode(ref: '~contains~5~contains~0')],
          starts: Mode(
              end: "</style>", returnEnd: true, subLanguage: ["css", "xml"])),
      Mode(
          className: "tag",
          begin: "<script(?=\\s|>|\$)",
          end: ">",
          keywords: {"name": "script"},
          contains: [Mode(ref: '~contains~5~contains~0')],
          starts: Mode(end: "</script>", returnEnd: true, subLanguage: [
            "actionscript",
            "javascript",
            "handlebars",
            "xml",
            "vbscript"
          ])),
      Mode(className: "tag", begin: "</?", end: "/?>", contains: [
        Mode(className: "name", begin: "[^\\/><\\s]+", relevance: 0),
        Mode(ref: '~contains~5~contains~0')
      ])
    ]);
