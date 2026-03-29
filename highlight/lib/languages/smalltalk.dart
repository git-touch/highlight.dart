// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode smalltalk(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  _mode0.scope = r'string';
  _mode0.begin = r"'";
  _mode0.end = r"'";
  _mode0.illegal = r'\n';
  _mode0.contains = [_mode1];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'number';
  _mode2.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode2.relevance = 0;
  _mode3.scope = r'symbol';
  _mode3.begin = r'#[a-zA-Z_]\w*';
  _mode4.scope = r'string';
  _mode4.begin = r'\$.{1}';
  return Mode(
    name: r'Smalltalk',
    aliases: [r'st'],
    keywords: [r'self', r'super', r'nil', r'true', r'false', r'thisContext'],
    contains: [
      Mode(
        scope: r'comment',
        begin: r'"',
        end: r'"',
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
      _mode0,
      Mode(scope: r'type', begin: r'\b[A-Z][A-Za-z0-9_]*', relevance: 0),
      Mode(begin: r'[a-z][a-zA-Z0-9_]*:', relevance: 0),
      _mode2,
      _mode3,
      _mode4,
      Mode(
        begin: r'\|[ ]*[a-z][a-zA-Z0-9_]*([ ]+[a-z][a-zA-Z0-9_]*)*[ ]*\|',
        returnBegin: true,
        end: r'\|',
        illegal: r'\S',
        contains: [Mode(begin: r'(\|[ ]*)?[a-z][a-zA-Z0-9_]*')],
      ),
      Mode(
        begin: r'#\(',
        end: r'\)',
        contains: [_mode0, _mode4, _mode2, _mode3],
      ),
    ],
  );
}
