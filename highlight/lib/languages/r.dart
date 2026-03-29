// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode r(Highlight hljs) {
  return Mode(
    name: r'R',
    keywords: {
      r'$pattern': r'(?:(?:[a-zA-Z]|\.[._a-zA-Z])[._a-zA-Z0-9]*)|\.(?!\d)',
      r'keyword': r'function if in break next repeat else for while',
      r'literal':
          r'NULL NA TRUE FALSE Inf NaN NA_integer_|10 NA_real_|10 NA_character_|10 NA_complex_|10',
      r'built_in':
          r'LETTERS letters month.abb month.name pi T F abs acos acosh all any anyNA Arg as.call as.character as.complex as.double as.environment as.integer as.logical as.null.default as.numeric as.raw asin asinh atan atanh attr attributes baseenv browser c call ceiling class Conj cos cosh cospi cummax cummin cumprod cumsum digamma dim dimnames emptyenv exp expression floor forceAndCall gamma gc.time globalenv Im interactive invisible is.array is.atomic is.call is.character is.complex is.double is.environment is.expression is.finite is.function is.infinite is.integer is.language is.list is.logical is.matrix is.na is.name is.nan is.null is.numeric is.object is.pairlist is.raw is.recursive is.single is.symbol lazyLoadDBfetch length lgamma list log max min missing Mod names nargs nzchar oldClass on.exit pos.to.env proc.time prod quote range Re rep retracemem return round seq_along seq_len seq.int sign signif sin sinh sinpi sqrt standardGeneric substitute sum switch tan tanh tanpi tracemem trigamma trunc unclass untracemem UseMethod xtfrm',
    },
    contains: [
      Mode(
        scope: r'comment',
        begin: r"#'",
        end: r'$',
        contains: [
          Mode(
            scope: r'doctag',
            match: r'@examples',
            starts: Mode(
              end: r"(?=(?:\n^#'\s*(?=@[a-zA-Z]+)|\n^(?!#')))",
              endsParent: true,
            ),
          ),
          Mode(
            scope: r'doctag',
            begin: r'@param',
            end: r'$',
            contains: [
              Mode(
                scope: r'variable',
                variants: [
                  Mode(
                    match:
                        r'(?:(?:[a-zA-Z]|\.[._a-zA-Z])[._a-zA-Z0-9]*)|\.(?!\d)',
                  ),
                  Mode(match: r'`(?:\\.|[^`\\])+`'),
                ],
                endsParent: true,
              ),
            ],
          ),
          Mode(scope: r'doctag', match: r'@[a-zA-Z]+'),
          Mode(scope: r'keyword', match: r'\\[a-zA-Z]+'),
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
      Mode(
        scope: r'comment',
        begin: r'#',
        end: r'$',
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
      Mode(
        scope: r'string',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
        variants: [
          hljs.END_SAME_AS_BEGIN(Mode(begin: r'[rR]"(-*)\(', end: r'\)(-*)"')),
          hljs.END_SAME_AS_BEGIN(Mode(begin: r'[rR]"(-*)\{', end: r'\}(-*)"')),
          hljs.END_SAME_AS_BEGIN(Mode(begin: r'[rR]"(-*)\[', end: r'\](-*)"')),
          hljs.END_SAME_AS_BEGIN(Mode(begin: r"[rR]'(-*)\(", end: r"\)(-*)'")),
          hljs.END_SAME_AS_BEGIN(Mode(begin: r"[rR]'(-*)\{", end: r"\}(-*)'")),
          hljs.END_SAME_AS_BEGIN(Mode(begin: r"[rR]'(-*)\[", end: r"\](-*)'")),
          Mode(begin: r'"', end: r'"', relevance: 0),
          Mode(begin: r"'", end: r"'", relevance: 0),
        ],
      ),
      Mode(
        relevance: 0,
        variants: [
          Mode(
            scope: {1: r'operator', 2: r'number'},
            match: [
              r'[=!<>:]=|\|\||&&|:::?|<-|<<-|->>|->|\|>|[-+*\/?!$&|:<=>@^~]|\*\*',
              r'(?:0[xX][0-9a-fA-F]+\.[0-9a-fA-F]*[pP][+-]?\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\d+)?[Li]?|(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+-]?\d+)?[Li]?)',
            ],
          ),
          Mode(
            scope: {1: r'operator', 2: r'number'},
            match: [
              r'%[^%]*%',
              r'(?:0[xX][0-9a-fA-F]+\.[0-9a-fA-F]*[pP][+-]?\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\d+)?[Li]?|(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+-]?\d+)?[Li]?)',
            ],
          ),
          Mode(
            scope: {1: r'punctuation', 2: r'number'},
            match: [
              r'(?:[()]|[{}]|\[\[|[[\]]|\\|,)',
              r'(?:0[xX][0-9a-fA-F]+\.[0-9a-fA-F]*[pP][+-]?\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\d+)?[Li]?|(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+-]?\d+)?[Li]?)',
            ],
          ),
          Mode(
            scope: {2: r'number'},
            match: [
              r'[^a-zA-Z0-9._]|^',
              r'(?:0[xX][0-9a-fA-F]+\.[0-9a-fA-F]*[pP][+-]?\d+i?|0[xX][0-9a-fA-F]+(?:[pP][+-]?\d+)?[Li]?|(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+-]?\d+)?[Li]?)',
            ],
          ),
        ],
      ),
      Mode(
        scope: {3: r'operator'},
        match: [
          r'(?:(?:[a-zA-Z]|\.[._a-zA-Z])[._a-zA-Z0-9]*)|\.(?!\d)',
          r'\s+',
          r'<-',
          r'\s+',
        ],
      ),
      Mode(
        scope: r'operator',
        relevance: 0,
        variants: [
          Mode(
            match:
                r'[=!<>:]=|\|\||&&|:::?|<-|<<-|->>|->|\|>|[-+*\/?!$&|:<=>@^~]|\*\*',
          ),
          Mode(match: r'%[^%]*%'),
        ],
      ),
      Mode(
        scope: r'punctuation',
        relevance: 0,
        match: r'(?:[()]|[{}]|\[\[|[[\]]|\\|,)',
      ),
      Mode(
        begin: r'`',
        end: r'`',
        contains: [Mode(begin: r'\\.')],
      ),
    ],
  );
}
