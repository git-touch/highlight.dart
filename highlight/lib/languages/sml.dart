// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `sml`.
Mode sml(Highlight hljs) {
  final Mode mode0 = Mode();
  mode0.begin = r'\\[\s\S]';
  mode0.relevance = 0;
  return Mode(
    name: r'SML (Standard ML)',
    aliases: [r'ml'],
    keywords: {
      r'$pattern': r'[a-z_]\w*!?',
      r'keyword':
          r'abstype and andalso as case datatype do else end eqtype exception fn fun functor handle if in include infix infixr let local nonfix of op open orelse raise rec sharing sig signature struct structure then type val with withtype where while',
      r'built_in':
          r'array bool char exn int list option order real ref string substring vector unit word',
      r'literal': r'true false NONE SOME LESS EQUAL GREATER nil',
    },
    illegal: r'\/\/|>>',
    contains: [
      Mode(scope: r'literal', begin: r'\[(\|\|)?\]|\(\)', relevance: 0),
      Mode(
        scope: r'comment',
        begin: r'\(\*',
        end: r'\*\)',
        contains: [
          r'self',
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
      Mode(scope: r'symbol', begin: r"'[A-Za-z_](?!')[\w']*"),
      Mode(scope: r'type', begin: r"`[A-Z][\w']*"),
      Mode(scope: r'type', begin: r"\b[A-Z][\w']*", relevance: 0),
      Mode(begin: r"[a-z_]\w*'[\w']*"),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [mode0],
        relevance: 0,
      ),
      Mode(scope: r'string', begin: r'"', end: r'"', contains: [mode0]),
      Mode(
        scope: r'number',
        begin:
            r'\b(0[xX][a-fA-F0-9_]+[Lln]?|0[oO][0-7_]+[Lln]?|0[bB][01_]+[Lln]?|[0-9][0-9_]*([Lln]|(\.[0-9_]*)?([eE][-+]?[0-9_]+)?)?)',
        relevance: 0,
      ),
      Mode(begin: r'[-=]>'),
    ],
  );
}
