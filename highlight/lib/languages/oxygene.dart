// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode oxygene(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'\{';
  _mode0.end = r'\}';
  _mode0.contains = [
    _mode1,
    _mode2,
  ];
  _mode0.relevance = 0;
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'comment';
  _mode3.begin = r'\(\*';
  _mode3.end = r'\*\)';
  _mode3.contains = [
    _mode4,
    _mode5,
  ];
  _mode3.relevance = 10;
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.scope = r'string';
  _mode6.begin = r"'";
  _mode6.end = r"'";
  _mode6.contains = [
    _mode7,
  ];
  _mode7.begin = r"''";
  _mode8.scope = r'string';
  _mode8.begin = r'(#\d+)+';
  return Mode(
    name: r'Oxygene',
    caseInsensitive: true,
    keywords: {
      r'$pattern': r'\.?\w+',
      r'keyword':
          r'abstract add and array as asc aspect assembly async begin break block by case class concat const copy constructor continue create default delegate desc distinct div do downto dynamic each else empty end ensure enum equals event except exit extension external false final finalize finalizer finally flags for forward from function future global group has if implementation implements implies in index inherited inline interface into invariants is iterator join locked locking loop matching method mod module namespace nested new nil not notify nullable of old on operator or order out override parallel params partial pinned private procedure property protected public queryable raise read readonly record reintroduce remove repeat require result reverse sealed select self sequence set shl shr skip static step soft take then to true try tuple type union unit unsafe until uses using var virtual raises volatile where while with write xor yield await mapped deprecated stdcall cdecl pascal register safecall overload library platform reference packed strict published autoreleasepool selector strong weak unretained',
    },
    illegal: r'("|\$[G-Zg-z]|\/\*|</|=>|->)',
    contains: [
      _mode0,
      _mode3,
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
      _mode6,
      _mode8,
      Mode(
        scope: r'number',
        begin: r'\b\d+(\.\d+)?',
        relevance: 0,
      ),
      Mode(
        beginKeywords: r'function constructor destructor procedure method',
        end: r'[:;]',
        keywords:
            r'function constructor|10 destructor|10 procedure|10 method|10',
        contains: [
          Mode(
            scope: r'title.function',
            begin: r'[a-zA-Z]\w*',
            relevance: 0,
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            keywords: {
              r'$pattern': r'\.?\w+',
              r'keyword':
                  r'abstract add and array as asc aspect assembly async begin break block by case class concat const copy constructor continue create default delegate desc distinct div do downto dynamic each else empty end ensure enum equals event except exit extension external false final finalize finalizer finally flags for forward from function future global group has if implementation implements implies in index inherited inline interface into invariants is iterator join locked locking loop matching method mod module namespace nested new nil not notify nullable of old on operator or order out override parallel params partial pinned private procedure property protected public queryable raise read readonly record reintroduce remove repeat require result reverse sealed select self sequence set shl shr skip static step soft take then to true try tuple type union unit unsafe until uses using var virtual raises volatile where while with write xor yield await mapped deprecated stdcall cdecl pascal register safecall overload library platform reference packed strict published autoreleasepool selector strong weak unretained',
            },
            contains: [
              _mode6,
              _mode8,
            ],
          ),
          _mode0,
          _mode3,
        ],
      ),
      Mode(
        scope: r'punctuation',
        match: r';',
        relevance: 0,
      ),
    ],
  );
}
