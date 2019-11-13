// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final delphi = Mode(
    refs: {
      '~contains~4~contains~1~contains~5': Mode(
          className: "comment",
          begin: "\\(\\*",
          end: "\\*\\)",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      '~contains~4~contains~1~contains~4': Mode(
          className: "comment",
          begin: "\\{",
          end: "\\}",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 0),
      '~contains~4~contains~1~contains~2': Mode(className: "meta", variants: [
        Mode(begin: "\\{\\\$", end: "\\}"),
        Mode(begin: "\\(\\*\\\$", end: "\\*\\)")
      ]),
      '~contains~1': Mode(className: "string", begin: "(#\\d+)+"),
      '~contains~0': Mode(
          className: "string",
          begin: "'",
          end: "'",
          contains: [Mode(begin: "''")]),
    },
    aliases: [
      "dpr",
      "dfm",
      "pas",
      "pascal",
      "freepascal",
      "lazarus",
      "lpr",
      "lfm"
    ],
    case_insensitive: true,
    keywords:
        "exports register file shl array record property for mod while set ally label uses raise not stored class safecall var interface or private static exit index inherited to else stdcall override shr asm far resourcestring finalization packed virtual out and protected library do xorwrite goto near function end div overload object unit begin string on inline repeat until destructor write message program with read initialization except default nil if case cdecl in downto threadvar of try pascal const external constructor type public then implementation finally published procedure absolute reintroduce operator as is abstract alias assembler bitpacked break continue cppdecl cvar enumerator experimental platform deprecated unimplemented dynamic export far16 forward generic helper implements interrupt iochecks local name nodefault noreturn nostackframe oldfpccall otherwise saveregisters softfloat specialize strict unaligned varargs ",
    illegal: "\"|\\\$[G-Zg-z]|\\/\\*|<\\/|\\|",
    contains: [
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~1'),
      NUMBER_MODE,
      Mode(
          begin: "[a-zA-Z]\\w*\\s*=\\s*class\\s*\\(",
          returnBegin: true,
          contains: [TITLE_MODE]),
      Mode(
          className: "function",
          beginKeywords: "function constructor destructor procedure",
          end: "[:;]",
          keywords: "function constructor|10 destructor|10 procedure|10",
          contains: [
            TITLE_MODE,
            Mode(
                className: "params",
                begin: "\\(",
                end: "\\)",
                keywords:
                    "exports register file shl array record property for mod while set ally label uses raise not stored class safecall var interface or private static exit index inherited to else stdcall override shr asm far resourcestring finalization packed virtual out and protected library do xorwrite goto near function end div overload object unit begin string on inline repeat until destructor write message program with read initialization except default nil if case cdecl in downto threadvar of try pascal const external constructor type public then implementation finally published procedure absolute reintroduce operator as is abstract alias assembler bitpacked break continue cppdecl cvar enumerator experimental platform deprecated unimplemented dynamic export far16 forward generic helper implements interrupt iochecks local name nodefault noreturn nostackframe oldfpccall otherwise saveregisters softfloat specialize strict unaligned varargs ",
                contains: [
                  Mode(ref: '~contains~0'),
                  Mode(ref: '~contains~1'),
                  Mode(ref: '~contains~4~contains~1~contains~2'),
                  C_LINE_COMMENT_MODE,
                  Mode(ref: '~contains~4~contains~1~contains~4'),
                  Mode(ref: '~contains~4~contains~1~contains~5')
                ]),
            Mode(ref: '~contains~4~contains~1~contains~2'),
            C_LINE_COMMENT_MODE,
            Mode(ref: '~contains~4~contains~1~contains~4'),
            Mode(ref: '~contains~4~contains~1~contains~5')
          ]),
      Mode(ref: '~contains~4~contains~1~contains~2'),
      C_LINE_COMMENT_MODE,
      Mode(ref: '~contains~4~contains~1~contains~4'),
      Mode(ref: '~contains~4~contains~1~contains~5')
    ]);
