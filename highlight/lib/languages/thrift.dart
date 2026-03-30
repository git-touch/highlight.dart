// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `thrift`.
Mode thrift(Highlight hljs) {
  return Mode(
    name: r'Thrift',
    keywords: {
      r'keyword': [
        r'namespace',
        r'const',
        r'typedef',
        r'struct',
        r'enum',
        r'service',
        r'exception',
        r'void',
        r'oneway',
        r'set',
        r'list',
        r'map',
        r'required',
        r'optional',
      ],
      r'type': [
        r'bool',
        r'byte',
        r'i16',
        r'i32',
        r'i64',
        r'double',
        r'string',
        r'binary',
      ],
      r'literal': r'true false',
    },
    contains: [
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?', relevance: 0),
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
      Mode(
        scope: r'comment',
        begin: r'/\*',
        end: r'\*/',
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
        scope: r'class',
        beginKeywords: r'struct enum service exception',
        end: r'\{',
        illegal: r'\n',
        contains: [
          Mode(
            scope: r'title',
            begin: r'[a-zA-Z]\w*',
            relevance: 0,
            starts: Mode(endsWithParent: true, excludeEnd: true),
          ),
        ],
      ),
      Mode(
        begin: r'\b(set|list|map)\s*<',
        keywords: {
          r'type': [
            r'bool',
            r'byte',
            r'i16',
            r'i32',
            r'i64',
            r'double',
            r'string',
            r'binary',
            r'set',
            r'list',
            r'map',
          ],
        },
        end: r'>',
        contains: [r'self'],
      ),
    ],
  );
}
