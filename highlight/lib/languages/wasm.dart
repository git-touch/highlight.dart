// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `wasm`.
Mode wasm(Highlight hljs) {
  return Mode(
    name: r'WebAssembly',
    keywords: {
      r'$pattern': r'[\w.]+',
      r'keyword': [
        r'anyfunc',
        r'block',
        r'br',
        r'br_if',
        r'br_table',
        r'call',
        r'call_indirect',
        r'data',
        r'drop',
        r'elem',
        r'else',
        r'end',
        r'export',
        r'func',
        r'global.get',
        r'global.set',
        r'local.get',
        r'local.set',
        r'local.tee',
        r'get_global',
        r'get_local',
        r'global',
        r'if',
        r'import',
        r'local',
        r'loop',
        r'memory',
        r'memory.grow',
        r'memory.size',
        r'module',
        r'mut',
        r'nop',
        r'offset',
        r'param',
        r'result',
        r'return',
        r'select',
        r'set_global',
        r'set_local',
        r'start',
        r'table',
        r'tee_local',
        r'then',
        r'type',
        r'unreachable',
      ],
    },
    contains: [
      Mode(
        scope: r'comment',
        begin: r';;',
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
        begin: r'\(;',
        end: r';\)',
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
          r'self',
        ],
      ),
      Mode(
        match: [r'(?:offset|align)', r'\s*', r'='],
        scope: {1: r'keyword', 3: r'operator'},
      ),
      Mode(scope: r'variable', begin: r'\$[\w_]+'),
      Mode(match: r'(\((?!;)|\))+', scope: r'punctuation', relevance: 0),
      Mode(
        begin: [r'(?:func|call|call_indirect)', r'\s+', r'\$[^\s)]+'],
        scope: {1: r'keyword', 3: r'title.function'},
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(match: r'(i32|i64|f32|f64)(?!\.)', scope: r'type'),
      Mode(
        scope: r'keyword',
        match:
            r'\b(f32|f64|i32|i64)(?:\.(?:abs|add|and|ceil|clz|const|convert_[su]\/i(?:32|64)|copysign|ctz|demote\/f64|div(?:_[su])?|eqz?|extend_[su]\/i32|floor|ge(?:_[su])?|gt(?:_[su])?|le(?:_[su])?|load(?:(?:8|16|32)_[su])?|lt(?:_[su])?|max|min|mul|nearest|neg?|or|popcnt|promote\/f32|reinterpret\/[fi](?:32|64)|rem_[su]|rot[lr]|shl|shr_[su]|store(?:8|16|32)?|sqrt|sub|trunc(?:_[su]\/f(?:32|64))?|wrap\/i64|xor))\b',
      ),
      Mode(
        scope: r'number',
        relevance: 0,
        match:
            r'[+-]?\b(?:\d(?:_?\d)*(?:\.\d(?:_?\d)*)?(?:[eE][+-]?\d(?:_?\d)*)?|0x[\da-fA-F](?:_?[\da-fA-F])*(?:\.[\da-fA-F](?:_?[\da-fA-D])*)?(?:[pP][+-]?\d(?:_?\d)*)?)\b|\binf\b|\bnan(?::0x[\da-fA-F](?:_?[\da-fA-D])*)?\b',
      ),
    ],
  );
}
