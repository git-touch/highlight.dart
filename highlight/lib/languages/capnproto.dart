// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `capnproto`.
Mode capnproto(Highlight hljs) {
  return Mode(
    name: r'Cap’n Proto',
    aliases: [r'capnp'],
    keywords: {
      r'keyword': [
        r'struct',
        r'enum',
        r'interface',
        r'union',
        r'group',
        r'import',
        r'using',
        r'const',
        r'annotation',
        r'extends',
        r'in',
        r'of',
        r'on',
        r'as',
        r'with',
        r'from',
        r'fixed',
      ],
      r'type': [
        r'Void',
        r'Bool',
        r'Int8',
        r'Int16',
        r'Int32',
        r'Int64',
        r'UInt8',
        r'UInt16',
        r'UInt32',
        r'UInt64',
        r'Float32',
        r'Float64',
        r'Text',
        r'Data',
        r'AnyPointer',
        r'AnyStruct',
        r'Capability',
        r'List',
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
      Mode(scope: r'meta', begin: r'@0x[\w\d]{16};', illegal: r'\n'),
      Mode(scope: r'symbol', begin: r'@\d+\b'),
      Mode(
        variants: [
          Mode(match: [r'(struct|enum|interface)', r'\s+', r'[a-zA-Z]\w*']),
          Mode(match: [r'extends', r'\s*\(', r'[a-zA-Z]\w*', r'\s*\)']),
        ],
        scope: {1: r'keyword', 3: r'title.class'},
      ),
    ],
  );
}
