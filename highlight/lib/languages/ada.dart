// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode ada(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'--';
  _mode0.end = r'$';
  _mode0.contains = [
    _mode1,
    _mode2,
  ];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.begin = r'\s+:\s+';
  _mode3.end = r'\s*(:=|;|\)|=>|$)';
  _mode3.illegal = '[]\\{\\}%#\'"';
  _mode3.contains = [
    _mode4,
    _mode5,
    _mode6,
  ];
  _mode4.beginKeywords = r'loop for declare others';
  _mode4.endsParent = true;
  _mode5.scope = r'keyword';
  _mode5.beginKeywords =
      r'not null constant access function procedure in out aliased exception';
  _mode6.scope = r'type';
  _mode6.begin = r'[A-Za-z](_?[A-Za-z0-9.])*';
  _mode6.endsParent = true;
  _mode6.relevance = 0;
  return Mode(
    name: r'Ada',
    caseInsensitive: true,
    keywords: {
      r'keyword': [
        r'abort',
        r'else',
        r'new',
        r'return',
        r'abs',
        r'elsif',
        r'not',
        r'reverse',
        r'abstract',
        r'end',
        r'accept',
        r'entry',
        r'select',
        r'access',
        r'exception',
        r'of',
        r'separate',
        r'aliased',
        r'exit',
        r'or',
        r'some',
        r'all',
        r'others',
        r'subtype',
        r'and',
        r'for',
        r'out',
        r'synchronized',
        r'array',
        r'function',
        r'overriding',
        r'at',
        r'tagged',
        r'generic',
        r'package',
        r'task',
        r'begin',
        r'goto',
        r'pragma',
        r'terminate',
        r'body',
        r'private',
        r'then',
        r'if',
        r'procedure',
        r'type',
        r'case',
        r'in',
        r'protected',
        r'constant',
        r'interface',
        r'is',
        r'raise',
        r'use',
        r'declare',
        r'range',
        r'delay',
        r'limited',
        r'record',
        r'when',
        r'delta',
        r'loop',
        r'rem',
        r'while',
        r'digits',
        r'renames',
        r'with',
        r'do',
        r'mod',
        r'requeue',
        r'xor',
      ],
      r'literal': [
        r'True',
        r'False',
      ],
    },
    contains: [
      _mode0,
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        contains: [
          Mode(
            begin: r'""',
            relevance: 0,
          ),
        ],
      ),
      Mode(
        scope: r'string',
        begin: r"'.'",
      ),
      Mode(
        scope: r'number',
        begin:
            r'\b(\d(_|\d)*#\w+(\.\w+)?#([eE][-+]?\d(_|\d)*)?|\d(_|\d)*(\.\d(_|\d)*)?([eE][-+]?\d(_|\d)*)?)',
        relevance: 0,
      ),
      Mode(
        scope: r'symbol',
        begin: r"'[A-Za-z](_?[A-Za-z0-9.])*",
      ),
      Mode(
        scope: r'title',
        begin: r'(\bwith\s+)?(\bprivate\s+)?\bpackage\s+(\bbody\s+)?',
        end: r'(is|$)',
        keywords: r'package body',
        excludeBegin: true,
        excludeEnd: true,
        illegal: '[]\\{\\}%#\'"',
      ),
      Mode(
        begin: r'(\b(with|overriding)\s+)?\b(function|procedure)\s+',
        end: r'(\bis|\bwith|\brenames|\)\s*;)',
        keywords: r'overriding function procedure with is renames return',
        returnBegin: true,
        contains: [
          _mode0,
          Mode(
            scope: r'title',
            begin: r'(\bwith\s+)?\b(function|procedure)\s+',
            end: r'(\(|\s+|$)',
            excludeBegin: true,
            excludeEnd: true,
            illegal: '[]\\{\\}%#\'"',
          ),
          _mode3,
          Mode(
            scope: r'type',
            begin: r'\breturn\s+',
            end: r'(\s+|;|$)',
            keywords: r'return',
            excludeBegin: true,
            excludeEnd: true,
            endsParent: true,
            illegal: '[]\\{\\}%#\'"',
          ),
        ],
      ),
      Mode(
        scope: r'type',
        begin: r'\b(sub)?type\s+',
        end: r'\s+',
        keywords: r'type',
        excludeBegin: true,
        illegal: '[]\\{\\}%#\'"',
      ),
      _mode3,
    ],
  );
}
