// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final hy = Mode(
    refs: {
      '~contains~1~contains~1~starts~contains~6~contains~9': Mode(
          begin: "[a-zA-Z_\\-!.?+*=<>&#'][a-zA-Z_\\-!.?+*=<>&#'0-9/;:]*",
          relevance: 0),
      '~contains~1~contains~1~starts~contains~6~contains~8': Mode(
          className: "literal", begin: "\\b([Tt]rue|[Ff]alse|nil|None)\\b"),
      '~contains~1~contains~1~starts~contains~6~contains~7':
          Mode(className: "number", begin: "[-+]?\\d+(\\.\\d+)?", relevance: 0),
      '~contains~1~contains~1~starts~contains~6':
          Mode(begin: "[\\[\\{]", end: "[\\]\\}]", contains: [
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~1~contains~1~starts~contains~1'),
        Mode(ref: '~contains~1~contains~1~starts~contains~2'),
        Mode(ref: '~contains~1~contains~1~starts~contains~3'),
        Mode(ref: '~contains~1~contains~1~starts~contains~4'),
        Mode(ref: '~contains~1~contains~1~starts~contains~5'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~7'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~8'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~9')
      ]),
      '~contains~1~contains~1~starts~contains~5': Mode(
          className: "symbol",
          begin:
              "[:]{1,2}[a-zA-Z_\\-!.?+*=<>&#'][a-zA-Z_\\-!.?+*=<>&#'0-9/;:]*"),
      '~contains~1~contains~1~starts~contains~4': Mode(
          className: "comment",
          begin: ";",
          end: "\$",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 0),
      '~contains~1~contains~1~starts~contains~3':
          Mode(className: "comment", begin: "\\^\\{", end: "\\}", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      '~contains~1~contains~1~starts~contains~2': Mode(
          className: "comment",
          begin: "\\^[a-zA-Z_\\-!.?+*=<>&#'][a-zA-Z_\\-!.?+*=<>&#'0-9/;:]*"),
      '~contains~1~contains~1~starts~contains~1': Mode(
          className: "string",
          begin: "\"",
          end: "\"",
          illegal: null,
          contains: [BACKSLASH_ESCAPE]),
      '~contains~1~contains~1~starts':
          Mode(endsWithParent: true, relevance: 0, contains: [
        Mode(ref: '~contains~1'),
        Mode(ref: '~contains~1~contains~1~starts~contains~1'),
        Mode(ref: '~contains~1~contains~1~starts~contains~2'),
        Mode(ref: '~contains~1~contains~1~starts~contains~3'),
        Mode(ref: '~contains~1~contains~1~starts~contains~4'),
        Mode(ref: '~contains~1~contains~1~starts~contains~5'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~7'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~8'),
        Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~9')
      ]),
      '~contains~1': Mode(begin: "\\(", end: "\\)", contains: [
        Mode(className: "comment", begin: "comment", end: "", contains: [
          PHRASAL_WORDS_MODE,
          Mode(
              className: "doctag",
              begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
              relevance: 0)
        ]),
        Mode(
            keywords: {
              "builtin-name":
                  "!= % %= & &= * ** **= *= *map + += , --build-class-- --import-- -= . / // //= /= < << <<= <= = > >= >> >>= @ @= ^ ^= abs accumulate all and any ap-compose ap-dotimes ap-each ap-each-while ap-filter ap-first ap-if ap-last ap-map ap-map-when ap-pipe ap-reduce ap-reject apply as-> ascii assert assoc bin break butlast callable calling-module-name car case cdr chain chr coll? combinations compile compress cond cons cons? continue count curry cut cycle dec def default-method defclass defmacro defmacro-alias defmacro/g! defmain defmethod defmulti defn defn-alias defnc defnr defreader defseq del delattr delete-route dict-comp dir disassemble dispatch-reader-macro distinct divmod do doto drop drop-last drop-while empty? end-sequence eval eval-and-compile eval-when-compile even? every? except exec filter first flatten float? fn fnc fnr for for* format fraction genexpr gensym get getattr global globals group-by hasattr hash hex id identity if if* if-not if-python2 import in inc input instance? integer integer-char? integer? interleave interpose is is-coll is-cons is-empty is-even is-every is-float is-instance is-integer is-integer-char is-iterable is-iterator is-keyword is-neg is-none is-not is-numeric is-odd is-pos is-string is-symbol is-zero isinstance islice issubclass iter iterable? iterate iterator? keyword keyword? lambda last len let lif lif-not list* list-comp locals loop macro-error macroexpand macroexpand-1 macroexpand-all map max merge-with method-decorator min multi-decorator multicombinations name neg? next none? nonlocal not not-in not? nth numeric? oct odd? open or ord partition permutations pos? post-route postwalk pow prewalk print product profile/calls profile/cpu put-route quasiquote quote raise range read read-str recursive-replace reduce remove repeat repeatedly repr require rest round route route-with-methods rwm second seq set-comp setattr setv some sorted string string? sum switch symbol? take take-nth take-while tee try unless unquote unquote-splicing vars walk when while with with* with-decorator with-gensyms xi xor yield yield-from zero? zip zip-longest | |= \\x7e"
            },
            lexemes: "[a-zA-Z_\\-!.?+*=<>&#'][a-zA-Z_\\-!.?+*=<>&#'0-9/;:]*",
            className: "name",
            begin: "[a-zA-Z_\\-!.?+*=<>&#'][a-zA-Z_\\-!.?+*=<>&#'0-9/;:]*",
            starts: Mode(ref: '~contains~1~contains~1~starts')),
        Mode(ref: '~contains~1~contains~1~starts')
      ]),
    },
    aliases: ["hylang"],
    illegal: "\\S",
    contains: [
      Mode(className: "meta", begin: "^#!", end: "\$"),
      Mode(ref: '~contains~1'),
      Mode(ref: '~contains~1~contains~1~starts~contains~1'),
      Mode(ref: '~contains~1~contains~1~starts~contains~2'),
      Mode(ref: '~contains~1~contains~1~starts~contains~3'),
      Mode(ref: '~contains~1~contains~1~starts~contains~4'),
      Mode(ref: '~contains~1~contains~1~starts~contains~5'),
      Mode(ref: '~contains~1~contains~1~starts~contains~6'),
      Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~7'),
      Mode(ref: '~contains~1~contains~1~starts~contains~6~contains~8')
    ]);
