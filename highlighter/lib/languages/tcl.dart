// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final tcl = Mode(
    refs: {},
    aliases: ["tk"],
    keywords:
        "after append apply array auto_execok auto_import auto_load auto_mkindex auto_mkindex_old auto_qualify auto_reset bgerror binary break catch cd chan clock close concat continue dde dict encoding eof error eval exec exit expr fblocked fconfigure fcopy file fileevent filename flush for foreach format gets glob global history http if incr info interp join lappend|10 lassign|10 lindex|10 linsert|10 list llength|10 load lrange|10 lrepeat|10 lreplace|10 lreverse|10 lsearch|10 lset|10 lsort|10 mathfunc mathop memory msgcat namespace open package parray pid pkg::create pkg_mkIndex platform platform::shell proc puts pwd read refchan regexp registry regsub|10 rename return safe scan seek set socket source split string subst switch tcl_endOfWord tcl_findLibrary tcl_startOfNextWord tcl_startOfPreviousWord tcl_wordBreakAfter tcl_wordBreakBefore tcltest tclvars tell time tm trace unknown unload unset update uplevel upvar variable vwait while",
    contains: [
      Mode(className: "comment", begin: ";[ \\t]*#", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(className: "comment", begin: "^[ \\t]*#", end: "\$", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(beginKeywords: "proc", end: "[\\{]", excludeEnd: true, contains: [
        Mode(
            className: "title",
            begin: "[ \\t\\n\\r]+(::)?[a-zA-Z_]((::)?[a-zA-Z0-9_])*",
            end: "[ \\t\\n\\r]",
            endsWithParent: true,
            excludeEnd: true)
      ]),
      Mode(excludeEnd: true, variants: [
        Mode(
            begin:
                "\\\$(\\{)?(::)?[a-zA-Z_]((::)?[a-zA-Z0-9_])*\\(([a-zA-Z0-9_])*\\)",
            end: "[^a-zA-Z0-9_\\}\\\$]"),
        Mode(
            begin: "\\\$(\\{)?(::)?[a-zA-Z_]((::)?[a-zA-Z0-9_])*",
            end: "(\\))?[^a-zA-Z0-9_\\}\\\$]")
      ]),
      Mode(className: "string", contains: [
        BACKSLASH_ESCAPE
      ], variants: [
        Mode(
            className: "string",
            begin: "\"",
            end: "\"",
            illegal: null,
            contains: [BACKSLASH_ESCAPE])
      ]),
      Mode(className: "number", variants: [BINARY_NUMBER_MODE, C_NUMBER_MODE])
    ]);
