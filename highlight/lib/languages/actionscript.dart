// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `actionscript`.
Mode actionscript(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  mode0.scope = r'string';
  mode0.begin = r"'";
  mode0.end = r"'";
  mode0.illegal = r'\n';
  mode0.contains = [mode1];
  mode1.begin = r'\\[\s\S]';
  mode1.relevance = 0;
  mode2.scope = r'string';
  mode2.begin = r'"';
  mode2.end = r'"';
  mode2.illegal = r'\n';
  mode2.contains = [mode1];
  mode3.scope = r'comment';
  mode3.begin = r'//';
  mode3.end = r'$';
  mode3.contains = [mode4, mode5];
  mode4.scope = r'doctag';
  mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode4.excludeBegin = true;
  mode4.relevance = 0;
  mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode6.scope = r'comment';
  mode6.begin = r'/\*';
  mode6.end = r'\*/';
  mode6.contains = [mode7, mode8];
  mode7.scope = r'doctag';
  mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode7.excludeBegin = true;
  mode7.relevance = 0;
  mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'ActionScript',
    aliases: [r'as'],
    keywords: {
      r'keyword': [
        r'as',
        r'break',
        r'case',
        r'catch',
        r'class',
        r'const',
        r'continue',
        r'default',
        r'delete',
        r'do',
        r'dynamic',
        r'each',
        r'else',
        r'extends',
        r'final',
        r'finally',
        r'for',
        r'function',
        r'get',
        r'if',
        r'implements',
        r'import',
        r'in',
        r'include',
        r'instanceof',
        r'interface',
        r'internal',
        r'is',
        r'namespace',
        r'native',
        r'new',
        r'override',
        r'package',
        r'private',
        r'protected',
        r'public',
        r'return',
        r'set',
        r'static',
        r'super',
        r'switch',
        r'this',
        r'throw',
        r'try',
        r'typeof',
        r'use',
        r'var',
        r'void',
        r'while',
        r'with',
      ],
      r'literal': [r'true', r'false', r'null', r'undefined'],
    },
    contains: [
      mode0,
      mode2,
      mode3,
      mode6,
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(
        match: [
          r'\bpackage',
          r'\s+',
          r'[a-zA-Z_$][a-zA-Z0-9_$]*(\.[a-zA-Z_$][a-zA-Z0-9_$]*)*',
        ],
        scope: {1: r'keyword', 3: r'title.class'},
      ),
      Mode(
        match: [
          r'\b(?:class|interface|extends|implements)',
          r'\s+',
          r'[a-zA-Z_$][a-zA-Z0-9_$]*',
        ],
        scope: {1: r'keyword', 3: r'title.class'},
      ),
      Mode(
        scope: r'meta',
        beginKeywords: r'import include',
        end: r';',
        keywords: {r'keyword': r'import include'},
      ),
      Mode(
        beginKeywords: r'function',
        end: r'[{;]',
        excludeEnd: true,
        illegal: r'\S',
        contains: [
          Mode(scope: r'title.function', begin: r'[a-zA-Z]\w*', relevance: 0),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            contains: [
              mode0,
              mode2,
              mode3,
              mode6,
              Mode(
                scope: r'rest_arg',
                begin: r'[.]{3}',
                end: r'[a-zA-Z_$][a-zA-Z0-9_$]*',
                relevance: 10,
              ),
            ],
          ),
          Mode(begin: r':\s*([*]|[a-zA-Z_$][a-zA-Z0-9_$]*)'),
        ],
      ),
      Mode(begin: r'\.\s*[a-zA-Z_]\w*', relevance: 0),
    ],
    illegal: r'#',
  );
}
