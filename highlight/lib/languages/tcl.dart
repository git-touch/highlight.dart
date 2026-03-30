// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `tcl`.
Mode tcl(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  mode0.scope = r'number';
  mode0.variants = [mode1, mode2];
  mode1.scope = r'number';
  mode1.begin = r'\b(0b[01]+)';
  mode1.relevance = 0;
  mode2.scope = r'number';
  mode2.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode2.relevance = 0;
  mode3.begin = r'\\[\s\S]';
  mode3.relevance = 0;
  return Mode(
    name: r'Tcl',
    aliases: [r'tk'],
    keywords: [
      r'after',
      r'append',
      r'apply',
      r'array',
      r'auto_execok',
      r'auto_import',
      r'auto_load',
      r'auto_mkindex',
      r'auto_mkindex_old',
      r'auto_qualify',
      r'auto_reset',
      r'bgerror',
      r'binary',
      r'break',
      r'catch',
      r'cd',
      r'chan',
      r'clock',
      r'close',
      r'concat',
      r'continue',
      r'dde',
      r'dict',
      r'encoding',
      r'eof',
      r'error',
      r'eval',
      r'exec',
      r'exit',
      r'expr',
      r'fblocked',
      r'fconfigure',
      r'fcopy',
      r'file',
      r'fileevent',
      r'filename',
      r'flush',
      r'for',
      r'foreach',
      r'format',
      r'gets',
      r'glob',
      r'global',
      r'history',
      r'http',
      r'if',
      r'incr',
      r'info',
      r'interp',
      r'join',
      r'lappend|10',
      r'lassign|10',
      r'lindex|10',
      r'linsert|10',
      r'list',
      r'llength|10',
      r'load',
      r'lrange|10',
      r'lrepeat|10',
      r'lreplace|10',
      r'lreverse|10',
      r'lsearch|10',
      r'lset|10',
      r'lsort|10',
      r'mathfunc',
      r'mathop',
      r'memory',
      r'msgcat',
      r'namespace',
      r'open',
      r'package',
      r'parray',
      r'pid',
      r'pkg::create',
      r'pkg_mkIndex',
      r'platform',
      r'platform::shell',
      r'proc',
      r'puts',
      r'pwd',
      r'read',
      r'refchan',
      r'regexp',
      r'registry',
      r'regsub|10',
      r'rename',
      r'return',
      r'safe',
      r'scan',
      r'seek',
      r'set',
      r'socket',
      r'source',
      r'split',
      r'string',
      r'subst',
      r'switch',
      r'tcl_endOfWord',
      r'tcl_findLibrary',
      r'tcl_startOfNextWord',
      r'tcl_startOfPreviousWord',
      r'tcl_wordBreakAfter',
      r'tcl_wordBreakBefore',
      r'tcltest',
      r'tclvars',
      r'tell',
      r'time',
      r'tm',
      r'trace',
      r'unknown',
      r'unload',
      r'unset',
      r'update',
      r'uplevel',
      r'upvar',
      r'variable',
      r'vwait',
      r'while',
    ],
    contains: [
      Mode(
        scope: r'comment',
        begin: r';[ \t]*#',
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
        begin: r'^[ \t]*#',
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
        beginKeywords: r'proc',
        end: r'[\{]',
        excludeEnd: true,
        contains: [
          Mode(
            scope: r'title',
            begin: r'[ \t\n\r]+(::)?[a-zA-Z_]((::)?[a-zA-Z0-9_])*',
            end: r'[ \t\n\r]',
            endsWithParent: true,
            excludeEnd: true,
          ),
        ],
      ),
      Mode(
        scope: r'variable',
        variants: [
          Mode(
            begin:
                r'\$(?:::)?[a-zA-Z_][a-zA-Z0-9_]*(::[a-zA-Z_][a-zA-Z0-9_]*)*',
          ),
          Mode(
            begin: r'\$\{(::)?[a-zA-Z_]((::)?[a-zA-Z0-9_])*',
            end: r'\}',
            contains: [mode0],
          ),
        ],
      ),
      Mode(
        scope: r'string',
        contains: [mode3],
        variants: [
          Mode(scope: r'string', begin: r'"', end: r'"', contains: [mode3]),
        ],
      ),
      mode0,
    ],
  );
}
