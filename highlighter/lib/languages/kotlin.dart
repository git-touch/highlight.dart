// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final kotlin = Mode(refs: {
  '~contains~7~contains~2~contains~0~contains~0': Mode(variants: [
    Mode(className: "type", begin: "[a-zA-Z_]\\w*"),
    Mode(
        begin: "\\(",
        end: "\\)",
        contains: [Mode(ref: '~contains~7~contains~2~contains~0~contains~0')])
  ]),
  '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2':
      Mode(begin: "\"", end: "\"", illegal: "\\n", contains: [
    BACKSLASH_ESCAPE,
    Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~0'),
    Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~1')
  ]),
  '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1':
      Mode(begin: "'", end: "'", illegal: "\\n", contains: [BACKSLASH_ESCAPE]),
  '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1':
      Mode(className: "string", variants: [
    Mode(ref: '~contains~6~contains~0~contains~0~variants~0'),
    Mode(
        ref:
            '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1'),
    Mode(
        ref:
            '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2')
  ]),
  '~contains~6~contains~0~contains~0~variants~0~contains~1':
      Mode(className: "subst", begin: "\\\${", end: "}", contains: [
    C_NUMBER_MODE,
    Mode(
        ref:
            '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1')
  ]),
  '~contains~6~contains~0~contains~0~variants~0~contains~0':
      Mode(className: "variable", begin: "\\\$[a-zA-Z_]\\w*"),
  '~contains~6~contains~0~contains~0~variants~0':
      Mode(begin: "\"\"\"", end: "\"\"\"(?=[^\"])", contains: [
    Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~0'),
    Mode(ref: '~contains~6~contains~0~contains~0~variants~0~contains~1')
  ]),
  '~contains~6': Mode(className: "meta", begin: "@[a-zA-Z_]\\w*", contains: [
    Mode(begin: "\\(", end: "\\)", contains: [
      Mode(className: "meta-string", variants: [
        Mode(ref: '~contains~6~contains~0~contains~0~variants~0'),
        Mode(
            ref:
                '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~1'),
        Mode(
            ref:
                '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1~variants~2')
      ])
    ])
  ]),
  '~contains~5': Mode(
      className: "meta",
      begin:
          "@(?:file|property|field|get|set|receiver|param|setparam|delegate)\\s*:(?:\\s*[a-zA-Z_]\\w*)?"),
  '~contains~2':
      Mode(className: "comment", begin: "/\\*", end: "\\*/", contains: [
    C_BLOCK_COMMENT_MODE,
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ]),
}, aliases: [
  "kt"
], keywords: {
  "keyword":
      "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual trait volatile transient native default",
  "built_in": "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
  "literal": "true false null"
}, contains: [
  Mode(
      className: "comment",
      begin: "/\\*\\*",
      end: "\\*/",
      contains: [
        Mode(className: "doctag", begin: "@[A-Za-z]+"),
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 0),
  C_LINE_COMMENT_MODE,
  Mode(ref: '~contains~2'),
  Mode(
      className: "keyword",
      begin: "\\b(break|continue|return|this)\\b",
      starts: Mode(contains: [Mode(className: "symbol", begin: "@\\w+")])),
  Mode(className: "symbol", begin: "[a-zA-Z_]\\w*@"),
  Mode(ref: '~contains~5'),
  Mode(ref: '~contains~6'),
  Mode(
      className: "function",
      beginKeywords: "fun",
      end: "[(]|\$",
      returnBegin: true,
      excludeEnd: true,
      keywords: {
        "keyword":
            "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual trait volatile transient native default",
        "built_in":
            "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
        "literal": "true false null"
      },
      illegal: "fun\\s+(<.*>)?[^\\s\\(]+(\\s+[^\\s\\(]+)\\s*=",
      relevance: 5,
      contains: [
        Mode(
            begin: "[a-zA-Z_]\\w*\\s*\\(",
            returnBegin: true,
            relevance: 0,
            contains: [UNDERSCORE_TITLE_MODE]),
        Mode(
            className: "type",
            begin: "<",
            end: ">",
            keywords: "reified",
            relevance: 0),
        Mode(
            className: "params",
            begin: "\\(",
            end: "\\)",
            endsParent: true,
            keywords: {
              "keyword":
                  "abstract as val var vararg get set class object open private protected public noinline crossinline dynamic final enum if else do while for when throw try catch finally import package is in fun override companion reified inline lateinit init interface annotation data sealed internal infix operator out by constructor super tailrec where const inner suspend typealias external expect actual trait volatile transient native default",
              "built_in":
                  "Byte Short Char Int Long Boolean Float Double Void Unit Nothing",
              "literal": "true false null"
            },
            relevance: 0,
            contains: [
              Mode(
                  begin: ":",
                  end: "[=,\\/]",
                  endsWithParent: true,
                  contains: [
                    Mode(ref: '~contains~7~contains~2~contains~0~contains~0'),
                    C_LINE_COMMENT_MODE,
                    Mode(ref: '~contains~2')
                  ],
                  relevance: 0),
              C_LINE_COMMENT_MODE,
              Mode(ref: '~contains~2'),
              Mode(ref: '~contains~5'),
              Mode(ref: '~contains~6'),
              Mode(
                  ref:
                      '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1'),
              C_NUMBER_MODE
            ]),
        Mode(ref: '~contains~2')
      ]),
  Mode(
      className: "class",
      beginKeywords: "class interface trait",
      end: "[:\\{(]|\$",
      excludeEnd: true,
      illegal: "extends implements",
      contains: [
        Mode(beginKeywords: "public protected internal private constructor"),
        UNDERSCORE_TITLE_MODE,
        Mode(
            className: "type",
            begin: "<",
            end: ">",
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0),
        Mode(
            className: "type",
            begin: "[,:]\\s*",
            end: "[<\\(,]|\$",
            excludeBegin: true,
            returnEnd: true),
        Mode(ref: '~contains~5'),
        Mode(ref: '~contains~6')
      ]),
  Mode(
      ref:
          '~contains~6~contains~0~contains~0~variants~0~contains~1~contains~1'),
  Mode(className: "meta", begin: "^#!/usr/bin/env", end: "\$", illegal: "\n"),
  Mode(
      className: "number",
      begin:
          "\\b(0[bB]([01]+[01_]+[01]+|[01]+)|0[xX]([a-fA-F0-9]+[a-fA-F0-9_]+[a-fA-F0-9]+|[a-fA-F0-9]+)|(([\\d]+[\\d_]+[\\d]+|[\\d]+)(\\.([\\d]+[\\d_]+[\\d]+|[\\d]+))?|\\.([\\d]+[\\d_]+[\\d]+|[\\d]+))([eE][-+]?\\d+)?)[lLfF]?",
      relevance: 0)
]);
