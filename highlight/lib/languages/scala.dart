// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode scala(Highlight hljs) {
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
  _mode0.scope = r'comment';
  _mode0.begin = r'//';
  _mode0.end = r'$';
  _mode0.contains = [_mode1, _mode2];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'comment';
  _mode3.begin = r'/\*';
  _mode3.end = r'\*/';
  _mode3.contains = [_mode4, _mode5];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.begin = r'\\[\s\S]';
  _mode6.relevance = 0;
  _mode7.scope = r'subst';
  _mode7.variants = [_mode8, _mode9];
  _mode8.begin = r'\$[A-Za-z0-9_]+';
  _mode9.begin = r'\$\{';
  _mode9.end = r'\}';
  _mode10.scope = r'type';
  _mode10.begin = r'\b[A-Z][A-Za-z0-9_]*';
  _mode10.relevance = 0;
  _mode11.scope = r'title';
  _mode11.begin =
      '[^0-9\\n\\t "\'(),.`{}\\[\\]:;][^\\n\\t "\'(),.`{}\\[\\]:;]+|[^0-9\\n\\t "\'(),.`{}\\[\\]:;=]';
  _mode11.relevance = 0;
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
      _mode0,
      _mode3,
      Mode(
        scope: r'string',
        variants: [
          Mode(begin: r'"""', end: r'"""'),
          Mode(begin: r'"', end: r'"', illegal: r'\n', contains: [_mode6]),
          Mode(
            begin: r'[a-z]+"',
            end: r'"',
            illegal: r'\n',
            contains: [_mode6, _mode7],
          ),
          Mode(
            scope: r'string',
            begin: r'[a-z]+"""',
            end: r'"""',
            contains: [_mode7],
            relevance: 10,
          ),
        ],
      ),
      _mode10,
      Mode(
        scope: r'function',
        beginKeywords: r'def',
        end: r'(?=[:={\[(\n;])',
        contains: [_mode11],
      ),
      Mode(
        scope: r'class',
        beginKeywords: r'class object trait type',
        end: r'[:={\[\n;]',
        excludeEnd: true,
        contains: [
          _mode0,
          _mode3,
          Mode(beginKeywords: r'extends with', relevance: 10),
          Mode(
            begin: r'\[',
            end: r'\]',
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
            contains: [_mode10, _mode0, _mode3],
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
            contains: [_mode10, _mode0, _mode3],
          ),
          _mode11,
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
