// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `cal`.
Mode cal(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  mode0.scope = r'string';
  mode0.begin = r"'";
  mode0.end = r"'";
  mode0.contains = [mode1];
  mode1.begin = r"''";
  mode2.scope = r'string';
  mode2.begin = r'(#\d+)+';
  mode3.scope = r'number';
  mode3.begin = r'\b\d+(\.\d+)?';
  mode3.relevance = 0;
  return Mode(
    name: r'C/AL',
    caseInsensitive: true,
    keywords: {
      r'keyword': [
        r'div',
        r'mod',
        r'in',
        r'and',
        r'or',
        r'not',
        r'xor',
        r'asserterror',
        r'begin',
        r'case',
        r'do',
        r'downto',
        r'else',
        r'end',
        r'exit',
        r'for',
        r'local',
        r'if',
        r'of',
        r'repeat',
        r'then',
        r'to',
        r'until',
        r'while',
        r'with',
        r'var',
      ],
      r'literal': r'false true',
    },
    illegal: r'\/\*',
    contains: [
      Mode(match: r'[\w]+(?=\=)', scope: r'attribute', relevance: 0),
      mode0,
      mode2,
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?(DT|D|T)', relevance: 0),
      Mode(scope: r'string', begin: r'"', end: r'"'),
      mode3,
      Mode(
        match: [
          r'OBJECT',
          r'\s+',
          r'(?:Table|Form|Report|Dataport|Codeunit|XMLport|MenuSuite|Page|Query)',
          r'\s+',
          r'\d+',
          r'\s+(?=[^\s])',
          r'.*',
          r'$',
        ],
        relevance: 3,
        scope: {1: r'keyword', 3: r'type', 5: r'number', 7: r'title'},
      ),
      Mode(
        match: [r'procedure', r'\s+', r'[a-zA-Z_][\w@]*', r'\s*'],
        scope: {1: r'keyword', 3: r'title.function'},
        contains: [
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            keywords: [
              r'div',
              r'mod',
              r'in',
              r'and',
              r'or',
              r'not',
              r'xor',
              r'asserterror',
              r'begin',
              r'case',
              r'do',
              r'downto',
              r'else',
              r'end',
              r'exit',
              r'for',
              r'local',
              r'if',
              r'of',
              r'repeat',
              r'then',
              r'to',
              r'until',
              r'while',
              r'with',
              r'var',
            ],
            contains: [mode0, mode2, mode3],
          ),
          Mode(
            scope: r'comment',
            begin: r'//',
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
            begin: r'\{',
            end: r'\}',
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
            relevance: 0,
          ),
          Mode(
            scope: r'comment',
            begin: r'\(\*',
            end: r'\*\)',
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
            relevance: 10,
          ),
        ],
      ),
    ],
  );
}
