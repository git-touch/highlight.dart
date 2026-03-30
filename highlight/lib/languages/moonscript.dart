// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `moonscript`.
Mode moonscript(Highlight hljs) {
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
  mode0.scope = r'number';
  mode0.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode0.relevance = 0;
  mode0.starts = mode1;
  mode1.end = r'(\s*/)?';
  mode1.relevance = 0;
  mode2.scope = r'string';
  mode2.variants = [mode3, mode5];
  mode3.begin = r"'";
  mode3.end = r"'";
  mode3.contains = [mode4];
  mode4.begin = r'\\[\s\S]';
  mode4.relevance = 0;
  mode5.begin = r'"';
  mode5.end = r'"';
  mode5.contains = [mode4, mode6];
  mode6.scope = r'subst';
  mode6.begin = r'#\{';
  mode6.end = r'\}';
  mode6.keywords = {
    r'keyword':
        r'if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using',
    r'literal': r'true false nil',
    r'built_in':
        r'_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table',
  };
  mode6.contains = [mode0, mode2, mode7, mode8, mode9];
  mode7.scope = r'built_in';
  mode7.begin = r'@__[a-zA-Z]\w*';
  mode8.begin = r'@[a-zA-Z]\w*';
  mode9.begin = r'[a-zA-Z]\w*\\[a-zA-Z]\w*';
  mode10.scope = r'title';
  mode10.begin = r'[A-Za-z$_][0-9A-Za-z$_]*';
  mode10.relevance = 0;
  mode11.scope = r'params';
  mode11.begin = r'\([^\(]';
  mode11.returnBegin = true;
  mode11.contains = [mode12];
  mode12.begin = r'\(';
  mode12.end = r'\)';
  mode12.keywords = {
    r'keyword':
        r'if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using',
    r'literal': r'true false nil',
    r'built_in':
        r'_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table',
  };
  mode12.contains = [r'self', mode0, mode2, mode7, mode8, mode9];
  return Mode(
    name: r'MoonScript',
    aliases: [r'moon'],
    keywords: {
      r'keyword':
          r'if then not for in while do return else elseif break continue switch and or unless when class extends super local import export from using',
      r'literal': r'true false nil',
      r'built_in':
          r'_G _VERSION assert collectgarbage dofile error getfenv getmetatable ipairs load loadfile loadstring module next pairs pcall print rawequal rawget rawset require select setfenv setmetatable tonumber tostring type unpack xpcall coroutine debug io math os package string table',
    },
    illegal: r'\/\*',
    contains: [
      mode0,
      mode2,
      mode7,
      mode8,
      mode9,
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
        contains: [mode10, mode11],
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
            contains: [mode11],
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
            contains: [mode10],
          ),
          mode10,
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
