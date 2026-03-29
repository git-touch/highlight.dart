// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode ebnf(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'\(\*';
  _mode0.end = r'\*\)';
  _mode0.contains = [_mode1, _mode2];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.begin = r'\\[\s\S]';
  _mode3.relevance = 0;
  return Mode(
    name: r'Extended Backus-Naur Form',
    illegal: r'\S',
    contains: [
      _mode0,
      Mode(scope: r'attribute', begin: r'^[ ]*[a-zA-Z]+([\s_-]+[a-zA-Z]+)*'),
      Mode(
        begin: r'=',
        end: r'[.;]',
        contains: [
          _mode0,
          Mode(scope: r'meta', begin: r'\?.*\?'),
          Mode(
            scope: r'string',
            variants: [
              Mode(
                scope: r'string',
                begin: r"'",
                end: r"'",
                illegal: r'\n',
                contains: [_mode3],
              ),
              Mode(
                scope: r'string',
                begin: r'"',
                end: r'"',
                illegal: r'\n',
                contains: [_mode3],
              ),
              Mode(begin: r'`', end: r'`'),
            ],
          ),
        ],
      ),
    ],
  );
}
