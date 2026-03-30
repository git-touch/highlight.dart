// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `scilab`.
Mode scilab(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  mode0.scope = r'number';
  mode0.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode0.relevance = 0;
  mode1.scope = r'string';
  mode1.begin = '\'|"';
  mode1.end = '\'|"';
  mode1.contains = [mode2, mode3];
  mode2.begin = r'\\[\s\S]';
  mode2.relevance = 0;
  mode3.begin = r"''";
  return Mode(
    name: r'Scilab',
    aliases: [r'sci'],
    keywords: {
      r'$pattern': r'%?\w+',
      r'keyword':
          r'abort break case clear catch continue do elseif else endfunction end for function global if pause return resume select try then while',
      r'literal': r'%f %F %t %T %pi %eps %inf %nan %e %i %z %s',
      r'built_in':
          r'abs and acos asin atan ceil cd chdir clearglobal cosh cos cumprod deff disp error exec execstr exists exp eye gettext floor fprintf fread fsolve imag isdef isempty isinfisnan isvector lasterror length load linspace list listfiles log10 log2 log max min msprintf mclose mopen ones or pathconvert poly printf prod pwd rand real round sinh sin size gsort sprintf sqrt strcat strcmps tring sum system tanh tan type typename warning zeros matrix',
    },
    illegal: r'("|#|/\*|\s+/\w+)',
    contains: [
      Mode(
        scope: r'function',
        beginKeywords: r'function',
        end: r'$',
        contains: [
          Mode(scope: r'title', begin: r'[a-zA-Z_]\w*', relevance: 0),
          Mode(scope: r'params', begin: r'\(', end: r'\)'),
        ],
      ),
      Mode(begin: r"[a-zA-Z_][a-zA-Z_0-9]*[\.']+", relevance: 0),
      Mode(
        begin: r'\[',
        end: r"\][\.']*",
        relevance: 0,
        contains: [mode0, mode1],
      ),
      Mode(
        scope: r'comment',
        begin: r'//',
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
      mode0,
      mode1,
    ],
  );
}
