// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode clojure(Highlight hljs) {
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
  final Mode _mode20 = Mode();
  final Mode _mode21 = Mode();
  final Mode _mode22 = Mode();
  final Mode _mode23 = Mode();
  final Mode _mode24 = Mode();
  final Mode _mode25 = Mode();
  final Mode _mode26 = Mode();
  final Mode _mode27 = Mode();
  _mode0.scope = r'punctuation';
  _mode0.match = r',';
  _mode0.relevance = 0;
  _mode1.begin = r'\(';
  _mode1.end = r'\)';
  _mode1.contains = [_mode2, _mode26, _mode27];
  _mode2.beginKeywords =
      r'def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord';
  _mode2.keywords = {
    r'$pattern': r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*",
    r'keyword':
        r'def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord',
  };
  _mode2.end = r'(\[|#|\d|"|:|\{|\)|\(|$)';
  _mode2.contains = [
    _mode3,
    _mode0,
    _mode1,
    _mode4,
    _mode9,
    _mode11,
    _mode12,
    _mode15,
    _mode16,
    _mode17,
    _mode24,
    _mode25,
  ];
  _mode3.scope = r'title';
  _mode3.begin = r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  _mode3.relevance = 0;
  _mode3.excludeEnd = true;
  _mode3.endsParent = true;
  _mode4.scope = r'character';
  _mode4.variants = [_mode5, _mode6, _mode7, _mode8];
  _mode5.match = r'\\o[0-3]?[0-7]{1,2}';
  _mode6.match = r'\\u[0-9a-fA-F]{4}';
  _mode7.match = r'\\(newline|space|tab|formfeed|backspace|return)';
  _mode8.match = r'\\\S';
  _mode8.relevance = 0;
  _mode9.scope = r'regex';
  _mode9.begin = r'#"';
  _mode9.end = r'"';
  _mode9.contains = [_mode10];
  _mode10.begin = r'\\[\s\S]';
  _mode10.relevance = 0;
  _mode11.scope = r'string';
  _mode11.begin = r'"';
  _mode11.end = r'"';
  _mode11.contains = [_mode10];
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
      r"[:]{1,2}[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  _mode16.begin =
      r"\[|(#::?[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*)?\{";
  _mode16.end = r'[\]\}]';
  _mode16.relevance = 0;
  _mode16.contains = [
    _mode0,
    _mode1,
    _mode4,
    _mode9,
    _mode11,
    _mode12,
    _mode15,
    r'self',
    _mode17,
    _mode24,
    _mode25,
  ];
  _mode17.scope = r'number';
  _mode17.relevance = 0;
  _mode17.variants = [_mode18, _mode19, _mode20, _mode21, _mode22, _mode23];
  _mode18.match = r'[-+]?0[xX][0-9a-fA-F]+N?';
  _mode19.match = r'[-+]?0[0-7]+N?';
  _mode20.match = r'[-+]?[1-9][0-9]?[rR][0-9a-zA-Z]+N?';
  _mode21.match = r'[-+]?[0-9]+\/[0-9]+N?';
  _mode22.match =
      r'[-+]?[0-9]+((\.[0-9]*([eE][+-]?[0-9]+)?M?)|([eE][+-]?[0-9]+M?|M))';
  _mode23.match = r'[-+]?([1-9][0-9]*|0)N?';
  _mode24.scope = r'literal';
  _mode24.begin = r'\b(true|false|nil)\b';
  _mode25.begin = r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  _mode25.relevance = 0;
  _mode26.keywords = {
    r'$pattern': r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*",
    r'built_in':
        r'def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord cond apply if-not if-let if not not= =|0 <|0 >|0 <=|0 >=|0 ==|0 +|0 /|0 *|0 -|0 rem quot neg? pos? delay? symbol? keyword? true? false? integer? empty? coll? list? set? ifn? fn? associative? sequential? sorted? counted? reversible? number? decimal? class? distinct? isa? float? rational? reduced? ratio? odd? even? char? seq? vector? string? map? nil? contains? zero? instance? not-every? not-any? libspec? -> ->> .. . inc compare do dotimes mapcat take remove take-while drop letfn drop-last take-last drop-while while intern condp case reduced cycle split-at split-with repeat replicate iterate range merge zipmap declare line-seq sort comparator sort-by dorun doall nthnext nthrest partition eval doseq await await-for let agent atom send send-off release-pending-sends add-watch mapv filterv remove-watch agent-error restart-agent set-error-handler error-handler set-error-mode! error-mode shutdown-agents quote var fn loop recur throw try monitor-enter monitor-exit macroexpand macroexpand-1 for dosync and or when when-not when-let comp juxt partial sequence memoize constantly complement identity assert peek pop doto proxy first rest cons cast coll last butlast sigs reify second ffirst fnext nfirst nnext meta with-meta ns in-ns create-ns import refer keys select-keys vals key val rseq name namespace promise into transient persistent! conj! assoc! dissoc! pop! disj! use class type num float double short byte boolean bigint biginteger bigdec print-method print-dup throw-if printf format load compile get-in update-in pr pr-on newline flush read slurp read-line subvec with-open memfn time re-find re-groups rand-int rand mod locking assert-valid-fdecl alias resolve ref deref refset swap! reset! set-validator! compare-and-set! alter-meta! reset-meta! commute get-validator alter ref-set ref-history-count ref-min-history ref-max-history ensure sync io! new next conj set! to-array future future-call into-array aset gen-class reduce map filter find empty hash-map hash-set sorted-map sorted-map-by sorted-set sorted-set-by vec vector seq flatten reverse assoc dissoc list disj get union difference intersection extend extend-type extend-protocol int nth delay count concat chunk chunk-buffer chunk-append chunk-first chunk-rest max min dec unchecked-inc-int unchecked-inc unchecked-dec-inc unchecked-dec unchecked-negate unchecked-add-int unchecked-add unchecked-subtract-int unchecked-subtract chunk-next chunk-cons chunked-seq? prn vary-meta lazy-seq spread list* str find-keyword keyword symbol gensym force rationalize',
  };
  _mode26.scope = r'name';
  _mode26.begin = r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  _mode26.relevance = 0;
  _mode26.starts = _mode27;
  _mode27.endsWithParent = true;
  _mode27.relevance = 0;
  _mode27.contains = [
    _mode0,
    _mode1,
    _mode4,
    _mode9,
    _mode11,
    _mode12,
    _mode15,
    _mode16,
    _mode17,
    _mode24,
    _mode25,
  ];
  return Mode(
    name: r'Clojure',
    aliases: [r'clj', r'edn'],
    illegal: r'\S',
    contains: [
      _mode0,
      _mode1,
      _mode4,
      _mode9,
      _mode11,
      _mode12,
      _mode15,
      _mode16,
      _mode17,
      _mode24,
    ],
  );
}
