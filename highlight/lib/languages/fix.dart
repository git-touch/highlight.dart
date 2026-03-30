// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `fix`.
Mode fix(Highlight hljs) {
  return Mode(
    name: r'FIX',
    contains: [
      Mode(
        begin: r'[^\u2401\u0001]+',
        end: r'[\u2401\u0001]',
        excludeEnd: true,
        returnBegin: true,
        returnEnd: false,
        contains: [
          Mode(
            begin: r'([^\u2401\u0001=]+)',
            end: r'=([^\u2401\u0001=]+)',
            returnEnd: true,
            returnBegin: false,
            scope: r'attr',
          ),
          Mode(
            begin: r'=',
            end: r'([\u2401\u0001])',
            excludeEnd: true,
            excludeBegin: true,
            scope: r'string',
          ),
        ],
      ),
    ],
    caseInsensitive: true,
  );
}
