// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final scala = Mode(refs: {
  '~contains~5~contains~0': Mode(
      className: "title",
      begin:
          "[^0-9\\n\\t \"'(),.`{}\\[\\]:;][^\\n\\t \"'(),.`{}\\[\\]:;]+|[^0-9\\n\\t \"'(),.`{}\\[\\]:;=]",
      relevance: 0),
  '~contains~4':
      Mode(className: "type", begin: "\\b[A-Z][A-Za-z0-9_]*", relevance: 0),
  '~contains~2~variants~2~contains~1': Mode(className: "subst", variants: [
    Mode(begin: "\\\$[A-Za-z0-9_]+"),
    Mode(begin: "\\\${", end: "}")
  ]),
}, keywords: {
  "literal": "true false null",
  "keyword":
      "type yield lazy override def with val var sealed abstract private trait object if forSome for while throw finally protected extends import final return else break new catch super class case package default try this match continue throws implicit"
}, contains: [
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE,
  Mode(className: "string", variants: [
    Mode(begin: "\"", end: "\"", illegal: "\\n", contains: [BACKSLASH_ESCAPE]),
    Mode(begin: "\"\"\"", end: "\"\"\"", relevance: 10),
    Mode(begin: "[a-z]+\"", end: "\"", illegal: "\\n", contains: [
      BACKSLASH_ESCAPE,
      Mode(ref: '~contains~2~variants~2~contains~1')
    ]),
    Mode(
        className: "string",
        begin: "[a-z]+\"\"\"",
        end: "\"\"\"",
        contains: [Mode(ref: '~contains~2~variants~2~contains~1')],
        relevance: 10)
  ]),
  Mode(className: "symbol", begin: "'\\w[\\w\\d_]*(?!')"),
  Mode(ref: '~contains~4'),
  Mode(
      className: "function",
      beginKeywords: "def",
      end: "[:={\\[(\\n;]",
      excludeEnd: true,
      contains: [Mode(ref: '~contains~5~contains~0')]),
  Mode(
      className: "class",
      beginKeywords: "class object trait type",
      end: "[:={\\[\\n;]",
      excludeEnd: true,
      contains: [
        Mode(beginKeywords: "extends with", relevance: 10),
        Mode(
            begin: "\\[",
            end: "\\]",
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
            contains: [Mode(ref: '~contains~4')]),
        Mode(
            className: "params",
            begin: "\\(",
            end: "\\)",
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
            contains: [Mode(ref: '~contains~4')]),
        Mode(ref: '~contains~5~contains~0')
      ]),
  C_NUMBER_MODE,
  Mode(className: "meta", begin: "@[A-Za-z]+")
]);
