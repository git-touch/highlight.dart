// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final dos = Mode(
    refs: {
      '~contains~1~contains~1': Mode(
          className: "comment",
          begin: "^\\s*@?rem\\b",
          end: "\$",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
    },
    aliases: ["bat", "cmd"],
    case_insensitive: true,
    illegal: "\\/\\*",
    keywords: {
      "keyword":
          "if else goto for in do call exit not exist errorlevel defined equ neq lss leq gtr geq",
      "built_in":
          "prn nul lpt3 lpt2 lpt1 con com4 com3 com2 com1 aux shift cd dir echo setlocal endlocal set pause copy append assoc at attrib break cacls cd chcp chdir chkdsk chkntfs cls cmd color comp compact convert date dir diskcomp diskcopy doskey erase fs find findstr format ftype graftabl help keyb label md mkdir mode more move path pause print popd pushd promt rd recover rem rename replace restore rmdir shiftsort start subst time title tree type ver verify vol ping net ipconfig taskkill xcopy ren del"
    },
    contains: [
      Mode(className: "variable", begin: "%%[^ ]|%[^ ]+?%|![^ ]+?!"),
      Mode(
          className: "function",
          begin: "^\\s*[A-Za-z._?][A-Za-z0-9_\$#@\\x7e.?]*(:|\\s+label)",
          end: "goto:eof",
          contains: [
            Mode(
                className: "title",
                begin: "([_a-zA-Z]\\w*\\.)*([_a-zA-Z]\\w*:)?[_a-zA-Z]\\w*",
                relevance: 0),
            Mode(ref: '~contains~1~contains~1')
          ]),
      Mode(className: "number", begin: "\\b\\d+", relevance: 0),
      Mode(ref: '~contains~1~contains~1')
    ]);
