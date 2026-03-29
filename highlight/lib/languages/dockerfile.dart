// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode dockerfile(Highlight hljs) {
  final Mode _mode0 = Mode();
  _mode0.begin = r'\\[\s\S]';
  _mode0.relevance = 0;
  return Mode(
    name: r'Dockerfile',
    aliases: [r'docker'],
    caseInsensitive: true,
    keywords: [
      r'from',
      r'maintainer',
      r'expose',
      r'env',
      r'arg',
      r'user',
      r'onbuild',
      r'stopsignal',
    ],
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
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [_mode0],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [_mode0],
      ),
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?', relevance: 0),
      Mode(
        beginKeywords:
            r'run cmd entrypoint volume add copy workdir label healthcheck shell',
        starts: Mode(end: r'[^\\]$', subLanguage: r'bash'),
      ),
    ],
    illegal: r'</',
  );
}
