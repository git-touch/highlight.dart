// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode haml(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  _mode0.scope = r'string';
  _mode0.begin = r"'";
  _mode0.end = r"'";
  _mode0.illegal = r'\n';
  _mode0.contains = [
    _mode1,
  ];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'string';
  _mode2.begin = r'"';
  _mode2.end = r'"';
  _mode2.illegal = r'\n';
  _mode2.contains = [
    _mode1,
  ];
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
          Mode(
            scope: r'selector-tag',
            begin: r'\w+',
          ),
          Mode(
            scope: r'selector-id',
            begin: r'#[\w-]+',
          ),
          Mode(
            scope: r'selector-class',
            begin: r'\.[\w-]+',
          ),
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
                  Mode(
                    scope: r'attr',
                    begin: r':\w+',
                  ),
                  _mode0,
                  _mode2,
                  Mode(
                    begin: r'\w+',
                    relevance: 0,
                  ),
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
                  Mode(
                    scope: r'attr',
                    begin: r'\w+',
                    relevance: 0,
                  ),
                  _mode0,
                  _mode2,
                  Mode(
                    begin: r'\w+',
                    relevance: 0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Mode(
        begin: r'^\s*[=~]\s*',
      ),
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
