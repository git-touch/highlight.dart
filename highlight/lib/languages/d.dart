// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `d`.
Mode d(Highlight hljs) {
  return Mode(
    name: r'D',
    keywords: {
      r'$pattern': r'[a-zA-Z_]\w*',
      r'keyword':
          r'abstract alias align asm assert auto body break byte case cast catch class const continue debug default delete deprecated do else enum export extern final finally for foreach foreach_reverse|10 goto if immutable import in inout int interface invariant is lazy macro mixin module new nothrow out override package pragma private protected public pure ref return scope shared static struct super switch synchronized template this throw try typedef typeid typeof union unittest version void volatile while with __FILE__ __LINE__ __gshared|10 __thread __traits __DATE__ __EOF__ __TIME__ __TIMESTAMP__ __VENDOR__ __VERSION__',
      r'built_in':
          r'bool cdouble cent cfloat char creal dchar delegate double dstring float function idouble ifloat ireal long real short string ubyte ucent uint ulong ushort wchar wstring',
      r'literal': r'false null true',
    },
    contains: [
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
        scope: r'comment',
        begin: r'\/\+',
        end: r'\+\/',
        contains: [
          r'self',
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
        scope: r'string',
        begin: r'x"[\da-fA-F\s\n\r]*"[cwd]?',
        relevance: 10,
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        contains: [
          Mode(
            begin:
                '\\\\([\'"\\?\\\\abfnrtv]|u[\\dA-Fa-f]{4}|[0-7]{1,3}|x[\\dA-Fa-f]{2}|U[\\dA-Fa-f]{8})|&[a-zA-Z\\d]{2,};',
            relevance: 0,
          ),
        ],
        end: r'"[cwd]?',
      ),
      Mode(scope: r'string', begin: r'[rq]"', end: r'"[cwd]?', relevance: 5),
      Mode(scope: r'string', begin: r'`', end: r'`[cwd]?'),
      Mode(scope: r'string', begin: r'q"\{', end: r'\}"'),
      Mode(
        scope: r'number',
        begin:
            r'\b(((0[xX](([\da-fA-F][\da-fA-F_]*|_[\da-fA-F][\da-fA-F_]*)\.([\da-fA-F][\da-fA-F_]*|_[\da-fA-F][\da-fA-F_]*)|\.?([\da-fA-F][\da-fA-F_]*|_[\da-fA-F][\da-fA-F_]*))[pP][+-]?(0|[1-9][\d_]*|\d[\d_]*|[\d_]+?\d))|((0|[1-9][\d_]*|\d[\d_]*|[\d_]+?\d)(\.\d*|([eE][+-]?(0|[1-9][\d_]*|\d[\d_]*|[\d_]+?\d)))|\d+\.(0|[1-9][\d_]*|\d[\d_]*|[\d_]+?\d)|\.(0|[1-9][\d_]*)([eE][+-]?(0|[1-9][\d_]*|\d[\d_]*|[\d_]+?\d))?))([fF]|L|i|[fF]i|Li)?|((0|[1-9][\d_]*)|0[bB][01_]+|0[xX]([\da-fA-F][\da-fA-F_]*|_[\da-fA-F][\da-fA-F_]*))(i|[fF]i|Li))',
        relevance: 0,
      ),
      Mode(
        scope: r'number',
        begin:
            r'\b((0|[1-9][\d_]*)|0[bB][01_]+|0[xX]([\da-fA-F][\da-fA-F_]*|_[\da-fA-F][\da-fA-F_]*))(L|u|U|Lu|LU|uL|UL)?',
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        begin:
            "'(\\\\(['\"\\?\\\\abfnrtv]|u[\\dA-Fa-f]{4}|[0-7]{1,3}|x[\\dA-Fa-f]{2}|U[\\dA-Fa-f]{8})|&[a-zA-Z\\d]{2,};|.)",
        end: r"'",
        illegal: r'.',
      ),
      Mode(scope: r'meta', begin: r'^#!', end: r'$', relevance: 5),
      Mode(scope: r'meta', begin: r'#(line)', end: r'$', relevance: 5),
      Mode(scope: r'keyword', begin: r'@[a-zA-Z_][a-zA-Z_\d]*'),
    ],
  );
}
