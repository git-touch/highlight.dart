// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `delphi`.
Mode delphi(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  final Mode mode18 = Mode();
  final Mode mode19 = Mode();
  mode0.scope = r'string';
  mode0.begin = r"'";
  mode0.end = r"'";
  mode0.contains = [mode1];
  mode1.begin = r"''";
  mode2.scope = r'string';
  mode2.variants = [mode3, mode4, mode5, mode6];
  mode3.match = r'#\d[\d_]*';
  mode4.match = r'#\$[\dA-Fa-f][\dA-Fa-f_]*';
  mode5.match = r'#&[0-7][0-7_]*';
  mode6.match = r'#%[01][01_]*';
  mode7.scope = r'title';
  mode7.begin = r'[a-zA-Z]\w*';
  mode7.relevance = 0;
  mode8.scope = r'meta';
  mode8.variants = [mode9, mode10];
  mode9.begin = r'\{\$';
  mode9.end = r'\}';
  mode10.begin = r'\(\*\$';
  mode10.end = r'\*\)';
  mode11.scope = r'comment';
  mode11.begin = r'//';
  mode11.end = r'$';
  mode11.contains = [mode12, mode13];
  mode12.scope = r'doctag';
  mode12.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode12.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode12.excludeBegin = true;
  mode12.relevance = 0;
  mode13.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode14.scope = r'comment';
  mode14.begin = r'\{';
  mode14.end = r'\}';
  mode14.contains = [mode15, mode16];
  mode14.relevance = 0;
  mode15.scope = r'doctag';
  mode15.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode15.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode15.excludeBegin = true;
  mode15.relevance = 0;
  mode16.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode17.scope = r'comment';
  mode17.begin = r'\(\*';
  mode17.end = r'\*\)';
  mode17.contains = [mode18, mode19];
  mode17.relevance = 10;
  mode18.scope = r'doctag';
  mode18.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode18.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode18.excludeBegin = true;
  mode18.relevance = 0;
  mode19.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'Delphi',
    aliases: [r'dpr', r'dfm', r'pas', r'pascal'],
    caseInsensitive: true,
    keywords: [
      r'exports',
      r'register',
      r'file',
      r'shl',
      r'array',
      r'record',
      r'property',
      r'for',
      r'mod',
      r'while',
      r'set',
      r'ally',
      r'label',
      r'uses',
      r'raise',
      r'not',
      r'stored',
      r'class',
      r'safecall',
      r'var',
      r'interface',
      r'or',
      r'private',
      r'static',
      r'exit',
      r'index',
      r'inherited',
      r'to',
      r'else',
      r'stdcall',
      r'override',
      r'shr',
      r'asm',
      r'far',
      r'resourcestring',
      r'finalization',
      r'packed',
      r'virtual',
      r'out',
      r'and',
      r'protected',
      r'library',
      r'do',
      r'xorwrite',
      r'goto',
      r'near',
      r'function',
      r'end',
      r'div',
      r'overload',
      r'object',
      r'unit',
      r'begin',
      r'string',
      r'on',
      r'inline',
      r'repeat',
      r'until',
      r'destructor',
      r'write',
      r'message',
      r'program',
      r'with',
      r'read',
      r'initialization',
      r'except',
      r'default',
      r'nil',
      r'if',
      r'case',
      r'cdecl',
      r'in',
      r'downto',
      r'threadvar',
      r'of',
      r'try',
      r'pascal',
      r'const',
      r'external',
      r'constructor',
      r'type',
      r'public',
      r'then',
      r'implementation',
      r'finally',
      r'published',
      r'procedure',
      r'absolute',
      r'reintroduce',
      r'operator',
      r'as',
      r'is',
      r'abstract',
      r'alias',
      r'assembler',
      r'bitpacked',
      r'break',
      r'continue',
      r'cppdecl',
      r'cvar',
      r'enumerator',
      r'experimental',
      r'platform',
      r'deprecated',
      r'unimplemented',
      r'dynamic',
      r'export',
      r'far16',
      r'forward',
      r'generic',
      r'helper',
      r'implements',
      r'interrupt',
      r'iochecks',
      r'local',
      r'name',
      r'nodefault',
      r'noreturn',
      r'nostackframe',
      r'oldfpccall',
      r'otherwise',
      r'saveregisters',
      r'softfloat',
      r'specialize',
      r'strict',
      r'unaligned',
      r'varargs',
    ],
    illegal: r'"|\$[G-Zg-z]|\/\*|<\/|\|',
    contains: [
      mode0,
      mode2,
      Mode(
        scope: r'number',
        relevance: 0,
        variants: [
          Mode(match: r'\b\d[\d_]*(\.\d[\d_]*)?'),
          Mode(match: r'\$[\dA-Fa-f_]+'),
          Mode(match: r'\$', relevance: 0),
          Mode(match: r'&[0-7][0-7_]*'),
          Mode(match: r'%[01_]+'),
          Mode(match: r'%', relevance: 0),
        ],
      ),
      Mode(
        begin: r'[a-zA-Z]\w*\s*=\s*class\s*\(',
        returnBegin: true,
        contains: [mode7],
      ),
      Mode(
        scope: r'function',
        beginKeywords: r'function constructor destructor procedure',
        end: r'[:;]',
        keywords: r'function constructor|10 destructor|10 procedure|10',
        contains: [
          mode7,
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            keywords: [
              r'exports',
              r'register',
              r'file',
              r'shl',
              r'array',
              r'record',
              r'property',
              r'for',
              r'mod',
              r'while',
              r'set',
              r'ally',
              r'label',
              r'uses',
              r'raise',
              r'not',
              r'stored',
              r'class',
              r'safecall',
              r'var',
              r'interface',
              r'or',
              r'private',
              r'static',
              r'exit',
              r'index',
              r'inherited',
              r'to',
              r'else',
              r'stdcall',
              r'override',
              r'shr',
              r'asm',
              r'far',
              r'resourcestring',
              r'finalization',
              r'packed',
              r'virtual',
              r'out',
              r'and',
              r'protected',
              r'library',
              r'do',
              r'xorwrite',
              r'goto',
              r'near',
              r'function',
              r'end',
              r'div',
              r'overload',
              r'object',
              r'unit',
              r'begin',
              r'string',
              r'on',
              r'inline',
              r'repeat',
              r'until',
              r'destructor',
              r'write',
              r'message',
              r'program',
              r'with',
              r'read',
              r'initialization',
              r'except',
              r'default',
              r'nil',
              r'if',
              r'case',
              r'cdecl',
              r'in',
              r'downto',
              r'threadvar',
              r'of',
              r'try',
              r'pascal',
              r'const',
              r'external',
              r'constructor',
              r'type',
              r'public',
              r'then',
              r'implementation',
              r'finally',
              r'published',
              r'procedure',
              r'absolute',
              r'reintroduce',
              r'operator',
              r'as',
              r'is',
              r'abstract',
              r'alias',
              r'assembler',
              r'bitpacked',
              r'break',
              r'continue',
              r'cppdecl',
              r'cvar',
              r'enumerator',
              r'experimental',
              r'platform',
              r'deprecated',
              r'unimplemented',
              r'dynamic',
              r'export',
              r'far16',
              r'forward',
              r'generic',
              r'helper',
              r'implements',
              r'interrupt',
              r'iochecks',
              r'local',
              r'name',
              r'nodefault',
              r'noreturn',
              r'nostackframe',
              r'oldfpccall',
              r'otherwise',
              r'saveregisters',
              r'softfloat',
              r'specialize',
              r'strict',
              r'unaligned',
              r'varargs',
            ],
            contains: [mode0, mode2, mode8, mode11, mode14, mode17],
          ),
          mode8,
          mode11,
          mode14,
          mode17,
        ],
      ),
      mode8,
      mode11,
      mode14,
      mode17,
    ],
  );
}
