// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final nginx = Mode(refs: {
  '~contains~2~contains~0~starts~contains~1~contains~1':
      Mode(className: "variable", variants: [
    Mode(begin: "\\\$\\d+"),
    Mode(begin: "\\\$\\{", end: "}"),
    Mode(begin: "[\\\$\\@][a-zA-Z_]\\w*")
  ]),
}, aliases: [
  "nginxconf"
], contains: [
  HASH_COMMENT_MODE,
  Mode(
      begin: "[a-zA-Z_]\\w*\\s+{",
      returnBegin: true,
      end: "{",
      contains: [Mode(className: "section", begin: "[a-zA-Z_]\\w*")],
      relevance: 0),
  Mode(
      begin: "[a-zA-Z_]\\w*\\s",
      end: ";|{",
      returnBegin: true,
      contains: [
        Mode(
            className: "attribute",
            begin: "[a-zA-Z_]\\w*",
            starts: Mode(
                endsWithParent: true,
                lexemes: "[a-z/_]+",
                keywords: {
                  "literal":
                      "on off yes no true false none blocked debug info notice warn error crit select break last permanent redirect kqueue rtsig epoll poll /dev/poll"
                },
                relevance: 0,
                illegal: "=>",
                contains: [
                  HASH_COMMENT_MODE,
                  Mode(className: "string", contains: [
                    BACKSLASH_ESCAPE,
                    Mode(
                        ref:
                            '~contains~2~contains~0~starts~contains~1~contains~1')
                  ], variants: [
                    Mode(begin: "\"", end: "\""),
                    Mode(begin: "'", end: "'")
                  ]),
                  Mode(
                      begin: "([a-z]+):/",
                      end: "\\s",
                      endsWithParent: true,
                      excludeEnd: true,
                      contains: [
                        Mode(
                            ref:
                                '~contains~2~contains~0~starts~contains~1~contains~1')
                      ]),
                  Mode(className: "regexp", contains: [
                    BACKSLASH_ESCAPE,
                    Mode(
                        ref:
                            '~contains~2~contains~0~starts~contains~1~contains~1')
                  ], variants: [
                    Mode(begin: "\\s\\^", end: "\\s|{|;", returnEnd: true),
                    Mode(
                        begin: "\\x7e\\*?\\s+",
                        end: "\\s|{|;",
                        returnEnd: true),
                    Mode(begin: "\\*(\\.[a-z\\-]+)+"),
                    Mode(begin: "([a-z\\-]+\\.)+\\*")
                  ]),
                  Mode(
                      className: "number",
                      begin:
                          "\\b\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d{1,5})?\\b"),
                  Mode(
                      className: "number",
                      begin: "\\b\\d+[kKmMgGdshdwy]*\\b",
                      relevance: 0),
                  Mode(
                      ref:
                          '~contains~2~contains~0~starts~contains~1~contains~1')
                ]))
      ],
      relevance: 0)
], illegal: "[^\\s\\}]");
