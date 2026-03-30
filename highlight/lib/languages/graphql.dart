// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `graphql`.
Mode graphql(Highlight hljs) {
  return Mode(
    name: r'GraphQL',
    aliases: [r'gql'],
    caseInsensitive: true,
    disableAutodetect: false,
    keywords: {
      r'keyword': [
        r'query',
        r'mutation',
        r'subscription',
        r'type',
        r'input',
        r'schema',
        r'directive',
        r'interface',
        r'union',
        r'scalar',
        r'fragment',
        r'enum',
        r'on',
      ],
      r'literal': [r'true', r'false', r'null'],
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
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?', relevance: 0),
      Mode(scope: r'punctuation', match: r'[.]{3}', relevance: 0),
      Mode(
        scope: r'punctuation',
        begin: r'[\!\(\)\:\=\[\]\{\|\}]{1}',
        relevance: 0,
      ),
      Mode(
        scope: r'variable',
        begin: r'\$',
        end: r'\W',
        excludeEnd: true,
        relevance: 0,
      ),
      Mode(scope: r'meta', match: r'@\w+', excludeEnd: true),
      Mode(
        scope: r'symbol',
        begin: r'[_A-Za-z][_0-9A-Za-z]*(?=\s*:)',
        relevance: 0,
      ),
    ],
    illegal: [r"[;<']", r'BEGIN'],
  );
}
