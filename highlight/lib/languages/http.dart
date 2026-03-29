// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode http(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  _mode0.scope = r'attribute';
  _mode0.begin = r'^[A-Za-z][A-Za-z0-9-]*(?=\:\s)';
  _mode0.starts = _mode1;
  _mode1.contains = [_mode2];
  _mode2.scope = r'punctuation';
  _mode2.begin = r': ';
  _mode2.relevance = 0;
  _mode2.starts = _mode3;
  _mode3.end = r'$';
  _mode3.relevance = 0;
  _mode4.begin = r'\n\n';
  _mode4.starts = _mode5;
  _mode5.subLanguage = [];
  _mode5.endsWithParent = true;
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
        starts: Mode(end: r'\b\B', illegal: r'\S', contains: [_mode0, _mode4]),
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
        starts: Mode(end: r'\b\B', illegal: r'\S', contains: [_mode0, _mode4]),
      ),
      Mode(
        scope: r'attribute',
        begin: r'^[A-Za-z][A-Za-z0-9-]*(?=\:\s)',
        starts: _mode1,
        relevance: 0,
      ),
    ],
  );
}
