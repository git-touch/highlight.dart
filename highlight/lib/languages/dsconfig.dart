// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `dsconfig`.
Mode dsconfig(Highlight hljs) {
  return Mode(
    keywords: r'dsconfig',
    contains: [
      Mode(
        scope: r'keyword',
        begin: r'^dsconfig',
        end: r'\s',
        excludeEnd: true,
        relevance: 10,
      ),
      Mode(
        scope: r'built_in',
        begin: r'(list|create|get|set|delete)-(\w+)',
        end: r'\s',
        excludeEnd: true,
        illegal: r'!@#$%^&*()',
        relevance: 10,
      ),
      Mode(scope: r'built_in', begin: r'--(\w+)', end: r'\s', excludeEnd: true),
      Mode(scope: r'string', begin: r'"', end: r'"'),
      Mode(scope: r'string', begin: r"'", end: r"'"),
      Mode(scope: r'string', begin: r'[\w\-?]+:\w+', end: r'\W', relevance: 0),
      Mode(
        scope: r'string',
        begin: r'\w+(\-\w+)*',
        end: r'(?=\W)',
        relevance: 0,
      ),
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
    ],
  );
}
