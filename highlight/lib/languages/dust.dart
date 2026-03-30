// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `dust`.
Mode dust(Highlight hljs) {
  return Mode(
    name: r'Dust',
    aliases: [r'dst'],
    caseInsensitive: true,
    subLanguage: r'xml',
    contains: [
      Mode(
        scope: r'template-tag',
        begin: r'\{[#\/]',
        end: r'\}',
        illegal: r';',
        contains: [
          Mode(
            scope: r'name',
            begin: r'[a-zA-Z\.-]+',
            starts: Mode(
              endsWithParent: true,
              relevance: 0,
              contains: [
                Mode(
                  scope: r'string',
                  begin: r'"',
                  end: r'"',
                  illegal: r'\n',
                  contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
                ),
              ],
            ),
          ),
        ],
      ),
      Mode(
        scope: r'template-variable',
        begin: r'\{',
        end: r'\}',
        illegal: r';',
        keywords: r'if eq ne lt lte gt gte select default math sep',
      ),
    ],
  );
}
