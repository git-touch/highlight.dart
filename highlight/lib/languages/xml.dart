// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode xml(Highlight hljs) {
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
  _mode0.begin = r'\s';
  _mode0.contains = [
    _mode1,
  ];
  _mode1.scope = r'keyword';
  _mode1.begin = r'#?[a-z_][a-z1-9_-]+';
  _mode1.illegal = r'\n';
  _mode2.scope = r'string';
  _mode2.begin = r'"';
  _mode2.end = r'"';
  _mode2.illegal = r'\n';
  _mode2.contains = [
    _mode3,
  ];
  _mode3.begin = r'\\[\s\S]';
  _mode3.relevance = 0;
  _mode4.scope = r'string';
  _mode4.begin = r"'";
  _mode4.end = r"'";
  _mode4.illegal = r'\n';
  _mode4.contains = [
    _mode3,
  ];
  _mode5.begin = r'\(';
  _mode5.contains = [
    _mode1,
  ];
  _mode5.end = r'\)';
  _mode6.scope = r'symbol';
  _mode6.begin = r'&[a-z]+;|&#[0-9]+;|&#x[a-f0-9]+;';
  _mode7.endsWithParent = true;
  _mode7.illegal = r'<';
  _mode7.relevance = 0;
  _mode7.contains = [
    _mode8,
    _mode9,
  ];
  _mode8.scope = r'attr';
  _mode8.begin = r'[\p{L}0-9._:-]+';
  _mode8.relevance = 0;
  _mode9.begin = r'=\s*';
  _mode9.relevance = 0;
  _mode9.contains = [
    _mode10,
  ];
  _mode10.scope = r'string';
  _mode10.endsParent = true;
  _mode10.variants = [
    _mode11,
    _mode12,
    _mode13,
  ];
  _mode11.begin = r'"';
  _mode11.end = r'"';
  _mode11.contains = [
    _mode6,
  ];
  _mode12.begin = r"'";
  _mode12.end = r"'";
  _mode12.contains = [
    _mode6,
  ];
  _mode13.begin = '[^\\s"\'=<>`]+';
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
          _mode0,
          _mode2,
          _mode4,
          _mode5,
          Mode(
            begin: r'\[',
            end: r'\]',
            contains: [
              Mode(
                scope: r'meta',
                begin: r'<![a-z]',
                end: r'>',
                contains: [
                  _mode0,
                  _mode5,
                  _mode2,
                  _mode4,
                ],
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
      Mode(
        begin: r'<!\[CDATA\[',
        end: r'\]\]>',
        relevance: 10,
      ),
      _mode6,
      Mode(
        scope: r'meta',
        end: r'\?>',
        variants: [
          Mode(
            begin: r'<\?xml',
            relevance: 10,
            contains: [
              _mode2,
            ],
          ),
          Mode(
            begin: r'<\?[a-z][a-z0-9]+',
          ),
        ],
      ),
      Mode(
        scope: r'tag',
        begin: r'<style(?=\s|>)',
        end: r'>',
        keywords: {
          r'name': r'style',
        },
        contains: [
          _mode7,
        ],
        starts: Mode(
          end: r'<\/style>',
          returnEnd: true,
          subLanguage: [
            r'css',
            r'xml',
          ],
        ),
      ),
      Mode(
        scope: r'tag',
        begin: r'<script(?=\s|>)',
        end: r'>',
        keywords: {
          r'name': r'script',
        },
        contains: [
          _mode7,
        ],
        starts: Mode(
          end: r'<\/script>',
          returnEnd: true,
          subLanguage: [
            r'javascript',
            r'handlebars',
            r'xml',
          ],
        ),
      ),
      Mode(
        scope: r'tag',
        begin: r'<>|<\/>',
      ),
      Mode(
        scope: r'tag',
        begin: r'<(?=[\p{L}_](?:[\p{L}0-9_.-]*:)?[\p{L}0-9_.-]*(?:\/>|>|\s))',
        end: r'\/?>',
        contains: [
          Mode(
            scope: r'name',
            begin: r'[\p{L}_](?:[\p{L}0-9_.-]*:)?[\p{L}0-9_.-]*',
            relevance: 0,
            starts: _mode7,
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
          Mode(
            begin: r'>',
            relevance: 0,
            endsParent: true,
          ),
        ],
      ),
    ],
  );
}
