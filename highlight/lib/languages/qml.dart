// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `qml`.
Mode qml(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  mode0.begin = r'\\[\s\S]';
  mode0.relevance = 0;
  mode1.scope = r'comment';
  mode1.begin = r'//';
  mode1.end = r'$';
  mode1.contains = [mode2, mode3];
  mode2.scope = r'doctag';
  mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode2.excludeBegin = true;
  mode2.relevance = 0;
  mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode4.scope = r'comment';
  mode4.begin = r'/\*';
  mode4.end = r'\*/';
  mode4.contains = [mode5, mode6];
  mode5.scope = r'doctag';
  mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode5.excludeBegin = true;
  mode5.relevance = 0;
  mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'QML',
    aliases: [r'qt'],
    caseInsensitive: false,
    keywords: {
      r'keyword':
          r'in of on if for while finally var new function do return void else break catch instanceof with throw case default try this switch continue typeof delete let yield const export super debugger as async await import',
      r'literal': r'true false null undefined NaN Infinity',
      r'built_in':
          r'eval isFinite isNaN parseFloat parseInt decodeURI decodeURIComponent encodeURI encodeURIComponent escape unescape Object Function Boolean Error EvalError InternalError RangeError ReferenceError StopIteration SyntaxError TypeError URIError Number Math Date String RegExp Array Float32Array Float64Array Int16Array Int32Array Int8Array Uint16Array Uint32Array Uint8Array Uint8ClampedArray ArrayBuffer DataView JSON Intl arguments require module console window document Symbol Set Map WeakSet WeakMap Proxy Reflect Behavior bool color coordinate date double enumeration font geocircle georectangle geoshape int list matrix4x4 parent point quaternion real rect size string url variant vector2d vector3d vector4d Promise',
    },
    contains: [
      Mode(scope: r'meta', begin: '^\\s*[\'"]use (strict|asm)[\'"]'),
      Mode(
        scope: r'string',
        begin: r"'",
        end: r"'",
        illegal: r'\n',
        contains: [mode0],
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [mode0],
      ),
      Mode(
        scope: r'string',
        begin: r'`',
        end: r'`',
        contains: [
          mode0,
          Mode(scope: r'subst', begin: r'\$\{', end: r'\}'),
        ],
      ),
      mode1,
      mode4,
      Mode(
        scope: r'number',
        variants: [
          Mode(begin: r'\b(0[bB][01]+)'),
          Mode(begin: r'\b(0[oO][0-7]+)'),
          Mode(
            begin:
                r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
          ),
        ],
        relevance: 0,
      ),
      Mode(
        begin:
            r'(!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~|\b(case|return|throw)\b)\s*',
        keywords: r'return throw case',
        contains: [
          mode1,
          mode4,
          Mode(
            scope: r'regexp',
            begin: r'\/(?=[^/\n]*\/)',
            end: r'\/[gimuy]*',
            contains: [
              mode0,
              Mode(begin: r'\[', end: r'\]', relevance: 0, contains: [mode0]),
            ],
          ),
          Mode(
            begin: r'<',
            end: r'>\s*[);\]]',
            relevance: 0,
            subLanguage: r'xml',
          ),
        ],
        relevance: 0,
      ),
      Mode(
        scope: r'keyword',
        begin: r'\bsignal\b',
        starts: Mode(
          scope: r'string',
          end: r'(\(|:|=|;|,|//|/\*|$)',
          returnEnd: true,
        ),
      ),
      Mode(
        scope: r'keyword',
        begin: r'\bproperty\b',
        starts: Mode(
          scope: r'string',
          end: r'(:|=|;|,|//|/\*|$)',
          returnEnd: true,
        ),
      ),
      Mode(
        scope: r'function',
        beginKeywords: r'function',
        end: r'\{',
        excludeEnd: true,
        contains: [
          Mode(
            scope: r'title',
            begin: r'[A-Za-z$_][0-9A-Za-z$_]*',
            relevance: 0,
          ),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            excludeBegin: true,
            excludeEnd: true,
            contains: [mode1, mode4],
          ),
        ],
        illegal: r'\[|%',
      ),
      Mode(begin: r'\.[a-zA-Z]\w*', relevance: 0),
      Mode(
        scope: r'attribute',
        begin: r'\bid\s*:',
        starts: Mode(
          scope: r'string',
          end: r'[a-zA-Z_][a-zA-Z0-9\._]*',
          returnEnd: false,
        ),
      ),
      Mode(
        begin: r'[a-zA-Z_][a-zA-Z0-9\._]*\s*:',
        returnBegin: true,
        contains: [
          Mode(
            scope: r'attribute',
            begin: r'[a-zA-Z_][a-zA-Z0-9\._]*',
            end: r'\s*:',
            excludeEnd: true,
            relevance: 0,
          ),
        ],
        relevance: 0,
      ),
      Mode(
        begin: r'[a-zA-Z_][a-zA-Z0-9\._]*\s*\{',
        end: r'\{',
        returnBegin: true,
        relevance: 0,
        contains: [
          Mode(
            scope: r'title',
            begin: r'[a-zA-Z_][a-zA-Z0-9\._]*',
            relevance: 0,
          ),
        ],
      ),
    ],
    illegal: r'#',
  );
}
