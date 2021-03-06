// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final tp = Mode(refs: {
  '~contains~0~contains~2': Mode(className: "symbol", begin: ":[^\\]]+"),
  '~contains~0~contains~1':
      Mode(className: "number", begin: "[1-9][0-9]*", relevance: 0),
}, keywords: {
  "keyword":
      "ABORT ACC ADJUST AND AP_LD BREAK CALL CNT COL CONDITION CONFIG DA DB DIV DETECT ELSE END ENDFOR ERR_NUM ERROR_PROG FINE FOR GP GUARD INC IF JMP LINEAR_MAX_SPEED LOCK MOD MONITOR OFFSET Offset OR OVERRIDE PAUSE PREG PTH RT_LD RUN SELECT SKIP Skip TA TB TO TOOL_OFFSET Tool_Offset UF UT UFRAME_NUM UTOOL_NUM UNLOCK WAIT X Y Z W P R STRLEN SUBSTR FINDSTR VOFFSET PROG ATTR MN POS",
  "literal": "ON OFF max_speed LPOS JPOS ENABLE DISABLE START STOP RESET"
}, contains: [
  Mode(
      className: "built_in",
      begin:
          "(AR|P|PAYLOAD|PR|R|SR|RSR|LBL|VR|UALM|MESSAGE|UTOOL|UFRAME|TIMER|TIMER_OVERFLOW|JOINT_MAX_SPEED|RESUME_PROG|DIAG_REC)\\[",
      end: "\\]",
      contains: [
        Mode(self: true),
        Mode(ref: '~contains~0~contains~1'),
        Mode(ref: '~contains~0~contains~2')
      ]),
  Mode(
      className: "built_in",
      begin: "(AI|AO|DI|DO|F|RI|RO|UI|UO|GI|GO|SI|SO)\\[",
      end: "\\]",
      contains: [
        Mode(self: true),
        Mode(ref: '~contains~0~contains~1'),
        QUOTE_STRING_MODE,
        Mode(ref: '~contains~0~contains~2')
      ]),
  Mode(className: "keyword", begin: "/(PROG|ATTR|MN|POS|END)\\b"),
  Mode(className: "keyword", begin: "(CALL|RUN|POINT_LOGIC|LBL)\\b"),
  Mode(
      className: "keyword",
      begin: "\\b(ACC|CNT|Skip|Offset|PSPD|RT_LD|AP_LD|Tool_Offset)"),
  Mode(
      className: "number",
      begin: "\\d+(sec|msec|mm/sec|cm/min|inch/min|deg/sec|mm|in|cm)?\\b",
      relevance: 0),
  Mode(className: "comment", begin: "//", end: "[;\$]", contains: [
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ]),
  Mode(className: "comment", begin: "!", end: "[;\$]", contains: [
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ]),
  Mode(className: "comment", begin: "--eg:", end: "\$", contains: [
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ]),
  QUOTE_STRING_MODE,
  Mode(className: "string", begin: "'", end: "'"),
  C_NUMBER_MODE,
  Mode(className: "variable", begin: "\\\$[A-Za-z0-9_]+")
]);
