// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `ocaml`.
Mode ocaml(Highlight hljs) {
  final Mode mode0 = Mode();
  mode0.begin = r'\\[\s\S]';
  mode0.relevance = 0;
  return Mode(
    name: r'OCaml',
    aliases: [r'ml'],
    keywords: {
      r'$pattern': r'[a-z_]\w*!?',
      r'keyword':
          r'and as assert asr begin class constraint do done downto else end exception external for fun function functor if in include inherit! inherit initializer land lazy let lor lsl lsr lxor match method!|10 method mod module mutable new object of open! open or private rec sig struct then to try type val! val virtual when while with parser value',
      r'built_in':
          r'array bool bytes char exn|5 float int int32 int64 list lazy_t|5 nativeint|5 string unit in_channel out_channel ref',
      r'literal': r'true false',
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
      Mode(begin: r"[a-z_]\w*'[\w']*", relevance: 0),
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
      Mode(begin: r'->'),
    ],
  );
}
