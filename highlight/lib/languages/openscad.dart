// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode openscad(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  _mode0.scope = r'number';
  _mode0.begin = r'\b\d+(\.\d+)?(e-?\d+)?';
  _mode0.relevance = 0;
  _mode1.scope = r'string';
  _mode1.begin = r'"';
  _mode1.end = r'"';
  _mode1.contains = [_mode2];
  _mode2.begin = r'\\[\s\S]';
  _mode2.relevance = 0;
  _mode3.scope = r'keyword';
  _mode3.begin = r'\$(f[asn]|t|vp[rtd]|children)';
  return Mode(
    name: r'OpenSCAD',
    aliases: [r'scad'],
    keywords: {
      r'keyword':
          r'function module include use for intersection_for if else \%',
      r'literal': r'false true PI undef',
      r'built_in':
          r'circle square polygon text sphere cube cylinder polyhedron translate rotate scale resize mirror multmatrix color offset hull minkowski union difference intersection abs sign sin cos tan acos asin atan atan2 floor round ceil ln log pow sqrt exp rands min max concat lookup str chr search version version_num norm cross parent_module echo import import_dxf dxf_linear_extrude linear_extrude rotate_extrude surface projection render children dxf_cross dxf_dim let assign',
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
      _mode0,
      Mode(
        scope: r'meta',
        keywords: {r'keyword': r'include use'},
        begin: r'include|use <',
        end: r'>',
      ),
      _mode1,
      _mode3,
      Mode(begin: r'[*!#%]', relevance: 0),
      Mode(
        scope: r'function',
        beginKeywords: r'module function',
        end: r'=|\{',
        contains: [
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            contains: [
              r'self',
              _mode0,
              _mode1,
              _mode3,
              Mode(scope: r'literal', begin: r'false|true|PI|undef'),
            ],
          ),
          Mode(scope: r'title', begin: r'[a-zA-Z_]\w*', relevance: 0),
        ],
      ),
    ],
  );
}
