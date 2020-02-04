// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final javascript = Mode(refs: {
  '~contains~4~starts~contains~1~contains~5': Mode(
      className: "number",
      variants: [
        Mode(begin: "\\b(0[bB][01]+)n?"),
        Mode(begin: "\\b(0[oO][0-7]+)n?"),
        Mode(
            begin:
                "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)n?")
      ],
      relevance: 0),
  '~contains~4~starts~contains~1~contains~4': Mode(
      className: "string",
      begin: "`",
      end: "`",
      contains: [BACKSLASH_ESCAPE, Mode(ref: '~contains~4~starts~contains~1')]),
  '~contains~4~starts~contains~1~contains~3': Mode(
      begin: "css`",
      end: "",
      starts: Mode(end: "`", returnEnd: false, contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~4~starts~contains~1')
      ], subLanguage: [
        "css"
      ])),
  '~contains~4~starts~contains~1':
      Mode(className: "subst", begin: "\\\$\\{", end: "\\}", keywords: {
    "keyword":
        "in of if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const export super debugger as async await static import from as",
    "literal": "true false null undefined NaN Infinity",
    "built_in":
        "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document Symbol Set Map WeakSet WeakMap Proxy Reflect Promise"
  }, contains: [
    APOS_STRING_MODE,
    QUOTE_STRING_MODE,
    Mode(ref: '~contains~4'),
    Mode(ref: '~contains~4~starts~contains~1~contains~3'),
    Mode(ref: '~contains~4~starts~contains~1~contains~4'),
    Mode(ref: '~contains~4~starts~contains~1~contains~5'),
    REGEXP_MODE
  ]),
  '~contains~4': Mode(
      begin: "html`",
      end: "",
      starts: Mode(end: "`", returnEnd: false, contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~4~starts~contains~1')
      ], subLanguage: [
        "xml"
      ])),
}, aliases: [
  "js",
  "jsx",
  "mjs",
  "cjs"
], keywords: {
  "keyword":
      "in of if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const export super debugger as async await static import from as",
  "literal": "true false null undefined NaN Infinity",
  "built_in":
      "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document Symbol Set Map WeakSet WeakMap Proxy Reflect Promise"
}, contains: [
  Mode(
      className: "meta",
      relevance: 10,
      begin: "^\\s*['\"]use (strict|asm)['\"]"),
  Mode(className: "meta", begin: "^#!", end: "\$"),
  APOS_STRING_MODE,
  QUOTE_STRING_MODE,
  Mode(ref: '~contains~4'),
  Mode(ref: '~contains~4~starts~contains~1~contains~3'),
  Mode(ref: '~contains~4~starts~contains~1~contains~4'),
  C_LINE_COMMENT_MODE,
  Mode(
      className: "comment",
      begin: "/\\*\\*",
      end: "\\*/",
      contains: [
        Mode(className: "doctag", begin: "@[A-Za-z]+", contains: [
          Mode(className: "type", begin: "\\{", end: "\\}", relevance: 0),
          Mode(
              className: "variable",
              begin: "[A-Za-z\$_][0-9A-Za-z\$_]*(?=\\s*(-)|\$)",
              endsParent: true,
              relevance: 0),
          Mode(begin: "(?=[^\\n])\\s", relevance: 0)
        ]),
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 0),
  C_BLOCK_COMMENT_MODE,
  Mode(ref: '~contains~4~starts~contains~1~contains~5'),
  Mode(begin: "[{,\\n]\\s*", relevance: 0, contains: [
    Mode(
        begin: "[A-Za-z\$_][0-9A-Za-z\$_]*\\s*:",
        returnBegin: true,
        relevance: 0,
        contains: [
          Mode(
              className: "attr",
              begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
              relevance: 0)
        ])
  ]),
  Mode(
      begin:
          "(!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\\x7e|\\b(case|return|throw)\\b)\\s*",
      keywords: "return throw case",
      contains: [
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        REGEXP_MODE,
        Mode(
            className: "function",
            begin: "(\\(.*?\\)|[A-Za-z\$_][0-9A-Za-z\$_]*)\\s*=>",
            returnBegin: true,
            end: "\\s*=>",
            contains: [
              Mode(className: "params", variants: [
                Mode(begin: "[A-Za-z\$_][0-9A-Za-z\$_]*"),
                Mode(begin: "\\(\\s*\\)"),
                Mode(
                    begin: "\\(",
                    end: "\\)",
                    excludeBegin: true,
                    excludeEnd: true,
                    keywords: {
                      "keyword":
                          "in of if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const export super debugger as async await static import from as",
                      "literal": "true false null undefined NaN Infinity",
                      "built_in":
                          "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document Symbol Set Map WeakSet WeakMap Proxy Reflect Promise"
                    },
                    contains: [
                      APOS_STRING_MODE,
                      QUOTE_STRING_MODE,
                      Mode(ref: '~contains~4'),
                      Mode(ref: '~contains~4~starts~contains~1~contains~3'),
                      Mode(ref: '~contains~4~starts~contains~1~contains~4'),
                      Mode(ref: '~contains~4~starts~contains~1~contains~5'),
                      REGEXP_MODE,
                      C_BLOCK_COMMENT_MODE,
                      C_LINE_COMMENT_MODE
                    ])
              ])
            ]),
        Mode(className: "", begin: "\\s", end: "\\s*", skip: true),
        Mode(variants: [
          Mode(begin: "<>", end: "</>"),
          Mode(
              begin: "<[A-Za-z0-9\\\\._:-]+",
              end: "\\/[A-Za-z0-9\\\\._:-]+>|\\/>")
        ], subLanguage: [
          "xml"
        ], contains: [
          Mode(
              begin: "<[A-Za-z0-9\\\\._:-]+",
              end: "\\/[A-Za-z0-9\\\\._:-]+>|\\/>",
              skip: true,
              contains: [Mode(self: true)])
        ])
      ],
      relevance: 0),
  Mode(
      className: "function",
      beginKeywords: "function",
      end: "\\{",
      excludeEnd: true,
      contains: [
        Mode(
            className: "title",
            begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
            relevance: 0),
        Mode(
            className: "params",
            begin: "\\(",
            end: "\\)",
            excludeBegin: true,
            excludeEnd: true,
            contains: [
              APOS_STRING_MODE,
              QUOTE_STRING_MODE,
              Mode(ref: '~contains~4'),
              Mode(ref: '~contains~4~starts~contains~1~contains~3'),
              Mode(ref: '~contains~4~starts~contains~1~contains~4'),
              Mode(ref: '~contains~4~starts~contains~1~contains~5'),
              REGEXP_MODE,
              C_BLOCK_COMMENT_MODE,
              C_LINE_COMMENT_MODE
            ])
      ],
      illegal: "\\[|%"),
  Mode(begin: "\\\$[(.]"),
  METHOD_GUARD,
  Mode(
      className: "class",
      beginKeywords: "class",
      end: "[{;=]",
      excludeEnd: true,
      illegal: "[:\"\\[\\]]",
      contains: [Mode(beginKeywords: "extends"), UNDERSCORE_TITLE_MODE]),
  Mode(beginKeywords: "constructor get set", end: "\\{", excludeEnd: true)
], illegal: "#(?!!)");
