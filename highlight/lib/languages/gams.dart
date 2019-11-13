// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final gams = Mode(
    refs: {
      '~contains~9~contains~2': Mode(
          className: "symbol",
          variants: [Mode(begin: "\\=[lgenxc]="), Mode(begin: "\\\$")]),
      '~contains~7~contains~6': Mode(
          begin: "[a-z][a-z0-9_]*(\\([a-z0-9_, ]*\\))?[ \\t]+",
          excludeBegin: true,
          end: "\$",
          endsWithParent: true,
          contains: [
            Mode(ref: '~contains~7~contains~5~contains~0'),
            Mode(ref: '~contains~7~contains~5'),
            Mode(
                className: "comment",
                begin: "([ ]*[a-z0-9&#*=?@>\\\\<:\\-,()\$\\[\\]_.{}!+%^]+)+",
                relevance: 0)
          ]),
      '~contains~7~contains~5~contains~0': Mode(
          className: "comment",
          variants: [Mode(begin: "'", end: "'"), Mode(begin: "\"", end: "\"")],
          illegal: "\\n",
          contains: [BACKSLASH_ESCAPE]),
      '~contains~7~contains~5': Mode(begin: "/", end: "/", keywords: {
        "keyword":
            "abort acronym acronyms alias all and assign binary card diag display else eq file files for free ge gt if integer le loop lt maximizing minimizing model models ne negative no not option options or ord positive prod put putpage puttl repeat sameas semicont semiint smax smin solve sos1 sos2 sum system table then until using while xor yes",
        "literal": "eps inf na",
        "built-in":
            "abs arccos arcsin arctan arctan2 Beta betaReg binomial ceil centropy cos cosh cvPower div div0 eDist entropy errorf execSeed exp fact floor frac gamma gammaReg log logBeta logGamma log10 log2 mapVal max min mod ncpCM ncpF ncpVUpow ncpVUsin normal pi poly power randBinomial randLinear randTriangle round rPower sigmoid sign signPower sin sinh slexp sllog10 slrec sqexp sqlog10 sqr sqrec sqrt tan tanh trunc uniform uniformInt vcPower bool_and bool_eqv bool_imp bool_not bool_or bool_xor ifThen rel_eq rel_ge rel_gt rel_le rel_lt rel_ne gday gdow ghour gleap gmillisec gminute gmonth gsecond gyear jdate jnow jstart jtime errorLevel execError gamsRelease gamsVersion handleCollect handleDelete handleStatus handleSubmit heapFree heapLimit heapSize jobHandle jobKill jobStatus jobTerminate licenseLevel licenseStatus maxExecError sleep timeClose timeComp timeElapsed timeExec timeStart"
      }, contains: [
        Mode(ref: '~contains~7~contains~5~contains~0'),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        C_NUMBER_MODE
      ]),
    },
    aliases: ["gms"],
    case_insensitive: true,
    keywords: {
      "keyword":
          "abort acronym acronyms alias all and assign binary card diag display else eq file files for free ge gt if integer le loop lt maximizing minimizing model models ne negative no not option options or ord positive prod put putpage puttl repeat sameas semicont semiint smax smin solve sos1 sos2 sum system table then until using while xor yes",
      "literal": "eps inf na",
      "built-in":
          "abs arccos arcsin arctan arctan2 Beta betaReg binomial ceil centropy cos cosh cvPower div div0 eDist entropy errorf execSeed exp fact floor frac gamma gammaReg log logBeta logGamma log10 log2 mapVal max min mod ncpCM ncpF ncpVUpow ncpVUsin normal pi poly power randBinomial randLinear randTriangle round rPower sigmoid sign signPower sin sinh slexp sllog10 slrec sqexp sqlog10 sqr sqrec sqrt tan tanh trunc uniform uniformInt vcPower bool_and bool_eqv bool_imp bool_not bool_or bool_xor ifThen rel_eq rel_ge rel_gt rel_le rel_lt rel_ne gday gdow ghour gleap gmillisec gminute gmonth gsecond gyear jdate jnow jstart jtime errorLevel execError gamsRelease gamsVersion handleCollect handleDelete handleStatus handleSubmit heapFree heapLimit heapSize jobHandle jobKill jobStatus jobTerminate licenseLevel licenseStatus maxExecError sleep timeClose timeComp timeElapsed timeExec timeStart"
    },
    contains: [
      Mode(
          className: "comment",
          begin: "^\\\$ontext",
          end: "^\\\$offtext",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ]),
      Mode(
          className: "meta",
          begin: "^\\\$[a-z0-9]+",
          end: "\$",
          returnBegin: true,
          contains: [Mode(className: "meta-keyword", begin: "^\\\$[a-z0-9]+")]),
      Mode(className: "comment", begin: "^\\*", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      QUOTE_STRING_MODE,
      APOS_STRING_MODE,
      Mode(
          beginKeywords:
              "set sets parameter parameters variable variables scalar scalars equation equations",
          end: ";",
          contains: [
            Mode(className: "comment", begin: "^\\*", end: "\$", contains: [
              PHRASAL_WORDS_MODE,
              Mode(
                  className: "doctag",
                  begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                  relevance: 0)
            ]),
            C_LINE_COMMENT_MODE,
            C_BLOCK_COMMENT_MODE,
            QUOTE_STRING_MODE,
            APOS_STRING_MODE,
            Mode(ref: '~contains~7~contains~5'),
            Mode(ref: '~contains~7~contains~6')
          ]),
      Mode(beginKeywords: "table", end: ";", returnBegin: true, contains: [
        Mode(
            beginKeywords: "table",
            end: "\$",
            contains: [Mode(ref: '~contains~7~contains~6')]),
        Mode(className: "comment", begin: "^\\*", end: "\$", contains: [
          PHRASAL_WORDS_MODE,
          Mode(
              className: "doctag",
              begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
              relevance: 0)
        ]),
        C_LINE_COMMENT_MODE,
        C_BLOCK_COMMENT_MODE,
        QUOTE_STRING_MODE,
        APOS_STRING_MODE,
        C_NUMBER_MODE
      ]),
      Mode(
          className: "function",
          begin: "^[a-z][a-z0-9_,\\-+' ()\$]+\\.{2}",
          returnBegin: true,
          contains: [
            Mode(className: "title", begin: "^[a-z0-9_]+"),
            Mode(
                className: "params",
                begin: "\\(",
                end: "\\)",
                excludeBegin: true,
                excludeEnd: true),
            Mode(ref: '~contains~9~contains~2')
          ]),
      C_NUMBER_MODE,
      Mode(ref: '~contains~9~contains~2')
    ]);
