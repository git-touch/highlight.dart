// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `smali`.
Mode smali(Highlight hljs) {
  return Mode(
    name: r'Smali',
    contains: [
      Mode(scope: r'string', begin: r'"', end: r'"', relevance: 0),
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
        relevance: 0,
      ),
      Mode(
        scope: r'keyword',
        variants: [
          Mode(begin: r'\s*\.end\s[a-zA-Z0-9]*'),
          Mode(begin: r'^[ ]*\.[a-zA-Z]*', relevance: 0),
          Mode(begin: r'\s:[a-zA-Z_0-9]*', relevance: 0),
          Mode(
            begin:
                r'\s(transient|constructor|abstract|final|synthetic|public|private|protected|static|bridge|system)',
          ),
        ],
      ),
      Mode(
        scope: r'built_in',
        variants: [
          Mode(
            begin:
                r'\s(add|and|cmp|cmpg|cmpl|const|div|double|float|goto|if|int|long|move|mul|neg|new|nop|not|or|rem|return|shl|shr|sput|sub|throw|ushr|xor)\s',
          ),
          Mode(
            begin:
                r'\s(add|and|cmp|cmpg|cmpl|const|div|double|float|goto|if|int|long|move|mul|neg|new|nop|not|or|rem|return|shl|shr|sput|sub|throw|ushr|xor)((-|/)[a-zA-Z0-9]+)+\s',
            relevance: 10,
          ),
          Mode(
            begin:
                r'\s(aget|aput|array|check|execute|fill|filled|goto/16|goto/32|iget|instance|invoke|iput|monitor|packed|sget|sparse)((-|/)[a-zA-Z0-9]+)*\s',
            relevance: 10,
          ),
        ],
      ),
      Mode(scope: r'class', begin: 'L[^(;:\n]*;', relevance: 0),
      Mode(begin: r'[vp][0-9]+'),
    ],
  );
}
