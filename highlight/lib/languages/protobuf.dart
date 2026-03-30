// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `protobuf`.
Mode protobuf(Highlight hljs) {
  return Mode(
    name: r'Protocol Buffers',
    aliases: [r'proto'],
    keywords: {
      r'keyword': [
        r'package',
        r'import',
        r'option',
        r'optional',
        r'required',
        r'repeated',
        r'group',
        r'oneof',
      ],
      r'type': [
        r'double',
        r'float',
        r'int32',
        r'int64',
        r'uint32',
        r'uint64',
        r'sint32',
        r'sint64',
        r'fixed32',
        r'fixed64',
        r'sfixed32',
        r'sfixed64',
        r'bool',
        r'string',
        r'bytes',
      ],
      r'literal': [r'true', r'false'],
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
        match: [r'(message|enum|service)\s+', r'[a-zA-Z]\w*'],
        scope: {1: r'keyword', 2: r'title.class'},
      ),
      Mode(
        scope: r'function',
        beginKeywords: r'rpc',
        end: r'[{;]',
        excludeEnd: true,
        keywords: r'rpc returns',
      ),
      Mode(begin: r'^\s*[A-Z_]+(?=\s*=[^\n]+;$)'),
    ],
  );
}
