// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode delphi(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  final Mode _mode19 = Mode();
  _mode0.scope = r'string';
  _mode0.begin = r"'";
  _mode0.end = r"'";
  _mode0.contains = [_mode1];
  _mode1.begin = r"''";
  _mode2.scope = r'string';
  _mode2.variants = [_mode3, _mode4, _mode5, _mode6];
  _mode3.match = r'#\d[\d_]*';
  _mode4.match = r'#\$[\dA-Fa-f][\dA-Fa-f_]*';
  _mode5.match = r'#&[0-7][0-7_]*';
  _mode6.match = r'#%[01][01_]*';
  _mode7.scope = r'title';
  _mode7.begin = r'[a-zA-Z]\w*';
  _mode7.relevance = 0;
  _mode8.scope = r'meta';
  _mode8.variants = [_mode9, _mode10];
  _mode9.begin = r'\{\$';
  _mode9.end = r'\}';
  _mode10.begin = r'\(\*\$';
  _mode10.end = r'\*\)';
  _mode11.scope = r'comment';
  _mode11.begin = r'//';
  _mode11.end = r'$';
  _mode11.contains = [_mode12, _mode13];
  _mode12.scope = r'doctag';
  _mode12.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode12.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode12.excludeBegin = true;
  _mode12.relevance = 0;
  _mode13.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode14.scope = r'comment';
  _mode14.begin = r'\{';
  _mode14.end = r'\}';
  _mode14.contains = [_mode15, _mode16];
  _mode14.relevance = 0;
  _mode15.scope = r'doctag';
  _mode15.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode15.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode15.excludeBegin = true;
  _mode15.relevance = 0;
  _mode16.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode17.scope = r'comment';
  _mode17.begin = r'\(\*';
  _mode17.end = r'\*\)';
  _mode17.contains = [_mode18, _mode19];
  _mode17.relevance = 10;
  _mode18.scope = r'doctag';
  _mode18.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode18.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode18.excludeBegin = true;
  _mode18.relevance = 0;
  _mode19.begin =
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
      _mode0,
      _mode2,
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
        contains: [_mode7],
      ),
      Mode(
        scope: r'function',
        beginKeywords: r'function constructor destructor procedure',
        end: r'[:;]',
        keywords: r'function constructor|10 destructor|10 procedure|10',
        contains: [
          _mode7,
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
            contains: [_mode0, _mode2, _mode8, _mode11, _mode14, _mode17],
          ),
          _mode8,
          _mode11,
          _mode14,
          _mode17,
        ],
      ),
      _mode8,
      _mode11,
      _mode14,
      _mode17,
    ],
  );
}
