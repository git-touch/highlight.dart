// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode prolog(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  _mode0.begin = r'[a-z][A-Za-z0-9_]*';
  _mode0.relevance = 0;
  _mode1.scope = r'symbol';
  _mode1.variants = [
    _mode2,
    _mode3,
  ];
  _mode1.relevance = 0;
  _mode2.begin = r'[A-Z][a-zA-Z0-9_]*';
  _mode3.begin = r'_[A-Za-z0-9_]*';
  _mode4.begin = r'\(';
  _mode4.end = r'\)';
  _mode4.relevance = 0;
  _mode4.contains = [
    _mode0,
    _mode1,
    r'self',
    _mode5,
    _mode6,
    _mode7,
    _mode9,
    _mode12,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
  ];
  _mode5.begin = r':-';
  _mode6.begin = r'\[';
  _mode6.end = r'\]';
  _mode6.contains = [
    _mode0,
    _mode1,
    _mode4,
    _mode5,
    r'self',
    _mode7,
    _mode9,
    _mode12,
    _mode14,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
  ];
  _mode7.scope = r'comment';
  _mode7.begin = r'%';
  _mode7.end = r'$';
  _mode7.contains = [
    _mode8,
  ];
  _mode8.begin =
      r"\b(a|an|the|are|I'm|isn't|don't|doesn't|won't|but|just|should|pretty|simply|enough|gonna|going|wtf|so|such|will|you|your|they|like|more)\b";
  _mode9.scope = r'comment';
  _mode9.begin = r'/\*';
  _mode9.end = r'\*/';
  _mode9.contains = [
    _mode10,
    _mode11,
  ];
  _mode10.scope = r'doctag';
  _mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode10.excludeBegin = true;
  _mode10.relevance = 0;
  _mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode12.scope = r'string';
  _mode12.begin = r'"';
  _mode12.end = r'"';
  _mode12.illegal = r'\n';
  _mode12.contains = [
    _mode13,
  ];
  _mode13.begin = r'\\[\s\S]';
  _mode13.relevance = 0;
  _mode14.scope = r'string';
  _mode14.begin = r"'";
  _mode14.end = r"'";
  _mode14.illegal = r'\n';
  _mode14.contains = [
    _mode13,
  ];
  _mode15.scope = r'string';
  _mode15.begin = r'`';
  _mode15.end = r'`';
  _mode15.contains = [
    _mode13,
  ];
  _mode16.scope = r'string';
  _mode16.begin = r"0'(\\'|.)";
  _mode17.scope = r'string';
  _mode17.begin = r"0'\\s";
  _mode18.scope = r'number';
  _mode18.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode18.relevance = 0;
  return Mode(
    name: r'Prolog',
    contains: [
      _mode0,
      _mode1,
      _mode4,
      _mode5,
      _mode6,
      _mode7,
      _mode9,
      _mode12,
      _mode14,
      _mode15,
      _mode16,
      _mode17,
      _mode18,
      Mode(
        begin: r'\.$',
      ),
    ],
  );
}
