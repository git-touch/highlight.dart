// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `xml`.
Mode xml(Highlight hljs) {
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
  mode0.begin = r'\s';
  mode0.contains = [mode1];
  mode1.scope = r'keyword';
  mode1.begin = r'#?[a-z_][a-z1-9_-]+';
  mode1.illegal = r'\n';
  mode2.scope = r'string';
  mode2.begin = r'"';
  mode2.end = r'"';
  mode2.illegal = r'\n';
  mode2.contains = [mode3];
  mode3.begin = r'\\[\s\S]';
  mode3.relevance = 0;
  mode4.scope = r'string';
  mode4.begin = r"'";
  mode4.end = r"'";
  mode4.illegal = r'\n';
  mode4.contains = [mode3];
  mode5.begin = r'\(';
  mode5.contains = [mode1];
  mode5.end = r'\)';
  mode6.scope = r'symbol';
  mode6.begin = r'&[a-z]+;|&#[0-9]+;|&#x[a-f0-9]+;';
  mode7.endsWithParent = true;
  mode7.illegal = r'<';
  mode7.relevance = 0;
  mode7.contains = [mode8, mode9];
  mode8.scope = r'attr';
  mode8.begin = r'[\p{L}0-9._:-]+';
  mode8.relevance = 0;
  mode9.begin = r'=\s*';
  mode9.relevance = 0;
  mode9.contains = [mode10];
  mode10.scope = r'string';
  mode10.endsParent = true;
  mode10.variants = [mode11, mode12, mode13];
  mode11.begin = r'"';
  mode11.end = r'"';
  mode11.contains = [mode6];
  mode12.begin = r"'";
  mode12.end = r"'";
  mode12.contains = [mode6];
  mode13.begin = '[^\\s"\'=<>`]+';
  return Mode(
    name: r'HTML, XML',
    aliases: [
      r'html',
      r'xhtml',
      r'rss',
      r'atom',
      r'xjb',
      r'xsd',
      r'xsl',
      r'plist',
      r'wsf',
      r'svg',
    ],
    caseInsensitive: true,
    unicodeRegex: true,
    contains: [
      Mode(
        scope: r'meta',
        begin: r'<![a-z]',
        end: r'>',
        relevance: 10,
        contains: [
          mode0,
          mode2,
          mode4,
          mode5,
          Mode(
            begin: r'\[',
            end: r'\]',
            contains: [
              Mode(
                scope: r'meta',
                begin: r'<![a-z]',
                end: r'>',
                contains: [mode0, mode5, mode2, mode4],
              ),
            ],
          ),
        ],
      ),
      Mode(
        scope: r'comment',
        begin: r'<!--',
        end: r'-->',
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
        relevance: 10,
      ),
      Mode(begin: r'<!\[CDATA\[', end: r'\]\]>', relevance: 10),
      mode6,
      Mode(
        scope: r'meta',
        end: r'\?>',
        variants: [
          Mode(begin: r'<\?xml', relevance: 10, contains: [mode2]),
          Mode(begin: r'<\?[a-z][a-z0-9]+'),
        ],
      ),
      Mode(
        scope: r'tag',
        begin: r'<style(?=\s|>)',
        end: r'>',
        keywords: {r'name': r'style'},
        contains: [mode7],
        starts: Mode(
          end: r'<\/style>',
          returnEnd: true,
          subLanguage: [r'css', r'xml'],
        ),
      ),
      Mode(
        scope: r'tag',
        begin: r'<script(?=\s|>)',
        end: r'>',
        keywords: {r'name': r'script'},
        contains: [mode7],
        starts: Mode(
          end: r'<\/script>',
          returnEnd: true,
          subLanguage: [r'javascript', r'handlebars', r'xml'],
        ),
      ),
      Mode(scope: r'tag', begin: r'<>|<\/>'),
      Mode(
        scope: r'tag',
        begin: r'<(?=[\p{L}_](?:[\p{L}0-9_.-]*:)?[\p{L}0-9_.-]*(?:\/>|>|\s))',
        end: r'\/?>',
        contains: [
          Mode(
            scope: r'name',
            begin: r'[\p{L}_](?:[\p{L}0-9_.-]*:)?[\p{L}0-9_.-]*',
            relevance: 0,
            starts: mode7,
          ),
        ],
      ),
      Mode(
        scope: r'tag',
        begin: r'<\/(?=[\p{L}_](?:[\p{L}0-9_.-]*:)?[\p{L}0-9_.-]*>)',
        contains: [
          Mode(
            scope: r'name',
            begin: r'[\p{L}_](?:[\p{L}0-9_.-]*:)?[\p{L}0-9_.-]*',
            relevance: 0,
          ),
          Mode(begin: r'>', relevance: 0, endsParent: true),
        ],
      ),
    ],
  );
}
