// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `haml`.
Mode haml(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  mode0.scope = r'string';
  mode0.begin = r"'";
  mode0.end = r"'";
  mode0.illegal = r'\n';
  mode0.contains = [mode1];
  mode1.begin = r'\\[\s\S]';
  mode1.relevance = 0;
  mode2.scope = r'string';
  mode2.begin = r'"';
  mode2.end = r'"';
  mode2.illegal = r'\n';
  mode2.contains = [mode1];
  return Mode(
    name: r'HAML',
    caseInsensitive: true,
    contains: [
      Mode(
        scope: r'meta',
        begin: r'^!!!( (5|1\.1|Strict|Frameset|Basic|Mobile|RDFa|XML\b.*))?$',
        relevance: 10,
      ),
      Mode(
        scope: r'comment',
        begin: r'^\s*(!=#|=#|-#|/).*$',
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
        begin: r'^\s*(-|=|!=)(?!#)',
        end: r'$',
        subLanguage: r'ruby',
        excludeBegin: true,
        excludeEnd: true,
      ),
      Mode(
        scope: r'tag',
        begin: r'^\s*%',
        contains: [
          Mode(scope: r'selector-tag', begin: r'\w+'),
          Mode(scope: r'selector-id', begin: r'#[\w-]+'),
          Mode(scope: r'selector-class', begin: r'\.[\w-]+'),
          Mode(
            begin: r'\{\s*',
            end: r'\s*\}',
            contains: [
              Mode(
                begin: r':\w+\s*=>',
                end: r',\s+',
                returnBegin: true,
                endsWithParent: true,
                contains: [
                  Mode(scope: r'attr', begin: r':\w+'),
                  mode0,
                  mode2,
                  Mode(begin: r'\w+', relevance: 0),
                ],
              ),
            ],
          ),
          Mode(
            begin: r'\(\s*',
            end: r'\s*\)',
            excludeEnd: true,
            contains: [
              Mode(
                begin: r'\w+\s*=',
                end: r'\s+',
                returnBegin: true,
                endsWithParent: true,
                contains: [
                  Mode(scope: r'attr', begin: r'\w+', relevance: 0),
                  mode0,
                  mode2,
                  Mode(begin: r'\w+', relevance: 0),
                ],
              ),
            ],
          ),
        ],
      ),
      Mode(begin: r'^\s*[=~]\s*'),
      Mode(
        begin: r'#\{',
        end: r'\}',
        subLanguage: r'ruby',
        excludeBegin: true,
        excludeEnd: true,
      ),
    ],
  );
}
