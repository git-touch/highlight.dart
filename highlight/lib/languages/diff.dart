// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `diff`.
Mode diff(Highlight hljs) {
  return Mode(
    name: r'Diff',
    aliases: [r'patch'],
    contains: [
      Mode(
        scope: r'meta',
        relevance: 10,
        match:
            r'(?:^@@ +-\d+,\d+ +\+\d+,\d+ +@@|^\*\*\* +\d+,\d+ +\*\*\*\*$|^--- +\d+,\d+ +----$)',
      ),
      Mode(
        scope: r'comment',
        variants: [
          Mode(
            begin: r'(?:Index: |^index|={3,}|^-{3}|^\*{3} |^\+{3}|^diff --git)',
            end: r'$',
          ),
          Mode(match: r'^\*{15}$'),
        ],
      ),
      Mode(scope: r'addition', begin: r'^\+', end: r'$'),
      Mode(scope: r'deletion', begin: r'^-', end: r'$'),
      Mode(scope: r'addition', begin: r'^!', end: r'$'),
    ],
  );
}
