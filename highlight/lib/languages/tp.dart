// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode tp(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  _mode0.scope = r'number';
  _mode0.begin = r'[1-9][0-9]*';
  _mode0.relevance = 0;
  _mode1.scope = r'symbol';
  _mode1.begin = r':[^\]]+';
  _mode2.scope = r'string';
  _mode2.begin = r'"';
  _mode2.end = r'"';
  _mode2.illegal = r'\n';
  _mode2.contains = [_mode3];
  _mode3.begin = r'\\[\s\S]';
  _mode3.relevance = 0;
  return Mode(
    name: r'TP',
    keywords: {
      r'keyword': [
        r'ABORT',
        r'ACC',
        r'ADJUST',
        r'AND',
        r'AP_LD',
        r'BREAK',
        r'CALL',
        r'CNT',
        r'COL',
        r'CONDITION',
        r'CONFIG',
        r'DA',
        r'DB',
        r'DIV',
        r'DETECT',
        r'ELSE',
        r'END',
        r'ENDFOR',
        r'ERR_NUM',
        r'ERROR_PROG',
        r'FINE',
        r'FOR',
        r'GP',
        r'GUARD',
        r'INC',
        r'IF',
        r'JMP',
        r'LINEAR_MAX_SPEED',
        r'LOCK',
        r'MOD',
        r'MONITOR',
        r'OFFSET',
        r'Offset',
        r'OR',
        r'OVERRIDE',
        r'PAUSE',
        r'PREG',
        r'PTH',
        r'RT_LD',
        r'RUN',
        r'SELECT',
        r'SKIP',
        r'Skip',
        r'TA',
        r'TB',
        r'TO',
        r'TOOL_OFFSET',
        r'Tool_Offset',
        r'UF',
        r'UT',
        r'UFRAME_NUM',
        r'UTOOL_NUM',
        r'UNLOCK',
        r'WAIT',
        r'X',
        r'Y',
        r'Z',
        r'W',
        r'P',
        r'R',
        r'STRLEN',
        r'SUBSTR',
        r'FINDSTR',
        r'VOFFSET',
        r'PROG',
        r'ATTR',
        r'MN',
        r'POS',
      ],
      r'literal': [
        r'ON',
        r'OFF',
        r'max_speed',
        r'LPOS',
        r'JPOS',
        r'ENABLE',
        r'DISABLE',
        r'START',
        r'STOP',
        r'RESET',
      ],
    },
    contains: [
      Mode(
        scope: r'built_in',
        begin:
            r'(AR|P|PAYLOAD|PR|R|SR|RSR|LBL|VR|UALM|MESSAGE|UTOOL|UFRAME|TIMER|TIMER_OVERFLOW|JOINT_MAX_SPEED|RESUME_PROG|DIAG_REC)\[',
        end: r'\]',
        contains: [r'self', _mode0, _mode1],
      ),
      Mode(
        scope: r'built_in',
        begin: r'(AI|AO|DI|DO|F|RI|RO|UI|UO|GI|GO|SI|SO)\[',
        end: r'\]',
        contains: [r'self', _mode0, _mode2, _mode1],
      ),
      Mode(scope: r'keyword', begin: r'/(PROG|ATTR|MN|POS|END)\b'),
      Mode(scope: r'keyword', begin: r'(CALL|RUN|POINT_LOGIC|LBL)\b'),
      Mode(
        scope: r'keyword',
        begin: r'\b(ACC|CNT|Skip|Offset|PSPD|RT_LD|AP_LD|Tool_Offset)',
      ),
      Mode(
        scope: r'number',
        begin: r'\d+(sec|msec|mm/sec|cm/min|inch/min|deg/sec|mm|in|cm)?\b',
        relevance: 0,
      ),
      Mode(
        scope: r'comment',
        begin: r'//',
        end: r'[;$]',
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
        begin: r'!',
        end: r'[;$]',
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
        begin: r'--eg:',
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
      _mode2,
      Mode(scope: r'string', begin: r"'", end: r"'"),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(scope: r'variable', begin: r'\$[A-Za-z0-9_]+'),
    ],
  );
}
