// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode zephir(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  _mode0.begin = r'\\[\s\S]';
  _mode0.relevance = 0;
  _mode1.scope = r'title';
  _mode1.begin = r'[a-zA-Z_]\w*';
  _mode1.relevance = 0;
  _mode2.scope = r'string';
  _mode2.contains = [
    _mode0,
  ];
  _mode2.variants = [
    _mode3,
    _mode4,
  ];
  _mode3.scope = r'string';
  _mode3.begin = r"'";
  _mode3.end = r"'";
  _mode3.contains = [
    _mode0,
  ];
  _mode4.scope = r'string';
  _mode4.begin = r'"';
  _mode4.end = r'"';
  _mode4.contains = [
    _mode0,
  ];
  _mode5.variants = [
    _mode6,
    _mode7,
  ];
  _mode6.scope = r'number';
  _mode6.begin = r'\b(0b[01]+)';
  _mode6.relevance = 0;
  _mode7.scope = r'number';
  _mode7.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode7.relevance = 0;
  return Mode(
    name: r'Zephir',
    aliases: [
      r'zep',
    ],
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
          Mode(
            scope: r'doctag',
            begin: r'@[A-Za-z]+',
          ),
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
        contains: [
          _mode0,
        ],
      ),
      Mode(
        begin: r'(::|->)+[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*',
      ),
      Mode(
        scope: r'function',
        beginKeywords: r'function fn',
        end: r'[;{]',
        excludeEnd: true,
        illegal: r'\$|\[|%',
        contains: [
          _mode1,
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
              _mode2,
              _mode5,
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
          Mode(
            beginKeywords: r'extends implements',
          ),
          _mode1,
        ],
      ),
      Mode(
        beginKeywords: r'namespace',
        end: r';',
        illegal: r"[.']",
        contains: [
          _mode1,
        ],
      ),
      Mode(
        beginKeywords: r'use',
        end: r';',
        contains: [
          _mode1,
        ],
      ),
      Mode(
        begin: r'=>',
      ),
      _mode2,
      _mode5,
    ],
  );
}
