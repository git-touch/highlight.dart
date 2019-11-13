// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final typescript = Mode(refs: {
  '~contains~3~starts~contains~1~contains~5': Mode(
      className: "number",
      variants: [
        Mode(begin: "\\b(0[bB][01]+)n?"),
        Mode(begin: "\\b(0[oO][0-7]+)n?"),
        Mode(
            begin:
                "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)n?")
      ],
      relevance: 0),
  '~contains~3~starts~contains~1~contains~4': Mode(
      className: "string",
      begin: "`",
      end: "`",
      contains: [BACKSLASH_ESCAPE, Mode(ref: '~contains~3~starts~contains~1')]),
  '~contains~3~starts~contains~1~contains~3': Mode(
      begin: "css`",
      end: "",
      starts: Mode(end: "`", returnEnd: false, contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~3~starts~contains~1')
      ], subLanguage: [
        "css"
      ])),
  '~contains~3~starts~contains~1':
      Mode(className: "subst", begin: "\\\$\\{", end: "\\}", keywords: {
    "keyword":
        "in if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const class public private protected get set super static implements enum export import declare type namespace abstract as from extends async await",
    "literal": "true false null undefined NaN Infinity",
    "built_in":
        "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document any number boolean string void Promise"
  }, contains: [
    APOS_STRING_MODE,
    QUOTE_STRING_MODE,
    Mode(ref: '~contains~3'),
    Mode(ref: '~contains~3~starts~contains~1~contains~3'),
    Mode(ref: '~contains~3~starts~contains~1~contains~4'),
    Mode(ref: '~contains~3~starts~contains~1~contains~5'),
    REGEXP_MODE
  ]),
  '~contains~3': Mode(
      begin: "html`",
      end: "",
      starts: Mode(end: "`", returnEnd: false, contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~3~starts~contains~1')
      ], subLanguage: [
        "xml"
      ])),
  '~contains~10~contains~2~contains~3':
      Mode(begin: "\\(", end: "\\)", keywords: {
    "keyword":
        "in if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const class public private protected get set super static implements enum export import declare type namespace abstract as from extends async await",
    "literal": "true false null undefined NaN Infinity",
    "built_in":
        "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document any number boolean string void Promise"
  }, contains: [
    Mode(self: true),
    QUOTE_STRING_MODE,
    APOS_STRING_MODE,
    NUMBER_MODE
  ]),
  '~contains~10~contains~2~contains~2':
      Mode(className: "meta", begin: "@[A-Za-z\$_][0-9A-Za-z\$_]*"),
  '~contains~10~contains~2': Mode(
      className: "params",
      begin: "\\(",
      end: "\\)",
      excludeBegin: true,
      excludeEnd: true,
      keywords: {
        "keyword":
            "in if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const class public private protected get set super static implements enum export import declare type namespace abstract as from extends async await",
        "literal": "true false null undefined NaN Infinity",
        "built_in":
            "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document any number boolean string void Promise"
      },
      contains: [
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        Mode(ref: '~contains~10~contains~2~contains~2'),
        Mode(ref: '~contains~10~contains~2~contains~3')
      ]),
}, aliases: [
  "ts"
], keywords: {
  "keyword":
      "in if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const class public private protected get set super static implements enum export import declare type namespace abstract as from extends async await",
  "literal": "true false null undefined NaN Infinity",
  "built_in":
      "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document any number boolean string void Promise"
}, contains: [
  Mode(className: "meta", begin: "^\\s*['\"]use strict['\"]"),
  APOS_STRING_MODE,
  QUOTE_STRING_MODE,
  Mode(ref: '~contains~3'),
  Mode(ref: '~contains~3~starts~contains~1~contains~3'),
  Mode(ref: '~contains~3~starts~contains~1~contains~4'),
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE,
  Mode(ref: '~contains~3~starts~contains~1~contains~5'),
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
            begin: "(\\(.*?\\)|[a-zA-Z]\\w*)\\s*=>",
            returnBegin: true,
            end: "\\s*=>",
            contains: [
              Mode(className: "params", variants: [
                Mode(begin: "[a-zA-Z]\\w*"),
                Mode(begin: "\\(\\s*\\)"),
                Mode(
                    begin: "\\(",
                    end: "\\)",
                    excludeBegin: true,
                    excludeEnd: true,
                    keywords: {
                      "keyword":
                          "in if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const class public private protected get set super static implements enum export import declare type namespace abstract as from extends async await",
                      "literal": "true false null undefined NaN Infinity",
                      "built_in":
                          "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document any number boolean string void Promise"
                    },
                    contains: [
                      Mode(self: true),
                      C_LINE_COMMENT_MODE,
                      C_BLOCK_COMMENT_MODE
                    ])
              ])
            ])
      ],
      relevance: 0),
  Mode(
      className: "function",
      beginKeywords: "function",
      end: "[\\{;]",
      excludeEnd: true,
      keywords: {
        "keyword":
            "in if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const class public private protected get set super static implements enum export import declare type namespace abstract as from extends async await",
        "literal": "true false null undefined NaN Infinity",
        "built_in":
            "eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document any number boolean string void Promise"
      },
      contains: [
        Mode(self: true),
        Mode(
            className: "title",
            begin: "[A-Za-z\$_][0-9A-Za-z\$_]*",
            relevance: 0),
        Mode(ref: '~contains~10~contains~2')
      ],
      illegal: "%",
      relevance: 0),
  Mode(
      beginKeywords: "constructor",
      end: "[\\{;]",
      excludeEnd: true,
      contains: [Mode(self: true), Mode(ref: '~contains~10~contains~2')]),
  Mode(begin: "module\\.", keywords: {"built_in": "module"}, relevance: 0),
  Mode(beginKeywords: "module", end: "\\{", excludeEnd: true),
  Mode(
      beginKeywords: "interface",
      end: "\\{",
      excludeEnd: true,
      keywords: "interface extends"),
  Mode(begin: "\\\$[(.]"),
  Mode(begin: "\\.[a-zA-Z]\\w*", relevance: 0),
  Mode(ref: '~contains~10~contains~2~contains~2'),
  Mode(ref: '~contains~10~contains~2~contains~3')
]);
