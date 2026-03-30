// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `scala`.
Mode scala(Highlight hljs) {
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
  mode0.scope = r'comment';
  mode0.begin = r'//';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'comment';
  mode3.begin = r'/\*';
  mode3.end = r'\*/';
  mode3.contains = [mode4, mode5];
  mode4.scope = r'doctag';
  mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode4.excludeBegin = true;
  mode4.relevance = 0;
  mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode6.begin = r'\\[\s\S]';
  mode6.relevance = 0;
  mode7.scope = r'subst';
  mode7.variants = [mode8, mode9];
  mode8.begin = r'\$[A-Za-z0-9_]+';
  mode9.begin = r'\$\{';
  mode9.end = r'\}';
  mode10.scope = r'type';
  mode10.begin = r'\b[A-Z][A-Za-z0-9_]*';
  mode10.relevance = 0;
  mode11.scope = r'title';
  mode11.begin =
      '[^0-9\\n\\t "\'(),.`{}\\[\\]:;][^\\n\\t "\'(),.`{}\\[\\]:;]+|[^0-9\\n\\t "\'(),.`{}\\[\\]:;=]';
  mode11.relevance = 0;
  return Mode(
    name: r'Scala',
    keywords: {
      r'literal': r'true false null',
      r'keyword':
          r'type yield lazy override def with val var sealed abstract private trait object if then forSome for while do throw finally protected extends import final return else break new catch super class case package default try this match continue throws implicit export enum given transparent',
    },
    contains: [
      Mode(
        begin: [r'//>', r'\s+', r'using', r'\s+', r'\S+'],
        beginScope: {1: r'comment', 3: r'keyword', 5: r'type'},
        end: r'$',
        contains: [Mode(scope: r'string', begin: r'\S+')],
      ),
      mode0,
      mode3,
      Mode(
        scope: r'string',
        variants: [
          Mode(begin: r'"""', end: r'"""'),
          Mode(begin: r'"', end: r'"', illegal: r'\n', contains: [mode6]),
          Mode(
            begin: r'[a-z]+"',
            end: r'"',
            illegal: r'\n',
            contains: [mode6, mode7],
          ),
          Mode(
            scope: r'string',
            begin: r'[a-z]+"""',
            end: r'"""',
            contains: [mode7],
            relevance: 10,
          ),
        ],
      ),
      mode10,
      Mode(
        scope: r'function',
        beginKeywords: r'def',
        end: r'(?=[:={\[(\n;])',
        contains: [mode11],
      ),
      Mode(
        scope: r'class',
        beginKeywords: r'class object trait type',
        end: r'[:={\[\n;]',
        excludeEnd: true,
        contains: [
          mode0,
          mode3,
          Mode(beginKeywords: r'extends with', relevance: 10),
          Mode(
            begin: r'\[',
            end: r'\]',
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
            contains: [mode10, mode0, mode3],
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
            contains: [mode10, mode0, mode3],
          ),
          mode11,
        ],
      ),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
        relevance: 0,
      ),
      Mode(
        begin: [r'^\s*', r'extension', r'\s+(?=[[(])'],
        beginScope: {2: r'keyword'},
      ),
      Mode(
        begin: [r'^\s*', r'end', r'\s+', r'(extension\b)?'],
        beginScope: {2: r'keyword', 4: r'keyword'},
      ),
      Mode(match: r'\.inline\b'),
      Mode(begin: r'\binline(?=\s)', keywords: r'inline'),
      Mode(
        begin: [r'\(\s*', r'using', r'\s+(?!\))'],
        beginScope: {2: r'keyword'},
      ),
      Mode(scope: r'meta', begin: r'@[A-Za-z]+'),
    ],
  );
}
