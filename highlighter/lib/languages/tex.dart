// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final tex = Mode(refs: {
  '~contains~0': Mode(className: "tag", begin: "\\\\", relevance: 0, contains: [
    Mode(
        className: "name",
        variants: [
          Mode(begin: "[a-zA-Z\\u0430-\\u044f\\u0410-\\u042f]+[*]?"),
          Mode(begin: "[^a-zA-Z\\u0430-\\u044f\\u0410-\\u042f0-9]")
        ],
        starts: Mode(endsWithParent: true, relevance: 0, contains: [
          Mode(className: "string", variants: [
            Mode(begin: "\\[", end: "\\]"),
            Mode(begin: "\\{", end: "\\}")
          ]),
          Mode(
              begin: "\\s*=\\s*",
              endsWithParent: true,
              relevance: 0,
              contains: [
                Mode(
                    className: "number",
                    begin: "-?\\d*\\.?\\d+(pt|pc|mm|cm|in|dd|cc|ex|em)?")
              ])
        ]))
  ]),
}, contains: [
  Mode(ref: '~contains~0'),
  Mode(
      className: "formula",
      contains: [Mode(ref: '~contains~0')],
      relevance: 0,
      variants: [
        Mode(begin: "\\\$\\\$", end: "\\\$\\\$"),
        Mode(begin: "\\\$", end: "\\\$")
      ]),
  Mode(
      className: "comment",
      begin: "%",
      end: "\$",
      contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 0)
]);
