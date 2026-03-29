// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode erlang_repl(Highlight hljs) {
  final Mode _mode0 = Mode();
  _mode0.begin = r'\\[\s\S]';
  _mode0.relevance = 0;
  return Mode(
    name: r'Erlang REPL',
    keywords: {
      r'built_in': r'spawn spawn_link self',
      r'keyword':
          r'after and andalso|10 band begin bnot bor bsl bsr bxor case catch cond div end fun if let not of or orelse|10 query receive rem try when xor',
    },
    contains: [
      Mode(scope: r'meta.prompt', begin: r'^[0-9]+> ', relevance: 10),
      Mode(
        scope: r'comment',
        begin: r'%',
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
        scope: r'number',
        begin:
            r'\b(\d+(_\d+)*#[a-fA-F0-9]+(_[a-fA-F0-9]+)*|\d+(_\d+)*(\.\d+(_\d+)*)?([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [_mode0],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [_mode0],
      ),
      Mode(begin: r'\?(::)?([A-Z]\w*)((::)[A-Z]\w*)*'),
      Mode(begin: r'->'),
      Mode(begin: r'ok'),
      Mode(begin: r'!'),
      Mode(
        begin:
            r"(\b[a-z'][a-zA-Z0-9_']*:[a-z'][a-zA-Z0-9_']*)|(\b[a-z'][a-zA-Z0-9_']*)",
        relevance: 0,
      ),
      Mode(begin: r"[A-Z][a-zA-Z0-9_']*", relevance: 0),
    ],
  );
}
