// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `apache`.
Mode apache(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  mode0.scope = r'number';
  mode0.begin = r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(:\d{1,5})?';
  mode1.begin = r'\\[\s\S]';
  mode1.relevance = 0;
  return Mode(
    name: r'Apache config',
    aliases: [r'apacheconf'],
    caseInsensitive: true,
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
        scope: r'section',
        begin: r'<\/?',
        end: r'>',
        contains: [
          mode0,
          Mode(scope: r'number', begin: r':\d{1,5}'),
          Mode(
            scope: r'string',
            begin: r'"',
            end: r'"',
            illegal: r'\n',
            contains: [mode1],
            relevance: 0,
          ),
        ],
      ),
      Mode(
        scope: r'attribute',
        begin: r'\w+',
        relevance: 0,
        keywords: {
          r'_': [
            r'order',
            r'deny',
            r'allow',
            r'setenv',
            r'rewriterule',
            r'rewriteengine',
            r'rewritecond',
            r'documentroot',
            r'sethandler',
            r'errordocument',
            r'loadmodule',
            r'options',
            r'header',
            r'listen',
            r'serverroot',
            r'servername',
          ],
        },
        starts: Mode(
          end: r'$',
          relevance: 0,
          keywords: {r'literal': r'on off all deny allow'},
          contains: [
            Mode(scope: r'punctuation', match: r'\\\n'),
            Mode(scope: r'meta', begin: r'\s\[', end: r'\]$'),
            Mode(
              scope: r'variable',
              begin: r'[\$%]\{',
              end: r'\}',
              contains: [
                r'self',
                Mode(scope: r'number', begin: r'[$%]\d+'),
              ],
            ),
            mode0,
            Mode(scope: r'number', begin: r'\b\d+'),
            Mode(
              scope: r'string',
              begin: r'"',
              end: r'"',
              illegal: r'\n',
              contains: [mode1],
            ),
          ],
        ),
      ),
    ],
    illegal: r'\S',
  );
}
