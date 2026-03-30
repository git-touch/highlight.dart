// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `dos`.
Mode dos(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  mode0.scope = r'comment';
  mode0.begin = r'^\s*@?rem\b';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode0.relevance = 10;
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'Batch file (DOS)',
    aliases: [r'bat', r'cmd'],
    caseInsensitive: true,
    illegal: r'\/\*',
    keywords: {
      r'keyword': [
        r'if',
        r'else',
        r'goto',
        r'for',
        r'in',
        r'do',
        r'call',
        r'exit',
        r'not',
        r'exist',
        r'errorlevel',
        r'defined',
        r'equ',
        r'neq',
        r'lss',
        r'leq',
        r'gtr',
        r'geq',
      ],
      r'built_in': [
        r'prn',
        r'nul',
        r'lpt3',
        r'lpt2',
        r'lpt1',
        r'con',
        r'com4',
        r'com3',
        r'com2',
        r'com1',
        r'aux',
        r'shift',
        r'cd',
        r'dir',
        r'echo',
        r'setlocal',
        r'endlocal',
        r'set',
        r'pause',
        r'copy',
        r'append',
        r'assoc',
        r'at',
        r'attrib',
        r'break',
        r'cacls',
        r'cd',
        r'chcp',
        r'chdir',
        r'chkdsk',
        r'chkntfs',
        r'cls',
        r'cmd',
        r'color',
        r'comp',
        r'compact',
        r'convert',
        r'date',
        r'dir',
        r'diskcomp',
        r'diskcopy',
        r'doskey',
        r'erase',
        r'fs',
        r'find',
        r'findstr',
        r'format',
        r'ftype',
        r'graftabl',
        r'help',
        r'keyb',
        r'label',
        r'md',
        r'mkdir',
        r'mode',
        r'more',
        r'move',
        r'path',
        r'pause',
        r'print',
        r'popd',
        r'pushd',
        r'promt',
        r'rd',
        r'recover',
        r'rem',
        r'rename',
        r'replace',
        r'restore',
        r'rmdir',
        r'shift',
        r'sort',
        r'start',
        r'subst',
        r'time',
        r'title',
        r'tree',
        r'type',
        r'ver',
        r'verify',
        r'vol',
        r'ping',
        r'net',
        r'ipconfig',
        r'taskkill',
        r'xcopy',
        r'ren',
        r'del',
      ],
    },
    contains: [
      Mode(scope: r'variable', begin: r'%%[^ ]|%[^ ]+?%|![^ ]+?!'),
      Mode(
        scope: r'function',
        begin: r'^\s*[A-Za-z._?][A-Za-z0-9_$#@~.?]*(:|\s+label)',
        end: r'goto:eof',
        contains: [
          Mode(
            scope: r'title',
            begin: r'([_a-zA-Z]\w*\.)*([_a-zA-Z]\w*:)?[_a-zA-Z]\w*',
            relevance: 0,
          ),
          mode0,
        ],
      ),
      Mode(scope: r'number', begin: r'\b\d+', relevance: 0),
      mode0,
    ],
  );
}
