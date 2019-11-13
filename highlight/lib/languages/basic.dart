// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final basic = Mode(
    refs: {},
    case_insensitive: true,
    illegal: "^.",
    lexemes: "[a-zA-Z][a-zA-Z0-9_\$%!#]*",
    keywords: {
      "keyword":
          "ABS ASC AND ATN AUTO|0 BEEP BLOAD|10 BSAVE|10 CALL CALLS CDBL CHAIN CHDIR CHR\$|10 CINT CIRCLE CLEAR CLOSE CLS COLOR COM COMMON CONT COS CSNG CSRLIN CVD CVI CVS DATA DATE\$ DEFDBL DEFINT DEFSNG DEFSTR DEF|0 SEG USR DELETE DIM DRAW EDIT END ENVIRON ENVIRON\$ EOF EQV ERASE ERDEV ERDEV\$ ERL ERR ERROR EXP FIELD FILES FIX FOR|0 FRE GET GOSUB|10 GOTO HEX\$ IF THEN ELSE|0 INKEY\$ INP INPUT INPUT# INPUT\$ INSTR IMP INT IOCTL IOCTL\$ KEY ON OFF LIST KILL LEFT\$ LEN LET LINE LLIST LOAD LOC LOCATE LOF LOG LPRINT USING LSET MERGE MID\$ MKDIR MKD\$ MKI\$ MKS\$ MOD NAME NEW NEXT NOISE NOT OCT\$ ON OR PEN PLAY STRIG OPEN OPTION BASE OUT PAINT PALETTE PCOPY PEEK PMAP POINT POKE POS PRINT PRINT] PSET PRESET PUT RANDOMIZE READ REM RENUM RESET|0 RESTORE RESUME RETURN|0 RIGHT\$ RMDIR RND RSET RUN SAVE SCREEN SGN SHELL SIN SOUND SPACE\$ SPC SQR STEP STICK STOP STR\$ STRING\$ SWAP SYSTEM TAB TAN TIME\$ TIMER TROFF TRON TO USR VAL VARPTR VARPTR\$ VIEW WAIT WHILE WEND WIDTH WINDOW WRITE XOR"
    },
    contains: [
      QUOTE_STRING_MODE,
      Mode(
          className: "comment",
          begin: "REM",
          end: "\$",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      Mode(
          className: "comment",
          begin: "'",
          end: "\$",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 0),
      Mode(className: "symbol", begin: "^[0-9]+ ", relevance: 10),
      Mode(
          className: "number",
          begin: "\\b([0-9]+[0-9edED.]*[#!]?)",
          relevance: 0),
      Mode(className: "number", begin: "(&[hH][0-9a-fA-F]{1,4})"),
      Mode(className: "number", begin: "(&[oO][0-7]{1,6})")
    ]);
