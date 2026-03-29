// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode markdown(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  _mode0.begin = r'<\/?[A-Za-z_]';
  _mode0.end = r'>';
  _mode0.subLanguage = r'xml';
  _mode0.relevance = 0;
  _mode1.variants = [_mode2, _mode3, _mode4, _mode5, _mode6];
  _mode1.returnBegin = true;
  _mode1.contains = [_mode7, _mode8, _mode9, _mode10];
  _mode2.begin = r'\[.+?\]\[.*?\]';
  _mode2.relevance = 0;
  _mode3.begin =
      r'\[.+?\]\(((data|javascript|mailto):|(?:http|ftp)s?:\/\/).*?\)';
  _mode3.relevance = 2;
  _mode4.begin = r'\[.+?\]\([A-Za-z][A-Za-z0-9+.-]*:\/\/.*?\)';
  _mode4.relevance = 2;
  _mode5.begin = r'\[.+?\]\([./?&#].*?\)';
  _mode5.relevance = 1;
  _mode6.begin = r'\[.*?\]\(.*?\)';
  _mode6.relevance = 0;
  _mode7.match = r'\[(?=\])';
  _mode8.scope = r'string';
  _mode8.relevance = 0;
  _mode8.begin = r'\[';
  _mode8.end = r'\]';
  _mode8.excludeBegin = true;
  _mode8.returnEnd = true;
  _mode9.scope = r'link';
  _mode9.relevance = 0;
  _mode9.begin = r'\]\(';
  _mode9.end = r'\)';
  _mode9.excludeBegin = true;
  _mode9.excludeEnd = true;
  _mode10.scope = r'symbol';
  _mode10.relevance = 0;
  _mode10.begin = r'\]\[';
  _mode10.end = r'\]';
  _mode10.excludeBegin = true;
  _mode10.excludeEnd = true;
  _mode11.scope = r'strong';
  _mode11.contains = [_mode12, _mode0, _mode1];
  _mode11.variants = [_mode15, _mode16];
  _mode12.scope = r'emphasis';
  _mode12.contains = [_mode0, _mode1];
  _mode12.variants = [_mode13, _mode14];
  _mode13.begin = r'\*(?![*\s])';
  _mode13.end = r'\*';
  _mode14.begin = r'_(?![_\s])';
  _mode14.end = r'_';
  _mode14.relevance = 0;
  _mode15.begin = r'_{2}(?!\s)';
  _mode15.end = r'_{2}';
  _mode16.begin = r'\*{2}(?!\s)';
  _mode16.end = r'\*{2}';
  _mode17.scope = r'emphasis';
  _mode17.contains = [_mode18, _mode0, _mode1];
  _mode17.variants = [_mode13, _mode14];
  _mode18.scope = r'strong';
  _mode18.contains = [_mode0, _mode1];
  _mode18.variants = [_mode15, _mode16];
  return Mode(
    name: r'Markdown',
    aliases: [r'md', r'mkdown', r'mkd'],
    contains: [
      Mode(
        scope: r'section',
        variants: [
          Mode(
            begin: r'^#{1,6}',
            end: r'$',
            contains: [_mode0, _mode1, _mode11, _mode17],
          ),
          Mode(
            begin: r'(?=^.+?\n[=-]{2,}$)',
            contains: [
              Mode(begin: r'^[=-]*$'),
              Mode(
                begin: r'^',
                end: r'\n',
                contains: [_mode0, _mode1, _mode11, _mode17],
              ),
            ],
          ),
        ],
      ),
      _mode0,
      Mode(
        scope: r'bullet',
        begin: r'^[ 	]*([*+-]|(\d+\.))(?=\s+)',
        end: r'\s+',
        excludeEnd: true,
      ),
      _mode11,
      _mode17,
      Mode(
        scope: r'quote',
        begin: r'^>\s+',
        contains: [_mode0, _mode1, _mode11, _mode17],
        end: r'$',
      ),
      Mode(
        scope: r'code',
        variants: [
          Mode(begin: r'(`{3,})[^`](.|\n)*?\1`*[ ]*'),
          Mode(begin: r'(~{3,})[^~](.|\n)*?\1~*[ ]*'),
          Mode(begin: r'```', end: r'```+[ ]*$'),
          Mode(begin: r'~~~', end: r'~~~+[ ]*$'),
          Mode(begin: r'`.+?`'),
          Mode(
            begin: r'(?=^( {4}|\t))',
            contains: [Mode(begin: r'^( {4}|\t)', end: r'(\n)$')],
            relevance: 0,
          ),
        ],
      ),
      Mode(begin: r'^[-\*]{3,}', end: r'$'),
      _mode1,
      Mode(
        begin: r'^\[[^\n]+\]:',
        returnBegin: true,
        contains: [
          Mode(
            scope: r'symbol',
            begin: r'\[',
            end: r'\]',
            excludeBegin: true,
            excludeEnd: true,
          ),
          Mode(scope: r'link', begin: r':\s*', end: r'$', excludeBegin: true),
        ],
      ),
      Mode(
        scope: r'literal',
        match: r'&([a-zA-Z0-9]+|#[0-9]{1,7}|#[Xx][0-9a-fA-F]{1,6});',
      ),
    ],
  );
}
