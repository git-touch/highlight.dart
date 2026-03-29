// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode lua(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'--(?!\[=*\[)';
  _mode0.end = r'$';
  _mode0.contains = [
    _mode1,
    _mode2,
  ];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'comment';
  _mode3.begin = r'--\[=*\[';
  _mode3.end = r'\]=*\]';
  _mode3.contains = [
    _mode4,
    _mode5,
    _mode6,
  ];
  _mode3.relevance = 10;
  _mode4.begin = r'\[=*\[';
  _mode4.end = r'\]=*\]';
  _mode4.contains = [
    r'self',
  ];
  _mode5.scope = r'doctag';
  _mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode5.excludeBegin = true;
  _mode5.relevance = 0;
  _mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode7.begin = r'\\[\s\S]';
  _mode7.relevance = 0;
  return Mode(
    name: r'Lua',
    aliases: [
      r'pluto',
    ],
    keywords: {
      r'$pattern': r'[a-zA-Z_]\w*',
      r'literal': r'true false nil',
      r'keyword':
          r'and break do else elseif end for goto if in local not or repeat return then until while',
      r'built_in':
          r'_G _ENV _VERSION __index __newindex __mode __call __metatable __tostring __len __gc __add __sub __mul __div __mod __pow __concat __unm __eq __lt __le assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall arg self coroutine resume yield status wrap create running debug getupvalue debug sethook getmetatable gethook setmetatable setlocal traceback setfenv getinfo setupvalue getlocal getregistry getfenv io lines write close flush open output type read stderr stdin input stdout popen tmpfile math log max acos huge ldexp pi cos tanh pow deg tan cosh sinh random randomseed frexp ceil floor rad abs sqrt modf asin min mod fmod log10 atan2 exp sin atan os exit setlocale date getenv difftime remove time clock tmpname rename execute package preload loadlib loaded loaders cpath config path seeall string sub upper len gfind rep find match char dump gmatch reverse byte format gsub lower table setn insert getn foreachi maxn foreach concat sort remove',
    },
    contains: [
      _mode0,
      _mode3,
      Mode(
        scope: r'function',
        beginKeywords: r'function',
        end: r'\)',
        contains: [
          Mode(
            scope: r'title',
            begin: r'([_a-zA-Z]\w*\.)*([_a-zA-Z]\w*:)?[_a-zA-Z]\w*',
            relevance: 0,
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            endsWithParent: true,
            contains: [
              _mode0,
              _mode3,
            ],
          ),
          _mode0,
          _mode3,
        ],
      ),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [
          _mode7,
        ],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [
          _mode7,
        ],
      ),
      Mode(
        scope: r'string',
        begin: r'\[=*\[',
        end: r'\]=*\]',
        contains: [
          _mode4,
        ],
        relevance: 5,
      ),
    ],
  );
}
