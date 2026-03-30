// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `mipsasm`.
Mode mipsasm(Highlight hljs) {
  return Mode(
    name: r'MIPS Assembly',
    caseInsensitive: true,
    aliases: [r'mips'],
    keywords: {
      r'$pattern': r'\.?[a-zA-Z]\w*',
      r'meta':
          r'.2byte .4byte .align .ascii .asciz .balign .byte .code .data .else .end .endif .endm .endr .equ .err .exitm .extern .global .hword .if .ifdef .ifndef .include .irp .long .macro .rept .req .section .set .skip .space .text .word .ltorg ',
      r'built_in':
          r'$0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $30 $31 zero at v0 v1 a0 a1 a2 a3 a4 a5 a6 a7 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 s0 s1 s2 s3 s4 s5 s6 s7 s8 k0 k1 gp sp fp ra $f0 $f1 $f2 $f2 $f4 $f5 $f6 $f7 $f8 $f9 $f10 $f11 $f12 $f13 $f14 $f15 $f16 $f17 $f18 $f19 $f20 $f21 $f22 $f23 $f24 $f25 $f26 $f27 $f28 $f29 $f30 $f31 Context Random EntryLo0 EntryLo1 Context PageMask Wired EntryHi HWREna BadVAddr Count Compare SR IntCtl SRSCtl SRSMap Cause EPC PRId EBase Config Config1 Config2 Config3 LLAddr Debug DEPC DESAVE CacheErr ECC ErrorEPC TagLo DataLo TagHi DataHi WatchLo WatchHi PerfCtl PerfCnt ',
    },
    contains: [
      Mode(
        scope: r'keyword',
        begin:
            r'\b(addi?u?|andi?|b(al)?|beql?|bgez(al)?l?|bgtzl?|blezl?|bltz(al)?l?|bnel?|cl[oz]|divu?|ext|ins|j(al)?|jalr(\.hb)?|jr(\.hb)?|lbu?|lhu?|ll|lui|lw[lr]?|maddu?|mfhi|mflo|movn|movz|move|msubu?|mthi|mtlo|mul|multu?|nop|nor|ori?|rotrv?|sb|sc|se[bh]|sh|sllv?|slti?u?|srav?|srlv?|subu?|sw[lr]?|xori?|wsbh|abs\.[sd]|add\.[sd]|alnv.ps|bc1[ft]l?|c\.(s?f|un|u?eq|[ou]lt|[ou]le|ngle?|seq|l[et]|ng[et])\.[sd]|(ceil|floor|round|trunc)\.[lw]\.[sd]|cfc1|cvt\.d\.[lsw]|cvt\.l\.[dsw]|cvt\.ps\.s|cvt\.s\.[dlw]|cvt\.s\.p[lu]|cvt\.w\.[dls]|div\.[ds]|ldx?c1|luxc1|lwx?c1|madd\.[sd]|mfc1|mov[fntz]?\.[ds]|msub\.[sd]|mth?c1|mul\.[ds]|neg\.[ds]|nmadd\.[ds]|nmsub\.[ds]|p[lu][lu]\.ps|recip\.fmt|r?sqrt\.[ds]|sdx?c1|sub\.[ds]|suxc1|swx?c1|break|cache|d?eret|[de]i|ehb|mfc0|mtc0|pause|prefx?|rdhwr|rdpgpr|sdbbp|ssnop|synci?|syscall|teqi?|tgei?u?|tlb(p|r|w[ir])|tlti?u?|tnei?|wait|wrpgpr)',
        end: r'\s',
      ),
      Mode(
        scope: r'comment',
        begin: r'[;#](?!\s*$)',
        end: r'$',
        contains: [
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
      ),
      Mode(
        scope: r'comment',
        begin: r'/\*',
        end: r'\*/',
        contains: [
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(scope: r'string', begin: r"'", end: r"[^\\]'", relevance: 0),
      Mode(
        scope: r'title',
        begin: r'\|',
        end: r'\|',
        illegal: r'\n',
        relevance: 0,
      ),
      Mode(
        scope: r'number',
        variants: [
          Mode(begin: r'0x[0-9a-f]+'),
          Mode(begin: r'\b-?\d+'),
        ],
        relevance: 0,
      ),
      Mode(
        scope: r'symbol',
        variants: [
          Mode(begin: r'^\s*[a-z_\.\$][a-z0-9_\.\$]+:'),
          Mode(begin: r'^\s*[0-9]+:'),
          Mode(begin: r'[0-9]+[bf]'),
        ],
        relevance: 0,
      ),
    ],
    illegal: r'\/',
  );
}
