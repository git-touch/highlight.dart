// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final makefile = Mode(
    refs: {
      '~contains~1': Mode(className: "variable", variants: [
        Mode(begin: "\\\$\\([a-zA-Z_]\\w*\\)", contains: [BACKSLASH_ESCAPE]),
        Mode(begin: "\\\$[@%<?\\^\\+\\*]")
      ]),
    },
    aliases: ["mk", "mak"],
    keywords:
        "define endef undefine ifdef ifndef ifeq ifneq else endif include -include sinclude override export unexport private vpath",
    lexemes: "[\\w-]+",
    contains: [
      HASH_COMMENT_MODE,
      Mode(ref: '~contains~1'),
      Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          contains: [BACKSLASH_ESCAPE, Mode(ref: '~contains~1')]),
      Mode(
          className: "variable",
          begin: "\\\$\\([\\w-]+\\s",
          end: "\\)",
          keywords: {
            "built_in":
                "subst patsubst strip findstring filter filter-out sort word wordlist firstword lastword dir notdir suffix basename addsuffix addprefix join wildcard realpath abspath error warning shell origin flavor foreach if or and call eval file value"
          },
          contains: [
            Mode(ref: '~contains~1')
          ]),
      Mode(begin: "^[a-zA-Z_]\\w*\\s*(?=[:+?]?=)"),
      Mode(
          className: "meta",
          begin: "^\\.PHONY:",
          end: "\$",
          keywords: {"meta-keyword": ".PHONY"},
          lexemes: "[\\.\\w]+"),
      Mode(
          className: "section",
          begin: "^[^\\s]+:",
          end: "\$",
          contains: [Mode(ref: '~contains~1')])
    ]);
