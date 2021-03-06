// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final ceylon = Mode(
    refs: {
      '~contains~4~contains~0~contains~3': Mode(
          className: "number",
          begin:
              "#[0-9a-fA-F_]+|\\\$[01_]+|[0-9_]+(?:\\.[0-9_](?:[eE][+-]?\\d+)?)?[kMGTPmunpf]?",
          relevance: 0),
      '~contains~4~contains~0~contains~2':
          Mode(className: "string", begin: "'", end: "'"),
      '~contains~4':
          Mode(className: "string", begin: "\"", end: "\"", contains: [
        Mode(
            className: "subst",
            excludeBegin: true,
            excludeEnd: true,
            begin: "``",
            end: "``",
            keywords:
                "assembly module package import alias class interface object given value assign void function new of extends satisfies abstracts in out return break continue throw assert dynamic if else switch case for while try catch finally then let this outer super is exists nonempty",
            relevance: 10,
            contains: [
              Mode(ref: '~contains~3'),
              Mode(ref: '~contains~4'),
              Mode(ref: '~contains~4~contains~0~contains~2'),
              Mode(ref: '~contains~4~contains~0~contains~3')
            ])
      ]),
      '~contains~3': Mode(
          className: "string", begin: "\"\"\"", end: "\"\"\"", relevance: 10),
    },
    keywords: {
      "keyword":
          "assembly module package import alias class interface object given value assign void function new of extends satisfies abstracts in out return break continue throw assert dynamic if else switch case for while try catch finally then let this outer super is exists nonempty shared abstract formal default actual variable late native deprecatedfinal sealed annotation suppressWarnings small",
      "meta": "doc by license see throws tagged"
    },
    illegal: "\\\$[^01]|#[^0-9a-fA-F]",
    contains: [
      C_LINE_COMMENT_MODE,
      Mode(className: "comment", begin: "/\\*", end: "\\*/", contains: [
        Mode(self: true),
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(className: "meta", begin: "@[a-z]\\w*(?:\\:\"[^\"]*\")?"),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(ref: '~contains~4~contains~0~contains~2'),
      Mode(ref: '~contains~4~contains~0~contains~3')
    ]);
