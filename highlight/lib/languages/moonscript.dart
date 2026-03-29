// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode moonscript(Highlight hljs) {
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
  _mode0.scope = r'number';
  _mode0.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode0.relevance = 0;
  _mode0.starts = _mode1;
  _mode1.end = r'(\s*/)?';
  _mode1.relevance = 0;
  _mode2.scope = r'string';
  _mode2.variants = [
    _mode3,
    _mode5,
  ];
  _mode3.begin = r"'";
  _mode3.end = r"'";
  _mode3.contains = [
    _mode4,
  ];
  _mode4.begin = r'\\[\s\S]';
  _mode4.relevance = 0;
  _mode5.begin = r'"';
  _mode5.end = r'"';
  _mode5.contains = [
    _mode4,
    _mode6,
  ];
  _mode6.scope = r'subst';
  _mode6.begin = r'#\{';
  _mode6.end = r'\}';
  _mode6.keywords = {
    r'keyword':
        r'if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using',
    r'literal': r'true false nil',
    r'built_in':
        r'_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table',
  };
  _mode6.contains = [
    _mode0,
    _mode2,
    _mode7,
    _mode8,
    _mode9,
  ];
  _mode7.scope = r'built_in';
  _mode7.begin = r'@__[a-zA-Z]\w*';
  _mode8.begin = r'@[a-zA-Z]\w*';
  _mode9.begin = r'[a-zA-Z]\w*\\[a-zA-Z]\w*';
  _mode10.scope = r'title';
  _mode10.begin = r'[A-Za-z$_][0-9A-Za-z$_]*';
  _mode10.relevance = 0;
  _mode11.scope = r'params';
  _mode11.begin = r'\([^\(]';
  _mode11.returnBegin = true;
  _mode11.contains = [
    _mode12,
  ];
  _mode12.begin = r'\(';
  _mode12.end = r'\)';
  _mode12.keywords = {
    r'keyword':
        r'if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using',
    r'literal': r'true false nil',
    r'built_in':
        r'_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table',
  };
  _mode12.contains = [
    r'self',
    _mode0,
    _mode2,
    _mode7,
    _mode8,
    _mode9,
  ];
  return Mode(
    name: r'MoonScript',
    aliases: [
      r'moon',
    ],
    keywords: {
      r'keyword':
          r'if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using',
      r'literal': r'true false nil',
      r'built_in':
          r'_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table',
    },
    illegal: r'\/\*',
    contains: [
      _mode0,
      _mode2,
      _mode7,
      _mode8,
      _mode9,
      Mode(
        scope: r'comment',
        begin: r'--',
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
        scope: r'function',
        begin: r'^\s*[A-Za-z$_][0-9A-Za-z$_]*\s*=\s*(\(.*\)\s*)?\B[-=]>',
        end: r'[-=]>',
        returnBegin: true,
        contains: [
          _mode10,
          _mode11,
        ],
      ),
      Mode(
        begin: r'[\(,:=]\s*',
        relevance: 0,
        contains: [
          Mode(
            scope: r'function',
            begin: r'(\(.*\)\s*)?\B[-=]>',
            end: r'[-=]>',
            returnBegin: true,
            contains: [
              _mode11,
            ],
          ),
        ],
      ),
      Mode(
        scope: r'class',
        beginKeywords: r'class',
        end: r'$',
        illegal: r'[:="\[\]]',
        contains: [
          Mode(
            beginKeywords: r'extends',
            endsWithParent: true,
            illegal: r'[:="\[\]]',
            contains: [
              _mode10,
            ],
          ),
          _mode10,
        ],
      ),
      Mode(
        scope: r'name',
        begin: r'[A-Za-z$_][0-9A-Za-z$_]*:',
        end: r':',
        returnBegin: true,
        returnEnd: true,
        relevance: 0,
      ),
    ],
  );
}
