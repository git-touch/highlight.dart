// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final vbnet = Mode(
    refs: {},
    aliases: ["vb"],
    case_insensitive: true,
    keywords: {
      "keyword":
          "addhandler addressof alias and andalso aggregate ansi as async assembly auto await binary by byref byval call case catch class compare const continue custom declare default delegate dim distinct do each equals else elseif end enum erase error event exit explicit finally for friend from function get global goto group handles if implements imports in inherits interface into is isfalse isnot istrue iterator join key let lib like loop me mid mod module mustinherit mustoverride mybase myclass nameof namespace narrowing new next not notinheritable notoverridable of off on operator option optional or order orelse overloads overridable overrides paramarray partial preserve private property protected public raiseevent readonly redim rem removehandler resume return select set shadows shared skip static step stop structure strict sub synclock take text then throw to try unicode until using when where while widening with withevents writeonly xor yield",
      "built_in":
          "boolean byte cbool cbyte cchar cdate cdec cdbl char cint clng cobj csbyte cshort csng cstr ctype date decimal directcast double gettype getxmlnamespace iif integer long object sbyte short single string trycast typeof uinteger ulong ushort",
      "literal": "true false nothing"
    },
    illegal: "//|{|}|endif|gosub|variant|wend|^\\\$ ",
    contains: [
      Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          illegal: "\\n",
          contains: [Mode(begin: "\"\"")]),
      Mode(
          className: "comment",
          begin: "'",
          end: "\$",
          contains: [
            Mode(
                className: "doctag",
                begin: "'''|<!--|-->",
                contains: [PHRASAL_WORDS_MODE]),
            Mode(
                className: "doctag",
                begin: "</?",
                end: ">",
                contains: [PHRASAL_WORDS_MODE]),
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          returnBegin: true),
      C_NUMBER_MODE,
      Mode(className: "meta", begin: "#", end: "\$", keywords: {
        "meta-keyword": "if else elseif end region externalsource"
      })
    ]);
