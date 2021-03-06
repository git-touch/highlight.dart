// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final rust = Mode(
    refs: {},
    aliases: ["rs"],
    keywords: {
      "keyword":
          "abstract as async await become box break const continue crate do dyn else enum extern false final fn for if impl in let loop macro match mod move mut override priv pub ref return self Self static struct super trait true try type typeof unsafe unsized use virtual where while yield",
      "literal": "true false Some None Ok Err",
      "built_in":
          "drop i8 i16 i32 i64 i128 isize u8 u16 u32 u64 u128 usize f32 f64 str char bool Box Option Result String Vec Copy Send Sized Sync Drop Fn FnMut FnOnce ToOwned Clone Debug PartialEq PartialOrd Eq Ord AsRef AsMut Into From Default Iterator Extend IntoIterator DoubleEndedIterator ExactSizeIterator SliceConcatExt ToString assert! assert_eq! bitflags! bytes! cfg! col! concat! concat_idents! debug_assert! debug_assert_eq! env! panic! file! format! format_args! include_bin! include_str! line! local_data_key! module_path! option_env! print! println! select! stringify! try! unimplemented! unreachable! vec! write! writeln! macro_rules! assert_ne! debug_assert_ne!"
    },
    lexemes: "[a-zA-Z]\\w*!?",
    illegal: "</",
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
      Mode(
          className: "string",
          begin: "b?\"",
          end: "\"",
          illegal: null,
          contains: [BACKSLASH_ESCAPE]),
      Mode(className: "string", variants: [
        Mode(begin: "r(#*)\"(.|\\n)*?\"\\1(?!#)"),
        Mode(begin: "b?'\\\\?(x\\w{2}|u\\w{4}|U\\w{8}|.)'")
      ]),
      Mode(className: "symbol", begin: "'[a-zA-Z_][a-zA-Z0-9_]*"),
      Mode(
          className: "number",
          variants: [
            Mode(begin: "\\b0b([01_]+)([ui](8|16|32|64|128|size)|f(32|64))?"),
            Mode(begin: "\\b0o([0-7_]+)([ui](8|16|32|64|128|size)|f(32|64))?"),
            Mode(
                begin:
                    "\\b0x([A-Fa-f0-9_]+)([ui](8|16|32|64|128|size)|f(32|64))?"),
            Mode(
                begin:
                    "\\b(\\d[\\d_]*(\\.[0-9_]+)?([eE][+-]?[0-9_]+)?)([ui](8|16|32|64|128|size)|f(32|64))?")
          ],
          relevance: 0),
      Mode(
          className: "function",
          beginKeywords: "fn",
          end: "(\\(|<)",
          excludeEnd: true,
          contains: [UNDERSCORE_TITLE_MODE]),
      Mode(
          className: "meta",
          begin: "#\\!?\\[",
          end: "\\]",
          contains: [Mode(className: "meta-string", begin: "\"", end: "\"")]),
      Mode(
          className: "class",
          beginKeywords: "type",
          end: ";",
          contains: [
            Mode(
                className: "title",
                begin: "[a-zA-Z_]\\w*",
                relevance: 0,
                endsParent: true)
          ],
          illegal: "\\S"),
      Mode(
          className: "class",
          beginKeywords: "trait enum struct union",
          end: "{",
          contains: [
            Mode(
                className: "title",
                begin: "[a-zA-Z_]\\w*",
                relevance: 0,
                endsParent: true)
          ],
          illegal: "[\\w\\d]"),
      Mode(begin: "[a-zA-Z]\\w*::", keywords: {
        "built_in":
            "drop i8 i16 i32 i64 i128 isize u8 u16 u32 u64 u128 usize f32 f64 str char bool Box Option Result String Vec Copy Send Sized Sync Drop Fn FnMut FnOnce ToOwned Clone Debug PartialEq PartialOrd Eq Ord AsRef AsMut Into From Default Iterator Extend IntoIterator DoubleEndedIterator ExactSizeIterator SliceConcatExt ToString assert! assert_eq! bitflags! bytes! cfg! col! concat! concat_idents! debug_assert! debug_assert_eq! env! panic! file! format! format_args! include_bin! include_str! line! local_data_key! module_path! option_env! print! println! select! stringify! try! unimplemented! unreachable! vec! write! writeln! macro_rules! assert_ne! debug_assert_ne!"
      }),
      Mode(begin: "->")
    ]);
