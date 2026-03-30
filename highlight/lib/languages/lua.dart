// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `lua`.
Mode lua(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  mode0.scope = r'comment';
  mode0.begin = r'--(?!\[=*\[)';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'comment';
  mode3.begin = r'--\[=*\[';
  mode3.end = r'\]=*\]';
  mode3.contains = [mode4, mode5, mode6];
  mode3.relevance = 10;
  mode4.begin = r'\[=*\[';
  mode4.end = r'\]=*\]';
  mode4.contains = [r'self'];
  mode5.scope = r'doctag';
  mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode5.excludeBegin = true;
  mode5.relevance = 0;
  mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode7.begin = r'\\[\s\S]';
  mode7.relevance = 0;
  return Mode(
    name: r'Lua',
    aliases: [r'pluto'],
    keywords: {
      r'$pattern': r'[a-zA-Z_]\w*',
      r'literal': r'true false nil',
      r'keyword':
          r'and break do else elseif end for goto if in local not or repeat return then until while',
      r'built_in':
          r'_G _ENV _VERSION __index __newindex __mode __call __metatable __tostring __len __gc __add __sub __mul __div __mod __pow __concat __unm __eq __lt __le assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall arg self coroutine resume yield status wrap create running debug getupvalue debug sethook getmetatable gethook setmetatable setlocal traceback setfenv getinfo setupvalue getlocal getregistry getfenv io lines write close flush open output type read stderr stdin input stdout popen tmpfile math log max acos huge ldexp pi cos tanh pow deg tan cosh sinh random randomseed frexp ceil floor rad abs sqrt modf asin min mod fmod log10 atan2 exp sin atan os exit setlocale date getenv difftime remove time clock tmpname rename execute package preload loadlib loaded loaders cpath config path seeall string sub upper len gfind rep find match char dump gmatch reverse byte format gsub lower table setn insert getn foreachi maxn foreach concat sort remove',
    },
    contains: [
      mode0,
      mode3,
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
            contains: [mode0, mode3],
          ),
          mode0,
          mode3,
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
        contains: [mode7],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [mode7],
      ),
      Mode(
        scope: r'string',
        begin: r'\[=*\[',
        end: r'\]=*\]',
        contains: [mode4],
        relevance: 5,
      ),
    ],
  );
}
