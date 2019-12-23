// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final zephir = Mode(
    refs: {
      '~contains~6~contains~1~contains~3':
          Mode(variants: [BINARY_NUMBER_MODE, C_NUMBER_MODE]),
      '~contains~6~contains~1~contains~2': Mode(className: "string", contains: [
        BACKSLASH_ESCAPE
      ], variants: [
        Mode(begin: "b\"", end: "\""),
        Mode(begin: "b'", end: "'"),
        Mode(
            className: "string",
            begin: "'",
            end: "'",
            illegal: null,
            contains: [BACKSLASH_ESCAPE]),
        Mode(
            className: "string",
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: [BACKSLASH_ESCAPE])
      ]),
    },
    aliases: ["zep"],
    case_insensitive: true,
    keywords:
        "and include_once list abstract global private echo interface as static endswitch array null if endwhile or const for endforeach self var let while isset public protected exit foreach throw elseif include __FILE__ empty require_once do xor return parent clone use __CLASS__ __LINE__ else break print eval new catch __METHOD__ case exception default die require __FUNCTION__ enddeclare final try switch continue endfor endif declare unset true false trait goto instanceof insteadof __DIR__ __NAMESPACE__ yield finally int uint long ulong char uchar double float bool boolean stringlikely unlikely",
    contains: [
      C_LINE_COMMENT_MODE,
      HASH_COMMENT_MODE,
      Mode(className: "comment", begin: "/\\*", end: "\\*/", contains: [
        Mode(className: "doctag", begin: "@[A-Za-z]+"),
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(
          className: "comment",
          begin: "__halt_compiler.+?;",
          end: "false",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          endsWithParent: true,
          keywords: "__halt_compiler",
          lexemes: "[a-zA-Z_]\\w*"),
      Mode(
          className: "string",
          begin: "<<<['\"]?\\w+['\"]?\$",
          end: "^\\w+;",
          contains: [BACKSLASH_ESCAPE]),
      Mode(begin: "(::|->)+[a-zA-Z_\\x7f-\\xff][a-zA-Z0-9_\\x7f-\\xff]*"),
      Mode(
          className: "function",
          beginKeywords: "function",
          end: "[;{]",
          excludeEnd: true,
          illegal: "\\\$|\\[|%",
          contains: [
            UNDERSCORE_TITLE_MODE,
            Mode(className: "params", begin: "\\(", end: "\\)", contains: [
              Mode(self: true),
              C_BLOCK_COMMENT_MODE,
              Mode(ref: '~contains~6~contains~1~contains~2'),
              Mode(ref: '~contains~6~contains~1~contains~3')
            ])
          ]),
      Mode(
          className: "class",
          beginKeywords: "class interface",
          end: "{",
          excludeEnd: true,
          illegal: "[:\\(\\\$\"]",
          contains: [
            Mode(beginKeywords: "extends implements"),
            UNDERSCORE_TITLE_MODE
          ]),
      Mode(
          beginKeywords: "namespace",
          end: ";",
          illegal: "[\\.']",
          contains: [UNDERSCORE_TITLE_MODE]),
      Mode(beginKeywords: "use", end: ";", contains: [UNDERSCORE_TITLE_MODE]),
      Mode(begin: "=>"),
      Mode(ref: '~contains~6~contains~1~contains~2'),
      Mode(ref: '~contains~6~contains~1~contains~3')
    ]);
