// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `http`.
Mode http(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  mode0.scope = r'attribute';
  mode0.begin = r'^[A-Za-z][A-Za-z0-9-]*(?=\:\s)';
  mode0.starts = mode1;
  mode1.contains = [mode2];
  mode2.scope = r'punctuation';
  mode2.begin = r': ';
  mode2.relevance = 0;
  mode2.starts = mode3;
  mode3.end = r'$';
  mode3.relevance = 0;
  mode4.begin = r'\n\n';
  mode4.starts = mode5;
  mode5.subLanguage = [];
  mode5.endsWithParent = true;
  return Mode(
    name: r'HTTP',
    aliases: [r'https'],
    illegal: r'\S',
    contains: [
      Mode(
        begin: r'^(?=HTTP/([32]|1\.[01]) \d{3})',
        end: r'$',
        contains: [
          Mode(scope: r'meta', begin: r'HTTP/([32]|1\.[01])'),
          Mode(scope: r'number', begin: r'\b\d{3}\b'),
        ],
        starts: Mode(end: r'\b\B', illegal: r'\S', contains: [mode0, mode4]),
      ),
      Mode(
        begin: r'(?=^[A-Z]+ (.*?) HTTP/([32]|1\.[01])$)',
        end: r'$',
        contains: [
          Mode(
            scope: r'string',
            begin: r' ',
            end: r' ',
            excludeBegin: true,
            excludeEnd: true,
          ),
          Mode(scope: r'meta', begin: r'HTTP/([32]|1\.[01])'),
          Mode(scope: r'keyword', begin: r'[A-Z]+'),
        ],
        starts: Mode(end: r'\b\B', illegal: r'\S', contains: [mode0, mode4]),
      ),
      Mode(
        scope: r'attribute',
        begin: r'^[A-Za-z][A-Za-z0-9-]*(?=\:\s)',
        starts: mode1,
        relevance: 0,
      ),
    ],
  );
}
