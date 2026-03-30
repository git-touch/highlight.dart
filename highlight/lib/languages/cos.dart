// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `cos`.
Mode cos(Highlight hljs) {
  return Mode(
    name: r'Caché Object Script',
    caseInsensitive: true,
    aliases: [r'cls'],
    keywords:
        r'property parameter class classmethod clientmethod extends as break catch close continue do d|0 else elseif for goto halt hang h|0 if job j|0 kill k|0 lock l|0 merge new open quit q|0 read r|0 return set s|0 tcommit throw trollback try tstart use view while write w|0 xecute x|0 zkill znspace zn ztrap zwrite zw zzdump zzwrite print zbreak zinsert zload zprint zremove zsave zzprint mv mvcall mvcrt mvdim mvprint zquit zsync ascii',
    contains: [
      Mode(scope: r'number', begin: r'\b(\d+(\.\d*)?|\.\d+)', relevance: 0),
      Mode(
        scope: r'string',
        variants: [
          Mode(
            begin: r'"',
            end: r'"',
            contains: [Mode(begin: r'""', relevance: 0)],
          ),
        ],
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
      Mode(scope: r'comment', begin: r';', end: r'$', relevance: 0),
      Mode(scope: r'built_in', begin: r'(?:\$\$?|\.\.)\^?[a-zA-Z]+'),
      Mode(scope: r'built_in', begin: r'\$\$\$[a-zA-Z]+'),
      Mode(scope: r'built_in', begin: r'%[a-z]+(?:\.[a-z]+)*'),
      Mode(scope: r'symbol', begin: r'\^%?[a-zA-Z][\w]*'),
      Mode(scope: r'keyword', begin: r'##class|##super|#define|#dim'),
      Mode(
        begin: r'&sql\(',
        end: r'\)',
        excludeBegin: true,
        excludeEnd: true,
        subLanguage: r'sql',
      ),
      Mode(
        begin: r'&(js|jscript|javascript)<',
        end: r'>',
        excludeBegin: true,
        excludeEnd: true,
        subLanguage: r'javascript',
      ),
      Mode(begin: r'&html<\s*<', end: r'>\s*>', subLanguage: r'xml'),
    ],
  );
}
