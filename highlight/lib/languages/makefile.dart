// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `makefile`.
Mode makefile(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  mode0.scope = r'variable';
  mode0.variants = [mode1, mode3];
  mode1.begin = r'\$\([a-zA-Z_]\w*\)';
  mode1.contains = [mode2];
  mode2.begin = r'\\[\s\S]';
  mode2.relevance = 0;
  mode3.begin = r'\$[@%<?\^\+\*]';
  mode4.scope = r'string';
  mode4.begin = r'"';
  mode4.end = r'"';
  mode4.contains = [mode2, mode0];
  return Mode(
    name: r'Makefile',
    aliases: [r'mk', r'mak', r'make'],
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
      mode0,
      mode4,
      Mode(
        scope: r'variable',
        begin: r'\$\([\w-]+\s',
        end: r'\)',
        keywords: {
          r'built_in':
              r'subst patsubst strip findstring filter filter-out sort word wordlist firstword lastword dir notdir suffix basename addsuffix addprefix join wildcard realpath abspath error warning shell origin flavor foreach if or and call eval file value',
        },
        contains: [mode0, mode4],
      ),
      Mode(begin: r'^[a-zA-Z_]\w*\s*(?=[:+?]?=)'),
      Mode(
        scope: r'meta',
        begin: r'^\.PHONY:',
        end: r'$',
        keywords: {r'$pattern': r'[\.\w]+', r'keyword': r'.PHONY'},
      ),
      Mode(scope: r'section', begin: r'^[^\s]+:', end: r'$', contains: [mode0]),
    ],
  );
}
