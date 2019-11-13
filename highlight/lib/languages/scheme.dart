// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final scheme = Mode(
    refs: {
      '~contains~5~contains~2~contains~8':
          Mode(className: "comment", begin: "#\\|", end: "\\|#", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      '~contains~5~contains~2~contains~7': Mode(
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
      '~contains~5~contains~0~contains~0': Mode(
          className: "name",
          begin: "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+",
          lexemes: "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+",
          keywords: {
            "builtin-name":
                "case-lambda call/cc class define-class exit-handler field import inherit init-field interface let*-values let-values let/ec mixin opt-lambda override protect provide public rename require require-for-syntax syntax syntax-case syntax-error unit/sig unless when with-syntax and begin call-with-current-continuation call-with-input-file call-with-output-file case cond define define-syntax delay do dynamic-wind else for-each if lambda let let* let-syntax letrec letrec-syntax map or syntax-rules ' * + , ,@ - ... / ; < <= = => > >= ` abs acos angle append apply asin assoc assq assv atan boolean? caar cadr call-with-input-file call-with-output-file call-with-values car cdddar cddddr cdr ceiling char->integer char-alphabetic? char-ci<=? char-ci<? char-ci=? char-ci>=? char-ci>? char-downcase char-lower-case? char-numeric? char-ready? char-upcase char-upper-case? char-whitespace? char<=? char<? char=? char>=? char>? char? close-input-port close-output-port complex? cons cos current-input-port current-output-port denominator display eof-object? eq? equal? eqv? eval even? exact->inexact exact? exp expt floor force gcd imag-part inexact->exact inexact? input-port? integer->char integer? interaction-environment lcm length list list->string list->vector list-ref list-tail list? load log magnitude make-polar make-rectangular make-string make-vector max member memq memv min modulo negative? newline not null-environment null? number->string number? numerator odd? open-input-file open-output-file output-port? pair? peek-char port? positive? procedure? quasiquote quote quotient rational? rationalize read read-char real-part real? remainder reverse round scheme-report-environment set! set-car! set-cdr! sin sqrt string string->list string->number string->symbol string-append string-ci<=? string-ci<? string-ci=? string-ci>=? string-ci>? string-copy string-fill! string-length string-ref string-set! string<=? string<? string=? string>=? string>? string? substring symbol->string symbol? tan transcript-off transcript-on truncate values vector vector->list vector-fill! vector-length vector-ref vector-set! with-input-from-file with-output-to-file write write-char zero?"
          }),
      '~contains~5': Mode(variants: [
        Mode(begin: "\\(", end: "\\)"),
        Mode(begin: "\\[", end: "\\]")
      ], contains: [
        Mode(
            begin: "lambda",
            endsWithParent: true,
            returnBegin: true,
            contains: [
              Mode(ref: '~contains~5~contains~0~contains~0'),
              Mode(
                  begin: "\\(",
                  end: "\\)",
                  endsParent: true,
                  contains: [Mode(ref: '~contains~4~contains~0~contains~4')])
            ]),
        Mode(ref: '~contains~5~contains~0~contains~0'),
        Mode(endsWithParent: true, relevance: 0, contains: [
          Mode(ref: '~contains~4~contains~0~contains~1'),
          Mode(ref: '~contains~1'),
          QUOTE_STRING_MODE,
          Mode(ref: '~contains~4~contains~0~contains~4'),
          Mode(ref: '~contains~3'),
          Mode(ref: '~contains~4'),
          Mode(ref: '~contains~5'),
          Mode(ref: '~contains~5~contains~2~contains~7'),
          Mode(ref: '~contains~5~contains~2~contains~8')
        ])
      ]),
      '~contains~4~contains~0~contains~4':
          Mode(begin: "[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+", relevance: 0),
      '~contains~4~contains~0~contains~1': Mode(
          className: "literal",
          begin: "(#t|#f|#\\\\[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+|#\\\\.)"),
      '~contains~4': Mode(variants: [
        Mode(begin: "'"),
        Mode(begin: "`")
      ], contains: [
        Mode(begin: "\\(", end: "\\)", contains: [
          Mode(self: true),
          Mode(ref: '~contains~4~contains~0~contains~1'),
          QUOTE_STRING_MODE,
          Mode(ref: '~contains~1'),
          Mode(ref: '~contains~4~contains~0~contains~4'),
          Mode(ref: '~contains~3')
        ])
      ]),
      '~contains~3': Mode(
          className: "symbol", begin: "'[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+"),
      '~contains~1': Mode(className: "number", variants: [
        Mode(begin: "(\\-|\\+)?\\d+([./]\\d+)?", relevance: 0),
        Mode(
            begin: "(\\-|\\+)?\\d+([./]\\d+)?[+\\-](\\-|\\+)?\\d+([./]\\d+)?i",
            relevance: 0),
        Mode(begin: "#b[0-1]+(/[0-1]+)?"),
        Mode(begin: "#o[0-7]+(/[0-7]+)?"),
        Mode(begin: "#x[0-9a-f]+(/[0-9a-f]+)?")
      ]),
    },
    illegal: "\\S",
    contains: [
      Mode(className: "meta", begin: "^#!", end: "\$"),
      Mode(ref: '~contains~1'),
      QUOTE_STRING_MODE,
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~4'),
      Mode(ref: '~contains~5'),
      Mode(ref: '~contains~5~contains~2~contains~7'),
      Mode(ref: '~contains~5~contains~2~contains~8')
    ]);
