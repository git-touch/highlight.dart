// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `smalltalk`.
Mode smalltalk(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  mode0.scope = r'string';
  mode0.begin = r"'";
  mode0.end = r"'";
  mode0.illegal = r'\n';
  mode0.contains = [mode1];
  mode1.begin = r'\\[\s\S]';
  mode1.relevance = 0;
  mode2.scope = r'number';
  mode2.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode2.relevance = 0;
  mode3.scope = r'symbol';
  mode3.begin = r'#[a-zA-Z_]\w*';
  mode4.scope = r'string';
  mode4.begin = r'\$.{1}';
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
      mode0,
      Mode(scope: r'type', begin: r'\b[A-Z][A-Za-z0-9_]*', relevance: 0),
      Mode(begin: r'[a-z][a-zA-Z0-9_]*:', relevance: 0),
      mode2,
      mode3,
      mode4,
      Mode(
        begin: r'\|[ ]*[a-z][a-zA-Z0-9_]*([ ]+[a-z][a-zA-Z0-9_]*)*[ ]*\|',
        returnBegin: true,
        end: r'\|',
        illegal: r'\S',
        contains: [Mode(begin: r'(\|[ ]*)?[a-z][a-zA-Z0-9_]*')],
      ),
      Mode(begin: r'#\(', end: r'\)', contains: [mode0, mode4, mode2, mode3]),
    ],
  );
}
