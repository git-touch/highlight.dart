// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `zephir`.
Mode zephir(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  mode0.begin = r'\\[\s\S]';
  mode0.relevance = 0;
  mode1.scope = r'title';
  mode1.begin = r'[a-zA-Z_]\w*';
  mode1.relevance = 0;
  mode2.scope = r'string';
  mode2.contains = [mode0];
  mode2.variants = [mode3, mode4];
  mode3.scope = r'string';
  mode3.begin = r"'";
  mode3.end = r"'";
  mode3.contains = [mode0];
  mode4.scope = r'string';
  mode4.begin = r'"';
  mode4.end = r'"';
  mode4.contains = [mode0];
  mode5.variants = [mode6, mode7];
  mode6.scope = r'number';
  mode6.begin = r'\b(0b[01]+)';
  mode6.relevance = 0;
  mode7.scope = r'number';
  mode7.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode7.relevance = 0;
  return Mode(
    name: r'Zephir',
    aliases: [r'zep'],
    keywords:
        r'namespace class interface use extends function return abstract final public protected private static deprecated throw try catch Exception echo empty isset instanceof unset let var new const self require if else elseif switch case default do while loop for continue break likely unlikely __LINE__ __FILE__ __DIR__ __FUNCTION__ __CLASS__ __TRAIT__ __METHOD__ __NAMESPACE__ array boolean float double integer object resource string char long unsigned bool int uint ulong uchar true false null undefined',
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
        begin: r'\/\*',
        end: r'\*\/',
        contains: [
          Mode(scope: r'doctag', begin: r'@[A-Za-z]+'),
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
        scope: r'string',
        begin: '<<<[\'"]?\\w+[\'"]?\$',
        end: r'^\w+;',
        contains: [mode0],
      ),
      Mode(begin: r'(::|->)+[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*'),
      Mode(
        scope: r'function',
        beginKeywords: r'function fn',
        end: r'[;{]',
        excludeEnd: true,
        illegal: r'\$|\[|%',
        contains: [
          mode1,
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            keywords:
                r'namespace class interface use extends function return abstract final public protected private static deprecated throw try catch Exception echo empty isset instanceof unset let var new const self require if else elseif switch case default do while loop for continue break likely unlikely __LINE__ __FILE__ __DIR__ __FUNCTION__ __CLASS__ __TRAIT__ __METHOD__ __NAMESPACE__ array boolean float double integer object resource string char long unsigned bool int uint ulong uchar true false null undefined',
            contains: [
              r'self',
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
              mode2,
              mode5,
            ],
          ),
        ],
      ),
      Mode(
        scope: r'class',
        beginKeywords: r'class interface',
        end: r'\{',
        excludeEnd: true,
        illegal: r'[:($"]',
        contains: [
          Mode(beginKeywords: r'extends implements'),
          mode1,
        ],
      ),
      Mode(
        beginKeywords: r'namespace',
        end: r';',
        illegal: r"[.']",
        contains: [mode1],
      ),
      Mode(beginKeywords: r'use', end: r';', contains: [mode1]),
      Mode(begin: r'=>'),
      mode2,
      mode5,
    ],
  );
}
