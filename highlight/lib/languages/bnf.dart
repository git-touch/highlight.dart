// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode bnf(Highlight hljs) {
  final Mode _mode0 = Mode();
  _mode0.begin = r'\\[\s\S]';
  _mode0.relevance = 0;
  return Mode(
    name: r'Backus–Naur Form',
    contains: [
      Mode(scope: r'attribute', begin: r'<', end: r'>'),
      Mode(
        begin: r'::=',
        end: r'$',
        contains: [
          Mode(begin: r'<', end: r'>'),
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
            begin: r'/\*',
            end: r'\*/',
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
        ],
      ),
    ],
  );
}
