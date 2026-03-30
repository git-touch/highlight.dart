// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `asciidoc`.
Mode asciidoc(Highlight hljs) {
  return Mode(
    name: r'AsciiDoc',
    aliases: [r'adoc'],
    contains: [
      Mode(
        scope: r'comment',
        begin: r'^/{4,}\n',
        end: r'\n/{4,}$',
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
        scope: r'comment',
        begin: r'^//',
        end: r'$',
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
        relevance: 0,
      ),
      Mode(scope: r'title', begin: r'^\.\w.*$'),
      Mode(begin: r'^[=\*]{4,}\n', end: r'\n^[=\*]{4,}$', relevance: 10),
      Mode(
        scope: r'section',
        relevance: 10,
        variants: [
          Mode(begin: r'^(={1,6})[ 	].+?([ 	]\1)?$'),
          Mode(begin: r'^[^\[\]\n]+?\n[=\-~\^\+]{2,}$'),
        ],
      ),
      Mode(
        scope: r'meta',
        begin: r'^:.+?:',
        end: r'\s',
        excludeEnd: true,
        relevance: 10,
      ),
      Mode(scope: r'meta', begin: r'^\[.+?\]$', relevance: 0),
      Mode(
        scope: r'quote',
        begin: r'^_{4,}\n',
        end: r'\n_{4,}$',
        relevance: 10,
      ),
      Mode(
        scope: r'code',
        begin: r'^[\-\.]{4,}\n',
        end: r'\n[\-\.]{4,}$',
        relevance: 10,
      ),
      Mode(
        begin: r'^\+{4,}\n',
        end: r'\n\+{4,}$',
        contains: [
          Mode(begin: r'<', end: r'>', subLanguage: r'xml', relevance: 0),
        ],
        relevance: 10,
      ),
      Mode(scope: r'bullet', begin: r'^(\*+|-+|\.+|[^\n]+?::)\s+'),
      Mode(
        scope: r'symbol',
        begin: r'^(NOTE|TIP|IMPORTANT|WARNING|CAUTION):\s+',
        relevance: 10,
      ),
      Mode(begin: r'\\[*_`]'),
      Mode(begin: r'\\\\\*{2}[^\n]*?\*{2}'),
      Mode(begin: r'\\\\_{2}[^\n]*_{2}'),
      Mode(begin: r'\\\\`{2}[^\n]*`{2}'),
      Mode(begin: r'[:;}][*_`](?![*_`])'),
      Mode(scope: r'strong', begin: r'\*{2}([^\n]+?)\*{2}'),
      Mode(
        scope: r'strong',
        begin:
            r'\*\*((\*(?!\*)|\\[^\n]|[^*\n\\])+\n)+(\*(?!\*)|\\[^\n]|[^*\n\\])*\*\*',
        relevance: 0,
      ),
      Mode(scope: r'strong', begin: r'\B\*(\S|\S[^\n]*?\S)\*(?!\w)'),
      Mode(scope: r'strong', begin: r'\*[^\s]([^\n]+\n)+([^\n]+)\*'),
      Mode(scope: r'emphasis', begin: r'_{2}([^\n]+?)_{2}'),
      Mode(
        scope: r'emphasis',
        begin: r'__((_(?!_)|\\[^\n]|[^_\n\\])+\n)+(_(?!_)|\\[^\n]|[^_\n\\])*__',
        relevance: 0,
      ),
      Mode(scope: r'emphasis', begin: r'\b_(\S|\S[^\n]*?\S)_(?!\w)'),
      Mode(scope: r'emphasis', begin: r'_[^\s]([^\n]+\n)+([^\n]+)_'),
      Mode(
        scope: r'emphasis',
        begin: r"\B'(?!['\s])",
        end: r"(\n{2}|')",
        contains: [Mode(begin: r"\\'\w", relevance: 0)],
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        variants: [
          Mode(begin: r"``.+?''"),
          Mode(begin: r"`.+?'"),
        ],
      ),
      Mode(scope: r'code', begin: r'`{2}', end: r'(\n{2}|`{2})'),
      Mode(scope: r'code', begin: r'(`.+?`|\+.+?\+)', relevance: 0),
      Mode(scope: r'code', begin: r'^[ \t]', end: r'$', relevance: 0),
      Mode(begin: r"^'{3,}[ \t]*$", relevance: 10),
      Mode(
        begin: r'(link:)?(http|https|ftp|file|irc|image:?):\S+?\[[^[]*?\]',
        returnBegin: true,
        contains: [
          Mode(begin: r'(link|image:?):', relevance: 0),
          Mode(scope: r'link', begin: r'\w', end: r'[^\[]+', relevance: 0),
          Mode(
            scope: r'string',
            begin: r'\[',
            end: r'\]',
            excludeBegin: true,
            excludeEnd: true,
            relevance: 0,
          ),
        ],
        relevance: 10,
      ),
    ],
  );
}
