// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `gherkin`.
Mode gherkin(Highlight hljs) {
  return Mode(
    name: r'Gherkin',
    aliases: [r'feature'],
    keywords:
        r'Feature Background Ability Business Need Scenario Scenarios Scenario Outline Scenario Template Examples Given And Then But When',
    contains: [
      Mode(scope: r'symbol', begin: r'\*', relevance: 0),
      Mode(scope: r'meta', begin: r'@[^@\s]+'),
      Mode(
        begin: r'\|',
        end: r'\|\w*$',
        contains: [Mode(scope: r'string', begin: r'[^|]+')],
      ),
      Mode(scope: r'variable', begin: r'<', end: r'>'),
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
      Mode(scope: r'string', begin: r'"""', end: r'"""'),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
    ],
  );
}
