// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `abnf`.
Mode abnf(Highlight hljs) {
  return Mode(
    name: r'Augmented Backus-Naur Form',
    illegal: r"[!@#$^&',?+~`|:]",
    keywords: [
      r'ALPHA',
      r'BIT',
      r'CHAR',
      r'CR',
      r'CRLF',
      r'CTL',
      r'DIGIT',
      r'DQUOTE',
      r'HEXDIG',
      r'HTAB',
      r'LF',
      r'LWSP',
      r'OCTET',
      r'SP',
      r'VCHAR',
      r'WSP',
    ],
    contains: [
      Mode(scope: r'operator', match: r'=\/?'),
      Mode(scope: r'attribute', match: r'^[a-zA-Z][a-zA-Z0-9-]*(?=\s*=)'),
      Mode(
        scope: r'comment',
        begin: r';',
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
      Mode(scope: r'symbol', match: r'%b[0-1]+(-[0-1]+|(\.[0-1]+)+)?'),
      Mode(scope: r'symbol', match: r'%d[0-9]+(-[0-9]+|(\.[0-9]+)+)?'),
      Mode(scope: r'symbol', match: r'%x[0-9A-F]+(-[0-9A-F]+|(\.[0-9A-F]+)+)?'),
      Mode(scope: r'symbol', match: r'%[si](?=".*")'),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?', relevance: 0),
    ],
  );
}
