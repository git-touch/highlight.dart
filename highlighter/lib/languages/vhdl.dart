// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final vhdl = Mode(
    refs: {},
    case_insensitive: true,
    keywords: {
      "keyword":
          "abs access after alias all and architecture array assert assume assume_guarantee attribute begin block body buffer bus case component configuration constant context cover disconnect downto default else elsif end entity exit fairness file for force function generate generic group guarded if impure in inertial inout is label library linkage literal loop map mod nand new next nor not null of on open or others out package parameter port postponed procedure process property protected pure range record register reject release rem report restrict restrict_guarantee return rol ror select sequence severity shared signal sla sll sra srl strong subtype then to transport type unaffected units until use variable view vmode vprop vunit wait when while with xnor xor",
      "built_in":
          "boolean bit character integer time delay_length natural positive string bit_vector file_open_kind file_open_status std_logic std_logic_vector unsigned signed boolean_vector integer_vector std_ulogic std_ulogic_vector unresolved_unsigned u_unsigned unresolved_signed u_signed real_vector time_vector",
      "literal": "false true note warning error failure line text side width"
    },
    illegal: "{",
    contains: [
      C_BLOCK_COMMENT_MODE,
      Mode(className: "comment", begin: "--", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      QUOTE_STRING_MODE,
      Mode(
          className: "number",
          begin:
              "\\b(\\d(_|\\d)*#\\w+(\\.\\w+)?#([eE][-+]?\\d(_|\\d)*)?|\\d(_|\\d)*(\\.\\d(_|\\d)*)?([eE][-+]?\\d(_|\\d)*)?)",
          relevance: 0),
      Mode(
          className: "string",
          begin: "'(U|X|0|1|Z|W|L|H|-)'",
          contains: [BACKSLASH_ESCAPE]),
      Mode(
          className: "symbol",
          begin: "'[A-Za-z](_?[A-Za-z0-9])*",
          contains: [BACKSLASH_ESCAPE])
    ]);
