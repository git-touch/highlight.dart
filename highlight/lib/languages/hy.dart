// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode hy(Highlight hljs) {
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
  final Mode _mode19 = Mode();
  _mode0.begin = r'\(';
  _mode0.end = r'\)';
  _mode0.contains = [_mode1, _mode4, _mode5];
  _mode1.scope = r'comment';
  _mode1.begin = r'comment';
  _mode1.end = r'';
  _mode1.contains = [_mode2, _mode3];
  _mode2.scope = r'doctag';
  _mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode2.excludeBegin = true;
  _mode2.relevance = 0;
  _mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode4.scope = r'name';
  _mode4.relevance = 0;
  _mode4.keywords = {
    r'$pattern': r"[a-zA-Z_\-!.?+*=<>&#'][a-zA-Z_\-!.?+*=<>&#'0-9/;:]*",
    r'built_in':
        r'!= % %= & &= * ** **= *= *map + += , --build-class-- --import-- -= . / // //= /= < << <<= <= = > >= >> >>= @ @= ^ ^= abs accumulate all and any ap-compose ap-dotimes ap-each ap-each-while ap-filter ap-first ap-if ap-last ap-map ap-map-when ap-pipe ap-reduce ap-reject apply as-> ascii assert assoc bin break butlast callable calling-module-name car case cdr chain chr coll? combinations compile compress cond cons cons? continue count curry cut cycle dec def default-method defclass defmacro defmacro-alias defmacro/g! defmain defmethod defmulti defn defn-alias defnc defnr defreader defseq del delattr delete-route dict-comp dir disassemble dispatch-reader-macro distinct divmod do doto drop drop-last drop-while empty? end-sequence eval eval-and-compile eval-when-compile even? every? except exec filter first flatten float? fn fnc fnr for for* format fraction genexpr gensym get getattr global globals group-by hasattr hash hex id identity if if* if-not if-python2 import in inc input instance? integer integer-char? integer? interleave interpose is is-coll is-cons is-empty is-even is-every is-float is-instance is-integer is-integer-char is-iterable is-iterator is-keyword is-neg is-none is-not is-numeric is-odd is-pos is-string is-symbol is-zero isinstance islice issubclass iter iterable? iterate iterator? keyword keyword? lambda last len let lif lif-not list* list-comp locals loop macro-error macroexpand macroexpand-1 macroexpand-all map max merge-with method-decorator min multi-decorator multicombinations name neg? next none? nonlocal not not-in not? nth numeric? oct odd? open or ord partition permutations pos? post-route postwalk pow prewalk print product profile/calls profile/cpu put-route quasiquote quote raise range read read-str recursive-replace reduce remove repeat repeatedly repr require rest round route route-with-methods rwm second seq set-comp setattr setv some sorted string string? sum switch symbol? take take-nth take-while tee try unless unquote unquote-splicing vars walk when while with with* with-decorator with-gensyms xi xor yield yield-from zero? zip zip-longest | |= ~',
  };
  _mode4.begin = r"[a-zA-Z_\-!.?+*=<>&#'][a-zA-Z_\-!.?+*=<>&#'0-9/;:]*";
  _mode4.starts = _mode5;
  _mode5.endsWithParent = true;
  _mode5.relevance = 0;
  _mode5.contains = [
    _mode0,
    _mode6,
    _mode8,
    _mode9,
    _mode12,
    _mode15,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
  ];
  _mode6.scope = r'string';
  _mode6.begin = r'"';
  _mode6.end = r'"';
  _mode6.contains = [_mode7];
  _mode7.begin = r'\\[\s\S]';
  _mode7.relevance = 0;
  _mode8.scope = r'comment';
  _mode8.begin = r"\^[a-zA-Z_\-!.?+*=<>&#'][a-zA-Z_\-!.?+*=<>&#'0-9/;:]*";
  _mode9.scope = r'comment';
  _mode9.begin = r'\^\{';
  _mode9.end = r'\}';
  _mode9.contains = [_mode10, _mode11];
  _mode10.scope = r'doctag';
  _mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode10.excludeBegin = true;
  _mode10.relevance = 0;
  _mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode12.scope = r'comment';
  _mode12.begin = r';';
  _mode12.end = r'$';
  _mode12.contains = [_mode13, _mode14];
  _mode12.relevance = 0;
  _mode13.scope = r'doctag';
  _mode13.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode13.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode13.excludeBegin = true;
  _mode13.relevance = 0;
  _mode14.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode15.scope = r'symbol';
  _mode15.begin =
      r"[:]{1,2}[a-zA-Z_\-!.?+*=<>&#'][a-zA-Z_\-!.?+*=<>&#'0-9/;:]*";
  _mode16.begin = r'[\[\{]';
  _mode16.end = r'[\]\}]';
  _mode16.relevance = 0;
  _mode16.contains = [
    _mode0,
    _mode6,
    _mode8,
    _mode9,
    _mode12,
    _mode15,
    r'self',
    _mode17,
    _mode18,
    _mode19,
  ];
  _mode17.scope = r'number';
  _mode17.begin = r'[-+]?\d+(\.\d+)?';
  _mode17.relevance = 0;
  _mode18.scope = r'literal';
  _mode18.begin = r'\b([Tt]rue|[Ff]alse|nil|None)\b';
  _mode19.begin = r"[a-zA-Z_\-!.?+*=<>&#'][a-zA-Z_\-!.?+*=<>&#'0-9/;:]*";
  _mode19.relevance = 0;
  return Mode(
    name: r'Hy',
    aliases: [r'hylang'],
    illegal: r'\S',
    contains: [
      Mode(scope: r'meta', begin: r'^#![ ]*\/', end: r'$', relevance: 0),
      _mode0,
      _mode6,
      _mode8,
      _mode9,
      _mode12,
      _mode15,
      _mode16,
      _mode17,
      _mode18,
    ],
  );
}
