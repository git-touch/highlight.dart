// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final lasso = Mode(
    refs: {
      '~contains~3~starts~contains~9': Mode(variants: [
        Mode(begin: "[#\$][a-zA-Z_][\\w.]*"),
        Mode(begin: "#", end: "\\d+", illegal: "\\W")
      ]),
      '~contains~3~starts~contains~8':
          Mode(className: "string", begin: "`", end: "`"),
      '~contains~3~starts~contains~7': Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: [BACKSLASH_ESCAPE]),
      '~contains~3~starts~contains~6': Mode(
          className: "string",
          begin: "'",
          end: "'",
          illegal: null,
          contains: [BACKSLASH_ESCAPE]),
      '~contains~3~starts~contains~5': Mode(
          className: "number",
          begin:
              "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)|(-?infinity|NaN)\\b",
          relevance: 0),
      '~contains~3~starts~contains~13': Mode(
          className: "class",
          beginKeywords: "define",
          returnEnd: true,
          end: "\\(|=>",
          contains: [
            Mode(
                className: "title",
                begin: "[a-zA-Z_][\\w.]*(=(?!>))?|[-+*/%](?!>)",
                relevance: 0)
          ]),
      '~contains~3~starts~contains~12': Mode(
          begin: "(->|\\.)\\s*",
          relevance: 0,
          contains: [Mode(className: "symbol", begin: "'[a-zA-Z_][\\w.]*'")]),
      '~contains~3~starts~contains~11': Mode(className: "params", variants: [
        Mode(begin: "-(?!infinity)[a-zA-Z_][\\w.]*", relevance: 0),
        Mode(begin: "(\\.\\.\\.)")
      ]),
      '~contains~3~starts~contains~10': Mode(
          className: "type",
          begin: "::\\s*",
          end: "[a-zA-Z_][\\w.]*",
          illegal: "\\W"),
      '~contains~2': Mode(
          className: "meta", begin: "\\[/noprocess|<\\?(lasso(script)?|=)"),
      '~contains~1': Mode(
          className: "meta",
          begin: "\\[noprocess\\]",
          starts: Mode(
              end: "\\[/noprocess\\]",
              returnEnd: true,
              contains: [Mode(ref: '~contains~0~starts~contains~0')])),
      '~contains~0~starts~contains~0': Mode(
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
          relevance: 0),
    },
    aliases: ["ls", "lassoscript"],
    case_insensitive: true,
    lexemes: "[a-zA-Z_][\\w.]*|&[lg]t;",
    keywords: {
      "literal":
          "true false none minimal full all void and or not bw nbw ew new cn ncn lt lte gt gte eq neq rx nrx ft",
      "built_in":
          "array date decimal duration integer map pair string tag xml null boolean bytes keyword list locale queue set stack staticarray local var variable global data self inherited currentcapture givenblock",
      "keyword":
          "cache database_names database_schemanames database_tablenames define_tag define_type email_batch encode_set html_comment handle handle_error header if inline iterate ljax_target link link_currentaction link_currentgroup link_currentrecord link_detail link_firstgroup link_firstrecord link_lastgroup link_lastrecord link_nextgroup link_nextrecord link_prevgroup link_prevrecord log loop namespace_using output_none portal private protect records referer referrer repeating resultset rows search_args search_arguments select sort_args sort_arguments thread_atomic value_list while abort case else fail_if fail_ifnot fail if_empty if_false if_null if_true loop_abort loop_continue loop_count params params_up return return_value run_children soap_definetag soap_lastrequest soap_lastresponse tag_name ascending average by define descending do equals frozen group handle_failure import in into join let match max min on order parent protected provide public require returnhome skip split_thread sum take thread to trait type where with yield yieldhome"
    },
    contains: [
      Mode(
          className: "meta",
          begin: "\\]|\\?>",
          relevance: 0,
          starts: Mode(
              end: "\\[|<\\?(lasso(script)?|=)",
              returnEnd: true,
              relevance: 0,
              contains: [Mode(ref: '~contains~0~starts~contains~0')])),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~2'),
      Mode(
          className: "meta",
          begin: "\\[no_square_brackets",
          starts: Mode(
              end: "\\[/no_square_brackets\\]",
              lexemes: "[a-zA-Z_][\\w.]*|&[lg]t;",
              keywords: {
                "literal":
                    "true false none minimal full all void and or not bw nbw ew new cn ncn lt lte gt gte eq neq rx nrx ft",
                "built_in":
                    "array date decimal duration integer map pair string tag xml null boolean bytes keyword list locale queue set stack staticarray local var variable global data self inherited currentcapture givenblock",
                "keyword":
                    "cache database_names database_schemanames database_tablenames define_tag define_type email_batch encode_set html_comment handle handle_error header if inline iterate ljax_target link link_currentaction link_currentgroup link_currentrecord link_detail link_firstgroup link_firstrecord link_lastgroup link_lastrecord link_nextgroup link_nextrecord link_prevgroup link_prevrecord log loop namespace_using output_none portal private protect records referer referrer repeating resultset rows search_args search_arguments select sort_args sort_arguments thread_atomic value_list while abort case else fail_if fail_ifnot fail if_empty if_false if_null if_true loop_abort loop_continue loop_count params params_up return return_value run_children soap_definetag soap_lastrequest soap_lastresponse tag_name ascending average by define descending do equals frozen group handle_failure import in into join let match max min on order parent protected provide public require returnhome skip split_thread sum take thread to trait type where with yield yieldhome"
              },
              contains: [
                Mode(
                    className: "meta",
                    begin: "\\]|\\?>",
                    relevance: 0,
                    starts: Mode(
                        end: "\\[noprocess\\]|<\\?(lasso(script)?|=)",
                        returnEnd: true,
                        contains: [
                          Mode(ref: '~contains~0~starts~contains~0')
                        ])),
                Mode(ref: '~contains~1'),
                Mode(ref: '~contains~2'),
                C_LINE_COMMENT_MODE,
                C_BLOCK_COMMENT_MODE,
                Mode(ref: '~contains~3~starts~contains~5'),
                Mode(ref: '~contains~3~starts~contains~6'),
                Mode(ref: '~contains~3~starts~contains~7'),
                Mode(ref: '~contains~3~starts~contains~8'),
                Mode(ref: '~contains~3~starts~contains~9'),
                Mode(ref: '~contains~3~starts~contains~10'),
                Mode(ref: '~contains~3~starts~contains~11'),
                Mode(ref: '~contains~3~starts~contains~12'),
                Mode(ref: '~contains~3~starts~contains~13')
              ])),
      Mode(className: "meta", begin: "\\[", relevance: 0),
      Mode(className: "meta", begin: "^#!", end: "lasso9\$", relevance: 10),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      Mode(ref: '~contains~3~starts~contains~5'),
      Mode(ref: '~contains~3~starts~contains~6'),
      Mode(ref: '~contains~3~starts~contains~7'),
      Mode(ref: '~contains~3~starts~contains~8'),
      Mode(ref: '~contains~3~starts~contains~9'),
      Mode(ref: '~contains~3~starts~contains~10'),
      Mode(ref: '~contains~3~starts~contains~11'),
      Mode(ref: '~contains~3~starts~contains~12'),
      Mode(ref: '~contains~3~starts~contains~13')
    ]);
