// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `clojure`.
Mode clojure(Highlight hljs) {
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
  final Mode mode19 = Mode();
  final Mode mode20 = Mode();
  final Mode mode21 = Mode();
  final Mode mode22 = Mode();
  final Mode mode23 = Mode();
  final Mode mode24 = Mode();
  final Mode mode25 = Mode();
  final Mode mode26 = Mode();
  final Mode mode27 = Mode();
  mode0.scope = r'punctuation';
  mode0.match = r',';
  mode0.relevance = 0;
  mode1.begin = r'\(';
  mode1.end = r'\)';
  mode1.contains = [mode2, mode26, mode27];
  mode2.beginKeywords =
      r'def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord';
  mode2.keywords = {
    r'$pattern': r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*",
    r'keyword':
        r'def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord',
  };
  mode2.end = r'(\[|#|\d|"|:|\{|\)|\(|$)';
  mode2.contains = [
    mode3,
    mode0,
    mode1,
    mode4,
    mode9,
    mode11,
    mode12,
    mode15,
    mode16,
    mode17,
    mode24,
    mode25,
  ];
  mode3.scope = r'title';
  mode3.begin = r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  mode3.relevance = 0;
  mode3.excludeEnd = true;
  mode3.endsParent = true;
  mode4.scope = r'character';
  mode4.variants = [mode5, mode6, mode7, mode8];
  mode5.match = r'\\o[0-3]?[0-7]{1,2}';
  mode6.match = r'\\u[0-9a-fA-F]{4}';
  mode7.match = r'\\(newline|space|tab|formfeed|backspace|return)';
  mode8.match = r'\\\S';
  mode8.relevance = 0;
  mode9.scope = r'regex';
  mode9.begin = r'#"';
  mode9.end = r'"';
  mode9.contains = [mode10];
  mode10.begin = r'\\[\s\S]';
  mode10.relevance = 0;
  mode11.scope = r'string';
  mode11.begin = r'"';
  mode11.end = r'"';
  mode11.contains = [mode10];
  mode12.scope = r'comment';
  mode12.begin = r';';
  mode12.end = r'$';
  mode12.contains = [mode13, mode14];
  mode12.relevance = 0;
  mode13.scope = r'doctag';
  mode13.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode13.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode13.excludeBegin = true;
  mode13.relevance = 0;
  mode14.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode15.scope = r'symbol';
  mode15.begin =
      r"[:]{1,2}[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  mode16.begin =
      r"\[|(#::?[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*)?\{";
  mode16.end = r'[\]\}]';
  mode16.relevance = 0;
  mode16.contains = [
    mode0,
    mode1,
    mode4,
    mode9,
    mode11,
    mode12,
    mode15,
    r'self',
    mode17,
    mode24,
    mode25,
  ];
  mode17.scope = r'number';
  mode17.relevance = 0;
  mode17.variants = [mode18, mode19, mode20, mode21, mode22, mode23];
  mode18.match = r'[-+]?0[xX][0-9a-fA-F]+N?';
  mode19.match = r'[-+]?0[0-7]+N?';
  mode20.match = r'[-+]?[1-9][0-9]?[rR][0-9a-zA-Z]+N?';
  mode21.match = r'[-+]?[0-9]+\/[0-9]+N?';
  mode22.match =
      r'[-+]?[0-9]+((\.[0-9]*([eE][+-]?[0-9]+)?M?)|([eE][+-]?[0-9]+M?|M))';
  mode23.match = r'[-+]?([1-9][0-9]*|0)N?';
  mode24.scope = r'literal';
  mode24.begin = r'\b(true|false|nil)\b';
  mode25.begin = r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  mode25.relevance = 0;
  mode26.keywords = {
    r'$pattern': r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*",
    r'built_in':
        r'def defonce defprotocol defstruct defmulti defmethod defn- defn defmacro deftype defrecord cond apply if-not if-let if not not= =|0 <|0 >|0 <=|0 >=|0 ==|0 +|0 /|0 *|0 -|0 rem quot neg? pos? delay? symbol? keyword? true? false? integer? empty? coll? list? set? ifn? fn? associative? sequential? sorted? counted? reversible? number? decimal? class? distinct? isa? float? rational? reduced? ratio? odd? even? char? seq? vector? string? map? nil? contains? zero? instance? not-every? not-any? libspec? -> ->> .. . inc compare do dotimes mapcat take remove take-while drop letfn drop-last take-last drop-while while intern condp case reduced cycle split-at split-with repeat replicate iterate range merge zipmap declare line-seq sort comparator sort-by dorun doall nthnext nthrest partition eval doseq await await-for let agent atom send send-off release-pending-sends add-watch mapv filterv remove-watch agent-error restart-agent set-error-handler error-handler set-error-mode! error-mode shutdown-agents quote var fn loop recur throw try monitor-enter monitor-exit macroexpand macroexpand-1 for dosync and or when when-not when-let comp juxt partial sequence memoize constantly complement identity assert peek pop doto proxy first rest cons cast coll last butlast sigs reify second ffirst fnext nfirst nnext meta with-meta ns in-ns create-ns import refer keys select-keys vals key val rseq name namespace promise into transient persistent! conj! assoc! dissoc! pop! disj! use class type num float double short byte boolean bigint biginteger bigdec print-method print-dup throw-if printf format load compile get-in update-in pr pr-on newline flush read slurp read-line subvec with-open memfn time re-find re-groups rand-int rand mod locking assert-valid-fdecl alias resolve ref deref refset swap! reset! set-validator! compare-and-set! alter-meta! reset-meta! commute get-validator alter ref-set ref-history-count ref-min-history ref-max-history ensure sync io! new next conj set! to-array future future-call into-array aset gen-class reduce map filter find empty hash-map hash-set sorted-map sorted-map-by sorted-set sorted-set-by vec vector seq flatten reverse assoc dissoc list disj get union difference intersection extend extend-type extend-protocol int nth delay count concat chunk chunk-buffer chunk-append chunk-first chunk-rest max min dec unchecked-inc-int unchecked-inc unchecked-dec-inc unchecked-dec unchecked-negate unchecked-add-int unchecked-add unchecked-subtract-int unchecked-subtract chunk-next chunk-cons chunked-seq? prn vary-meta lazy-seq spread list* str find-keyword keyword symbol gensym force rationalize',
  };
  mode26.scope = r'name';
  mode26.begin = r"[#]?[a-zA-Z_\-!.?+*=<>&'][a-zA-Z_\-!.?+*=<>&'0-9/;:$#]*";
  mode26.relevance = 0;
  mode26.starts = mode27;
  mode27.endsWithParent = true;
  mode27.relevance = 0;
  mode27.contains = [
    mode0,
    mode1,
    mode4,
    mode9,
    mode11,
    mode12,
    mode15,
    mode16,
    mode17,
    mode24,
    mode25,
  ];
  return Mode(
    name: r'Clojure',
    aliases: [r'clj', r'edn'],
    illegal: r'\S',
    contains: [
      mode0,
      mode1,
      mode4,
      mode9,
      mode11,
      mode12,
      mode15,
      mode16,
      mode17,
      mode24,
    ],
  );
}
