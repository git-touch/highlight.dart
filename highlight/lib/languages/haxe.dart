// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode haxe(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  _mode0.begin = r'\\[\s\S]';
  _mode0.relevance = 0;
  _mode1.scope = r'title';
  _mode1.begin = r'[a-zA-Z]\w*';
  _mode1.relevance = 0;
  return Mode(
    name: r'Haxe',
    aliases: [r'hx'],
    keywords: {
      r'keyword':
          r'abstract break case cast catch continue default do dynamic else enum extern final for function here if import in inline is macro never new override package private get set public return static super switch this throw trace try typedef untyped using var while Int Float String Bool Dynamic Void Array ',
      r'built_in': r'trace this',
      r'literal': r'true false null _',
    },
    contains: [
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        contains: [
          _mode0,
          Mode(scope: r'subst', begin: r'\$\{', end: r'\}'),
          Mode(scope: r'subst', begin: r'\$', end: r'\W\}'),
        ],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [_mode0],
      ),
      Mode(
        scope: r'comment',
        begin: r'//',
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
      ),
      Mode(
        scope: r'comment',
        begin: r'/\*',
        end: r'\*/',
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
      ),
      Mode(
        scope: r'number',
        begin:
            r'(-?)(\b0[xX][a-fA-F0-9_]+|(\b\d+(\.[\d_]*)?|\.[\d_]+)(([eE][-+]?\d+)|i32|u32|i64|f64)?)',
        relevance: 0,
      ),
      Mode(scope: r'variable', begin: r'\$[a-zA-Z_$][a-zA-Z0-9_$]*'),
      Mode(scope: r'meta', begin: r'@:?', end: r'\(|$', excludeEnd: true),
      Mode(
        scope: r'meta',
        begin: r'#',
        end: r'$',
        keywords: {r'keyword': r'if else elseif end error'},
      ),
      Mode(
        scope: r'type',
        begin: r':[ \t]*',
        end: r'[^A-Za-z0-9_ \t\->]',
        excludeBegin: true,
        excludeEnd: true,
        relevance: 0,
      ),
      Mode(
        scope: r'type',
        begin: r':[ \t]*',
        end: r'\W',
        excludeBegin: true,
        excludeEnd: true,
      ),
      Mode(
        scope: r'type',
        beginKeywords: r'new',
        end: r'\W',
        excludeBegin: true,
        excludeEnd: true,
      ),
      Mode(
        scope: r'title.class',
        beginKeywords: r'enum',
        end: r'\{',
        contains: [_mode1],
      ),
      Mode(
        scope: r'title.class',
        begin: r'\babstract\b(?=\s*[a-zA-Z]\w*\s*\()',
        end: r'[\{$]',
        contains: [
          Mode(
            scope: r'type',
            begin: r'\(',
            end: r'\)',
            excludeBegin: true,
            excludeEnd: true,
          ),
          Mode(
            scope: r'type',
            begin: r'from +',
            end: r'\W',
            excludeBegin: true,
            excludeEnd: true,
          ),
          Mode(
            scope: r'type',
            begin: r'to +',
            end: r'\W',
            excludeBegin: true,
            excludeEnd: true,
          ),
          _mode1,
        ],
        keywords: {r'keyword': r'abstract from to'},
      ),
      Mode(
        scope: r'title.class',
        begin: r'\b(class|interface) +',
        end: r'[\{$]',
        excludeEnd: true,
        keywords: r'class interface',
        contains: [
          Mode(
            scope: r'keyword',
            begin: r'\b(extends|implements) +',
            keywords: r'extends implements',
            contains: [
              Mode(scope: r'type', begin: r'[a-zA-Z]\w*', relevance: 0),
            ],
          ),
          _mode1,
        ],
      ),
      Mode(
        scope: r'title.function',
        beginKeywords: r'function',
        end: r'\(',
        excludeEnd: true,
        illegal: r'\S',
        contains: [_mode1],
      ),
    ],
    illegal: r'<\/',
  );
}
