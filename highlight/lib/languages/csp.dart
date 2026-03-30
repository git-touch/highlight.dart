// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `csp`.
Mode csp(Highlight hljs) {
  return Mode(
    name: r'CSP',
    caseInsensitive: false,
    keywords: {
      r'$pattern': r'[a-zA-Z][a-zA-Z0-9_-]*',
      r'keyword': [
        r'base-uri',
        r'child-src',
        r'connect-src',
        r'default-src',
        r'font-src',
        r'form-action',
        r'frame-ancestors',
        r'frame-src',
        r'img-src',
        r'manifest-src',
        r'media-src',
        r'object-src',
        r'plugin-types',
        r'report-uri',
        r'sandbox',
        r'script-src',
        r'style-src',
        r'trusted-types',
        r'unsafe-hashes',
        r'worker-src',
      ],
    },
    contains: [
      Mode(scope: r'string', begin: r"'", end: r"'"),
      Mode(
        scope: r'attribute',
        begin: r'^Content',
        end: r':',
        excludeEnd: true,
      ),
    ],
  );
}
