// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `prolog`.
Mode prolog(Highlight hljs) {
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
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  final Mode mode18 = Mode();
  mode0.begin = r'[a-z][A-Za-z0-9_]*';
  mode0.relevance = 0;
  mode1.scope = r'symbol';
  mode1.variants = [mode2, mode3];
  mode1.relevance = 0;
  mode2.begin = r'[A-Z][a-zA-Z0-9_]*';
  mode3.begin = r'_[A-Za-z0-9_]*';
  mode4.begin = r'\(';
  mode4.end = r'\)';
  mode4.relevance = 0;
  mode4.contains = [
    mode0,
    mode1,
    r'self',
    mode5,
    mode6,
    mode7,
    mode9,
    mode12,
    mode14,
    mode15,
    mode16,
    mode17,
    mode18,
  ];
  mode5.begin = r':-';
  mode6.begin = r'\[';
  mode6.end = r'\]';
  mode6.contains = [
    mode0,
    mode1,
    mode4,
    mode5,
    r'self',
    mode7,
    mode9,
    mode12,
    mode14,
    mode15,
    mode16,
    mode17,
    mode18,
  ];
  mode7.scope = r'comment';
  mode7.begin = r'%';
  mode7.end = r'$';
  mode7.contains = [mode8];
  mode8.begin =
      r"\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\b";
  mode9.scope = r'comment';
  mode9.begin = r'/\*';
  mode9.end = r'\*/';
  mode9.contains = [mode10, mode11];
  mode10.scope = r'doctag';
  mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode10.excludeBegin = true;
  mode10.relevance = 0;
  mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode12.scope = r'string';
  mode12.begin = r'"';
  mode12.end = r'"';
  mode12.illegal = r'\n';
  mode12.contains = [mode13];
  mode13.begin = r'\\[\s\S]';
  mode13.relevance = 0;
  mode14.scope = r'string';
  mode14.begin = r"'";
  mode14.end = r"'";
  mode14.illegal = r'\n';
  mode14.contains = [mode13];
  mode15.scope = r'string';
  mode15.begin = r'`';
  mode15.end = r'`';
  mode15.contains = [mode13];
  mode16.scope = r'string';
  mode16.begin = r"0'(\\'|.)";
  mode17.scope = r'string';
  mode17.begin = r"0'\\s";
  mode18.scope = r'number';
  mode18.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode18.relevance = 0;
  return Mode(
    name: r'Prolog',
    contains: [
      mode0,
      mode1,
      mode4,
      mode5,
      mode6,
      mode7,
      mode9,
      mode12,
      mode14,
      mode15,
      mode16,
      mode17,
      mode18,
      Mode(begin: r'\.$'),
    ],
  );
}
