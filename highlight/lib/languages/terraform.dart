// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final terraform = Mode(
    refs: {
      '~contains~1':
          Mode(className: "number", begin: "\\b\\d+(\\.\\d+)?", relevance: 0),
    },
    aliases: ["tf", "hcl"],
    keywords:
        "resource variable provider output locals module data terraform|10",
    literal: "false true null",
    contains: [
      Mode(className: "comment", begin: "\\#", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(ref: '~contains~1'),
      Mode(className: "string", begin: "\"", end: "\"", contains: [
        Mode(
            className: "variable",
            begin: "\\\${",
            end: "\\}",
            relevance: 9,
            contains: [
              Mode(className: "string", begin: "\"", end: "\""),
              Mode(
                  className: "meta",
                  begin: "[A-Za-z_0-9]*\\(",
                  end: "\\)",
                  contains: [
                    Mode(ref: '~contains~1'),
                    Mode(
                        className: "string",
                        begin: "\"",
                        end: "\"",
                        contains: [
                          Mode(
                              className: "variable",
                              begin: "\\\${",
                              end: "\\}",
                              contains: [
                                Mode(
                                    className: "string",
                                    begin: "\"",
                                    end: "\"",
                                    contains: [
                                      Mode(
                                          className: "variable",
                                          begin: "\\\${",
                                          end: "\\}")
                                    ]),
                                Mode(
                                    className: "meta",
                                    begin: "[A-Za-z_0-9]*\\(",
                                    end: "\\)")
                              ])
                        ]),
                    Mode(self: true)
                  ])
            ])
      ])
    ]);
