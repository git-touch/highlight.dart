// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `markdown`.
Mode markdown(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  final Mode mode18 = Mode();
  mode0.begin = r'<\/?[A-Za-z_]';
  mode0.end = r'>';
  mode0.subLanguage = r'xml';
  mode0.relevance = 0;
  mode1.variants = [mode2, mode3, mode4, mode5, mode6];
  mode1.returnBegin = true;
  mode1.contains = [mode7, mode8, mode9, mode10];
  mode2.begin = r'\[.+?\]\[.*?\]';
  mode2.relevance = 0;
  mode3.begin =
      r'\[.+?\]\(((data|javascript|mailto):|(?:http|ftp)s?:\/\/).*?\)';
  mode3.relevance = 2;
  mode4.begin = r'\[.+?\]\([A-Za-z][A-Za-z0-9+.-]*:\/\/.*?\)';
  mode4.relevance = 2;
  mode5.begin = r'\[.+?\]\([./?&#].*?\)';
  mode5.relevance = 1;
  mode6.begin = r'\[.*?\]\(.*?\)';
  mode6.relevance = 0;
  mode7.match = r'\[(?=\])';
  mode8.scope = r'string';
  mode8.relevance = 0;
  mode8.begin = r'\[';
  mode8.end = r'\]';
  mode8.excludeBegin = true;
  mode8.returnEnd = true;
  mode9.scope = r'link';
  mode9.relevance = 0;
  mode9.begin = r'\]\(';
  mode9.end = r'\)';
  mode9.excludeBegin = true;
  mode9.excludeEnd = true;
  mode10.scope = r'symbol';
  mode10.relevance = 0;
  mode10.begin = r'\]\[';
  mode10.end = r'\]';
  mode10.excludeBegin = true;
  mode10.excludeEnd = true;
  mode11.scope = r'strong';
  mode11.contains = [mode12, mode0, mode1];
  mode11.variants = [mode15, mode16];
  mode12.scope = r'emphasis';
  mode12.contains = [mode0, mode1];
  mode12.variants = [mode13, mode14];
  mode13.begin = r'\*(?![*\s])';
  mode13.end = r'\*';
  mode14.begin = r'_(?![_\s])';
  mode14.end = r'_';
  mode14.relevance = 0;
  mode15.begin = r'_{2}(?!\s)';
  mode15.end = r'_{2}';
  mode16.begin = r'\*{2}(?!\s)';
  mode16.end = r'\*{2}';
  mode17.scope = r'emphasis';
  mode17.contains = [mode18, mode0, mode1];
  mode17.variants = [mode13, mode14];
  mode18.scope = r'strong';
  mode18.contains = [mode0, mode1];
  mode18.variants = [mode15, mode16];
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
            contains: [mode0, mode1, mode11, mode17],
          ),
          Mode(
            begin: r'(?=^.+?\n[=-]{2,}$)',
            contains: [
              Mode(begin: r'^[=-]*$'),
              Mode(
                begin: r'^',
                end: r'\n',
                contains: [mode0, mode1, mode11, mode17],
              ),
            ],
          ),
        ],
      ),
      mode0,
      Mode(
        scope: r'bullet',
        begin: r'^[ 	]*([*+-]|(\d+\.))(?=\s+)',
        end: r'\s+',
        excludeEnd: true,
      ),
      mode11,
      mode17,
      Mode(
        scope: r'quote',
        begin: r'^>\s+',
        contains: [mode0, mode1, mode11, mode17],
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
      mode1,
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
