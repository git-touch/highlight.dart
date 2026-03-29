// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode makefile(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  _mode0.scope = r'variable';
  _mode0.variants = [
    _mode1,
    _mode3,
  ];
  _mode1.begin = r'\$\([a-zA-Z_]\w*\)';
  _mode1.contains = [
    _mode2,
  ];
  _mode2.begin = r'\\[\s\S]';
  _mode2.relevance = 0;
  _mode3.begin = r'\$[@%<?\^\+\*]';
  _mode4.scope = r'string';
  _mode4.begin = r'"';
  _mode4.end = r'"';
  _mode4.contains = [
    _mode2,
    _mode0,
  ];
  return Mode(
    name: r'Makefile',
    aliases: [
      r'mk',
      r'mak',
      r'make',
    ],
    keywords: {
      r'$pattern': r'[\w-]+',
      r'keyword':
          r'define endef undefine ifdef ifndef ifeq ifneq else endif include -include sinclude override export unexport private vpath',
    },
    contains: [
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
      _mode0,
      _mode4,
      Mode(
        scope: r'variable',
        begin: r'\$\([\w-]+\s',
        end: r'\)',
        keywords: {
          r'built_in':
              r'subst patsubst strip findstring filter filter-out sort word wordlist firstword lastword dir notdir suffix basename addsuffix addprefix join wildcard realpath abspath error warning shell origin flavor foreach if or and call eval file value',
        },
        contains: [
          _mode0,
          _mode4,
        ],
      ),
      Mode(
        begin: r'^[a-zA-Z_]\w*\s*(?=[:+?]?=)',
      ),
      Mode(
        scope: r'meta',
        begin: r'^\.PHONY:',
        end: r'$',
        keywords: {
          r'$pattern': r'[\.\w]+',
          r'keyword': r'.PHONY',
        },
      ),
      Mode(
        scope: r'section',
        begin: r'^[^\s]+:',
        end: r'$',
        contains: [
          _mode0,
        ],
      ),
    ],
  );
}
