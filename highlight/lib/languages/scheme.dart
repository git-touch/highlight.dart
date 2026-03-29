// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode scheme(Highlight hljs) {
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
  _mode0.scope = r'number';
  _mode0.variants = [_mode1, _mode2, _mode3, _mode4, _mode5];
  _mode1.begin = r'(-|\+)?\d+([./]\d+)?';
  _mode1.relevance = 0;
  _mode2.begin = r'(-|\+)?\d+([./]\d+)?[+\-](-|\+)?\d+([./]\d+)?i';
  _mode2.relevance = 0;
  _mode3.begin = r'#b[0-1]+(/[0-1]+)?';
  _mode4.begin = r'#o[0-7]+(/[0-7]+)?';
  _mode5.begin = r'#x[0-9a-f]+(/[0-9a-f]+)?';
  _mode6.scope = r'string';
  _mode6.begin = r'"';
  _mode6.end = r'"';
  _mode6.illegal = r'\n';
  _mode6.contains = [_mode7];
  _mode7.begin = r'\\[\s\S]';
  _mode7.relevance = 0;
  _mode8.scope = r'symbol';
  _mode8.begin = "'[^\\(\\)\\[\\]\\{\\}\",'`;#|\\\\\\s]+";
  _mode9.variants = [_mode10, _mode11];
  _mode9.contains = [_mode12];
  _mode10.begin = r"'";
  _mode11.begin = r'`';
  _mode12.begin = r'\(';
  _mode12.end = r'\)';
  _mode12.contains = [r'self', _mode13, _mode6, _mode0, _mode14, _mode8];
  _mode13.scope = r'literal';
  _mode13.begin = '(#t|#f|#\\\\[^\\(\\)\\[\\]\\{\\}",\'`;#|\\\\\\s]+|#\\\\.)';
  _mode14.begin = '[^\\(\\)\\[\\]\\{\\}",\'`;#|\\\\\\s]+';
  _mode14.relevance = 0;
  _mode15.variants = [
    Mode(begin: r'\(', end: r'\)'),
    Mode(begin: r'\[', end: r'\]'),
  ];
  _mode15.contains = [
    Mode(
      begin: r'lambda',
      endsWithParent: true,
      returnBegin: true,
      contains: [
        _mode16,
        Mode(
          endsParent: true,
          variants: [
            Mode(begin: r'\(', end: r'\)'),
            Mode(begin: r'\[', end: r'\]'),
          ],
          contains: [_mode14],
        ),
      ],
    ),
    _mode16,
    Mode(
      endsWithParent: true,
      relevance: 0,
      contains: [
        _mode13,
        _mode0,
        _mode6,
        _mode14,
        _mode8,
        _mode9,
        _mode15,
        _mode17,
        _mode20,
      ],
    ),
  ];
  _mode16.scope = r'name';
  _mode16.relevance = 0;
  _mode16.begin = '[^\\(\\)\\[\\]\\{\\}",\'`;#|\\\\\\s]+';
  _mode16.keywords = {
    r'$pattern': '[^\\(\\)\\[\\]\\{\\}",\'`;#|\\\\\\s]+',
    r'built_in':
        r"case-lambda call/cc class define-class exit-handler field import inherit init-field interface let*-values let-values let/ec mixin opt-lambda override protect provide public rename require require-for-syntax syntax syntax-case syntax-error unit/sig unless when with-syntax and begin call-with-current-continuation call-with-input-file call-with-output-file case cond define define-syntax delay do dynamic-wind else for-each if lambda let let* let-syntax letrec letrec-syntax map or syntax-rules ' * + , ,@ - ... / ; < <= = => > >= ` abs acos angle append apply asin assoc assq assv atan boolean? caar cadr call-with-input-file call-with-output-file call-with-values car cdddar cddddr cdr ceiling char->integer char-alphabetic? char-ci<=? char-ci<? char-ci=? char-ci>=? char-ci>? char-downcase char-lower-case? char-numeric? char-ready? char-upcase char-upper-case? char-whitespace? char<=? char<? char=? char>=? char>? char? close-input-port close-output-port complex? cons cos current-input-port current-output-port denominator display eof-object? eq? equal? eqv? eval even? exact->inexact exact? exp expt floor force gcd imag-part inexact->exact inexact? input-port? integer->char integer? interaction-environment lcm length list list->string list->vector list-ref list-tail list? load log magnitude make-polar make-rectangular make-string make-vector max member memq memv min modulo negative? newline not null-environment null? number->string number? numerator odd? open-input-file open-output-file output-port? pair? peek-char port? positive? procedure? quasiquote quote quotient rational? rationalize read read-char real-part real? remainder reverse round scheme-report-environment set! set-car! set-cdr! sin sqrt string string->list string->number string->symbol string-append string-ci<=? string-ci<? string-ci=? string-ci>=? string-ci>? string-copy string-fill! string-length string-ref string-set! string<=? string<? string=? string>=? string>? string? substring symbol->string symbol? tan transcript-off transcript-on truncate values vector vector->list vector-fill! vector-length vector-ref vector-set! with-input-from-file with-output-to-file write write-char zero?",
  };
  _mode17.scope = r'comment';
  _mode17.begin = r';';
  _mode17.end = r'$';
  _mode17.contains = [_mode18, _mode19];
  _mode17.relevance = 0;
  _mode18.scope = r'doctag';
  _mode18.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode18.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode18.excludeBegin = true;
  _mode18.relevance = 0;
  _mode19.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode20.scope = r'comment';
  _mode20.begin = r'#\|';
  _mode20.end = r'\|#';
  _mode20.contains = [_mode21, _mode22];
  _mode21.scope = r'doctag';
  _mode21.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode21.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode21.excludeBegin = true;
  _mode21.relevance = 0;
  _mode22.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'Scheme',
    aliases: [r'scm'],
    illegal: r'\S',
    contains: [
      Mode(scope: r'meta', begin: r'^#![ ]*\/', end: r'$', relevance: 0),
      _mode0,
      _mode6,
      _mode8,
      _mode9,
      _mode15,
      _mode17,
      _mode20,
    ],
  );
}
