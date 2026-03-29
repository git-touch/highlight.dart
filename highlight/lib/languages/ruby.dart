// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode ruby(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  final Mode _mode19 = Mode();
  final Mode _mode20 = Mode();
  final Mode _mode21 = Mode();
  final Mode _mode22 = Mode();
  final Mode _mode23 = Mode();
  final Mode _mode24 = Mode();
  final Mode _mode25 = Mode();
  final Mode _mode26 = Mode();
  final Mode _mode27 = Mode();
  final Mode _mode28 = Mode();
  final Mode _mode29 = Mode();
  final Mode _mode30 = Mode();
  final Mode _mode31 = Mode();
  final Mode _mode32 = Mode();
  final Mode _mode33 = Mode();
  final Mode _mode34 = Mode();
  final Mode _mode35 = Mode();
  final Mode _mode36 = Mode();
  final Mode _mode37 = Mode();
  final Mode _mode38 = Mode();
  final Mode _mode39 = Mode();
  final Mode _mode40 = Mode();
  final Mode _mode41 = Mode();
  final Mode _mode42 = Mode();
  final Mode _mode43 = Mode();
  final Mode _mode44 = Mode();
  final Mode _mode45 = Mode();
  final Mode _mode46 = Mode();
  final Mode _mode47 = Mode();
  final Mode _mode48 = Mode();
  final Mode _mode49 = Mode();
  final Mode _mode50 = Mode();
  final Mode _mode51 = Mode();
  final Mode _mode52 = Mode();
  final Mode _mode53 = Mode();
  final Mode _mode54 = Mode();
  final Mode _mode55 = Mode();
  final Mode _mode56 = Mode();
  final Mode _mode57 = Mode();
  final Mode _mode58 = Mode();
  final Mode _mode59 = Mode();
  final Mode _mode60 = Mode();
  final Mode _mode61 = Mode();
  final Mode _mode62 = Mode();
  final Mode _mode63 = Mode();
  _mode0.scope = r'string';
  _mode0.contains = [_mode1, _mode2];
  _mode0.variants = [
    _mode45,
    _mode46,
    _mode47,
    _mode48,
    _mode49,
    _mode50,
    _mode51,
    _mode52,
    _mode53,
    _mode54,
    _mode55,
    _mode56,
    _mode57,
    _mode58,
    _mode59,
    _mode60,
    _mode61,
    _mode62,
  ];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'subst';
  _mode2.begin = r'#\{';
  _mode2.end = r'\}';
  _mode2.keywords = {
    r'variable.constant': [r'__FILE__', r'__LINE__', r'__ENCODING__'],
    r'variable.language': [r'self', r'super'],
    r'keyword': [
      r'alias',
      r'and',
      r'begin',
      r'BEGIN',
      r'break',
      r'case',
      r'class',
      r'defined',
      r'do',
      r'else',
      r'elsif',
      r'end',
      r'END',
      r'ensure',
      r'for',
      r'if',
      r'in',
      r'module',
      r'next',
      r'not',
      r'or',
      r'redo',
      r'require',
      r'rescue',
      r'retry',
      r'return',
      r'then',
      r'undef',
      r'unless',
      r'until',
      r'when',
      r'while',
      r'yield',
      r'include',
      r'extend',
      r'prepend',
      r'public',
      r'private',
      r'protected',
      r'raise',
      r'throw',
    ],
    r'built_in': [
      r'proc',
      r'lambda',
      r'attr_accessor',
      r'attr_reader',
      r'attr_writer',
      r'define_method',
      r'private_constant',
      r'module_function',
    ],
    r'literal': [r'true', r'false', r'nil'],
  };
  _mode2.contains = [
    _mode0,
    _mode3,
    _mode6,
    _mode7,
    _mode8,
    _mode9,
    _mode10,
    _mode14,
    _mode15,
    _mode16,
    _mode18,
    _mode25,
    _mode26,
    _mode27,
    _mode34,
    _mode35,
    _mode39,
    _mode42,
  ];
  _mode3.variants = [_mode4, _mode5];
  _mode3.scope = {2: r'title.class', 4: r'title.class.inherited'};
  _mode3.keywords = {
    r'variable.constant': [r'__FILE__', r'__LINE__', r'__ENCODING__'],
    r'variable.language': [r'self', r'super'],
    r'keyword': [
      r'alias',
      r'and',
      r'begin',
      r'BEGIN',
      r'break',
      r'case',
      r'class',
      r'defined',
      r'do',
      r'else',
      r'elsif',
      r'end',
      r'END',
      r'ensure',
      r'for',
      r'if',
      r'in',
      r'module',
      r'next',
      r'not',
      r'or',
      r'redo',
      r'require',
      r'rescue',
      r'retry',
      r'return',
      r'then',
      r'undef',
      r'unless',
      r'until',
      r'when',
      r'while',
      r'yield',
      r'include',
      r'extend',
      r'prepend',
      r'public',
      r'private',
      r'protected',
      r'raise',
      r'throw',
    ],
    r'built_in': [
      r'proc',
      r'lambda',
      r'attr_accessor',
      r'attr_reader',
      r'attr_writer',
      r'define_method',
      r'private_constant',
      r'module_function',
    ],
    r'literal': [r'true', r'false', r'nil'],
  };
  _mode4.match = [
    r'class\s+',
    r'(?:\b([A-Z]+[a-z0-9]+)+|\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\w+)*',
    r'\s+<\s+',
    r'(?:\b([A-Z]+[a-z0-9]+)+|\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\w+)*',
  ];
  _mode5.match = [
    r'\b(class|module)\s+',
    r'(?:\b([A-Z]+[a-z0-9]+)+|\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\w+)*',
  ];
  _mode6.match = [
    r'(include|extend)\s+',
    r'(?:\b([A-Z]+[a-z0-9]+)+|\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\w+)*',
  ];
  _mode6.scope = {2: r'title.class'};
  _mode6.keywords = {
    r'variable.constant': [r'__FILE__', r'__LINE__', r'__ENCODING__'],
    r'variable.language': [r'self', r'super'],
    r'keyword': [
      r'alias',
      r'and',
      r'begin',
      r'BEGIN',
      r'break',
      r'case',
      r'class',
      r'defined',
      r'do',
      r'else',
      r'elsif',
      r'end',
      r'END',
      r'ensure',
      r'for',
      r'if',
      r'in',
      r'module',
      r'next',
      r'not',
      r'or',
      r'redo',
      r'require',
      r'rescue',
      r'retry',
      r'return',
      r'then',
      r'undef',
      r'unless',
      r'until',
      r'when',
      r'while',
      r'yield',
      r'include',
      r'extend',
      r'prepend',
      r'public',
      r'private',
      r'protected',
      r'raise',
      r'throw',
    ],
    r'built_in': [
      r'proc',
      r'lambda',
      r'attr_accessor',
      r'attr_reader',
      r'attr_writer',
      r'define_method',
      r'private_constant',
      r'module_function',
    ],
    r'literal': [r'true', r'false', r'nil'],
  };
  _mode7.relevance = 0;
  _mode7.match = [
    r'(?:\b([A-Z]+[a-z0-9]+)+|\b([A-Z]+[a-z0-9]+)+[A-Z]+)(::\w+)*',
    r'\.new[. (]',
  ];
  _mode7.scope = {1: r'title.class'};
  _mode8.relevance = 0;
  _mode8.match = r'\b[A-Z][A-Z_0-9]+\b';
  _mode8.scope = r'variable.constant';
  _mode9.relevance = 0;
  _mode9.match = r'(?:\b([A-Z]+[a-z0-9]+)+|\b([A-Z]+[a-z0-9]+)+[A-Z]+)';
  _mode9.scope = r'title.class';
  _mode10.match = [
    r'def',
    r'\s+',
    r'([a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~`|]|\[\]=?)',
  ];
  _mode10.scope = {1: r'keyword', 3: r'title.function'};
  _mode10.contains = [_mode11];
  _mode11.variants = [_mode12, _mode13];
  _mode11.contains = [
    _mode0,
    _mode3,
    _mode6,
    _mode7,
    _mode8,
    _mode9,
    _mode10,
    _mode14,
    _mode15,
    _mode16,
    _mode18,
    _mode25,
    _mode26,
    _mode27,
    _mode34,
    _mode35,
    _mode39,
    _mode42,
  ];
  _mode12.match = r'\(\)';
  _mode13.scope = r'params';
  _mode13.begin = r'\(';
  _mode13.end = r'(?=\))';
  _mode13.excludeBegin = true;
  _mode13.endsParent = true;
  _mode13.keywords = {
    r'variable.constant': [r'__FILE__', r'__LINE__', r'__ENCODING__'],
    r'variable.language': [r'self', r'super'],
    r'keyword': [
      r'alias',
      r'and',
      r'begin',
      r'BEGIN',
      r'break',
      r'case',
      r'class',
      r'defined',
      r'do',
      r'else',
      r'elsif',
      r'end',
      r'END',
      r'ensure',
      r'for',
      r'if',
      r'in',
      r'module',
      r'next',
      r'not',
      r'or',
      r'redo',
      r'require',
      r'rescue',
      r'retry',
      r'return',
      r'then',
      r'undef',
      r'unless',
      r'until',
      r'when',
      r'while',
      r'yield',
      r'include',
      r'extend',
      r'prepend',
      r'public',
      r'private',
      r'protected',
      r'raise',
      r'throw',
    ],
    r'built_in': [
      r'proc',
      r'lambda',
      r'attr_accessor',
      r'attr_reader',
      r'attr_writer',
      r'define_method',
      r'private_constant',
      r'module_function',
    ],
    r'literal': [r'true', r'false', r'nil'],
  };
  _mode14.begin = r'[a-zA-Z]\w*::';
  _mode15.scope = r'symbol';
  _mode15.begin = r'[a-zA-Z_]\w*(!|\?)?:';
  _mode15.relevance = 0;
  _mode16.scope = r'symbol';
  _mode16.begin = r':(?!\s)';
  _mode16.contains = [_mode0, _mode17];
  _mode16.relevance = 0;
  _mode17.begin =
      r'([a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|=~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~`|]|\[\]=?)';
  _mode18.scope = r'number';
  _mode18.relevance = 0;
  _mode18.variants = [_mode19, _mode20, _mode21, _mode22, _mode23, _mode24];
  _mode19.begin =
      r'\b([1-9](_?[0-9])*|0)(\.([0-9](_?[0-9])*))?([eE][+-]?([0-9](_?[0-9])*)|r)?i?\b';
  _mode20.begin = r'\b0[dD][0-9](_?[0-9])*r?i?\b';
  _mode21.begin = r'\b0[bB][0-1](_?[0-1])*r?i?\b';
  _mode22.begin = r'\b0[oO][0-7](_?[0-7])*r?i?\b';
  _mode23.begin = r'\b0[xX][0-9a-fA-F](_?[0-9a-fA-F])*r?i?\b';
  _mode24.begin = r'\b0(_?[0-7])+r?i?\b';
  _mode25.scope = r'variable';
  _mode25.begin = r"(\$\W)|((\$|@@?)(\w+))(?=[^@$?])(?![A-Za-z])(?![@$?'])";
  _mode26.scope = r'params';
  _mode26.begin = r'\|(?!=)';
  _mode26.end = r'\|';
  _mode26.excludeBegin = true;
  _mode26.excludeEnd = true;
  _mode26.relevance = 0;
  _mode26.keywords = {
    r'variable.constant': [r'__FILE__', r'__LINE__', r'__ENCODING__'],
    r'variable.language': [r'self', r'super'],
    r'keyword': [
      r'alias',
      r'and',
      r'begin',
      r'BEGIN',
      r'break',
      r'case',
      r'class',
      r'defined',
      r'do',
      r'else',
      r'elsif',
      r'end',
      r'END',
      r'ensure',
      r'for',
      r'if',
      r'in',
      r'module',
      r'next',
      r'not',
      r'or',
      r'redo',
      r'require',
      r'rescue',
      r'retry',
      r'return',
      r'then',
      r'undef',
      r'unless',
      r'until',
      r'when',
      r'while',
      r'yield',
      r'include',
      r'extend',
      r'prepend',
      r'public',
      r'private',
      r'protected',
      r'raise',
      r'throw',
    ],
    r'built_in': [
      r'proc',
      r'lambda',
      r'attr_accessor',
      r'attr_reader',
      r'attr_writer',
      r'define_method',
      r'private_constant',
      r'module_function',
    ],
    r'literal': [r'true', r'false', r'nil'],
  };
  _mode27.begin =
      r'(!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~|unless)\s*';
  _mode27.keywords = r'unless';
  _mode27.contains = [_mode28, _mode34, _mode35, _mode39, _mode42];
  _mode27.relevance = 0;
  _mode28.scope = r'regexp';
  _mode28.contains = [_mode1, _mode2];
  _mode28.illegal = r'\n';
  _mode28.variants = [_mode29, _mode30, _mode31, _mode32, _mode33];
  _mode29.begin = r'/';
  _mode29.end = r'/[a-z]*';
  _mode30.begin = r'%r\{';
  _mode30.end = r'\}[a-z]*';
  _mode31.begin = r'%r\(';
  _mode31.end = r'\)[a-z]*';
  _mode32.begin = r'%r!';
  _mode32.end = r'![a-z]*';
  _mode33.begin = r'%r\[';
  _mode33.end = r'\][a-z]*';
  _mode34.begin = r'#<';
  _mode34.end = r'>';
  _mode35.scope = r'comment';
  _mode35.begin = r'#';
  _mode35.end = r'$';
  _mode35.contains = [_mode36, _mode37, _mode38];
  _mode36.scope = r'doctag';
  _mode36.begin = r'@[A-Za-z]+';
  _mode37.scope = r'doctag';
  _mode37.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode37.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode37.excludeBegin = true;
  _mode37.relevance = 0;
  _mode38.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode39.scope = r'comment';
  _mode39.begin = r'^=begin';
  _mode39.end = r'^=end';
  _mode39.contains = [_mode36, _mode40, _mode41];
  _mode39.relevance = 10;
  _mode40.scope = r'doctag';
  _mode40.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode40.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode40.excludeBegin = true;
  _mode40.relevance = 0;
  _mode41.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode42.scope = r'comment';
  _mode42.begin = r'^__END__';
  _mode42.end = r'\b\B';
  _mode42.contains = [_mode43, _mode44];
  _mode43.scope = r'doctag';
  _mode43.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode43.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode43.excludeBegin = true;
  _mode43.relevance = 0;
  _mode44.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode45.begin = r"'";
  _mode45.end = r"'";
  _mode46.begin = r'"';
  _mode46.end = r'"';
  _mode47.begin = r'`';
  _mode47.end = r'`';
  _mode48.begin = r'%[qQwWx]?\(';
  _mode48.end = r'\)';
  _mode49.begin = r'%[qQwWx]?\[';
  _mode49.end = r'\]';
  _mode50.begin = r'%[qQwWx]?\{';
  _mode50.end = r'\}';
  _mode51.begin = r'%[qQwWx]?<';
  _mode51.end = r'>';
  _mode52.begin = r'%[qQwWx]?\/';
  _mode52.end = r'\/';
  _mode53.begin = r'%[qQwWx]?%';
  _mode53.end = r'%';
  _mode54.begin = r'%[qQwWx]?-';
  _mode54.end = r'-';
  _mode55.begin = r'%[qQwWx]?\|';
  _mode55.end = r'\|';
  _mode56.begin = r'\B\?(\\\d{1,3})';
  _mode57.begin = r'\B\?(\\x[A-Fa-f0-9]{1,2})';
  _mode58.begin = r'\B\?(\\u\{?[A-Fa-f0-9]{1,6}\}?)';
  _mode59.begin = r'\B\?(\\M-\\C-|\\M-\\c|\\c\\M-|\\M-|\\C-\\M-)[\x20-\x7e]';
  _mode60.begin = r'\B\?\\(c|C-)[\x20-\x7e]';
  _mode61.begin = r'\B\?\\?\S';
  _mode62.begin = r"<<[-~]?'?(?=(\w+)(?=\W)[^\n]*\n(?:[^\n]*\n)*?\s*\1\b)";
  _mode62.contains = [_mode63];
  _mode63.begin = r'(\w+)';
  _mode63.end = r'(\w+)';
  _mode63.onBegin = (RegExpMatch m, CallbackResponse resp) {
    resp.data['_beginMatch'] = m.group(1);
  };
  _mode63.onEnd = (RegExpMatch m, CallbackResponse resp) {
    if (resp.data['_beginMatch'] != m.group(1)) resp.ignoreMatch();
  };
  _mode63.contains = [_mode1, _mode2];
  return Mode(
    name: r'Ruby',
    aliases: [r'rb', r'gemspec', r'podspec', r'thor', r'irb'],
    keywords: {
      r'variable.constant': [r'__FILE__', r'__LINE__', r'__ENCODING__'],
      r'variable.language': [r'self', r'super'],
      r'keyword': [
        r'alias',
        r'and',
        r'begin',
        r'BEGIN',
        r'break',
        r'case',
        r'class',
        r'defined',
        r'do',
        r'else',
        r'elsif',
        r'end',
        r'END',
        r'ensure',
        r'for',
        r'if',
        r'in',
        r'module',
        r'next',
        r'not',
        r'or',
        r'redo',
        r'require',
        r'rescue',
        r'retry',
        r'return',
        r'then',
        r'undef',
        r'unless',
        r'until',
        r'when',
        r'while',
        r'yield',
        r'include',
        r'extend',
        r'prepend',
        r'public',
        r'private',
        r'protected',
        r'raise',
        r'throw',
      ],
      r'built_in': [
        r'proc',
        r'lambda',
        r'attr_accessor',
        r'attr_reader',
        r'attr_writer',
        r'define_method',
        r'private_constant',
        r'module_function',
      ],
      r'literal': [r'true', r'false', r'nil'],
    },
    illegal: r'\/\*',
    contains: [
      Mode(
        scope: r'meta',
        begin: r'^#![ ]*\/.*\bruby\b.*',
        end: r'$',
        relevance: 0,
        binary: r'ruby',
      ),
      Mode(
        begin: r'^\s*=>',
        starts: Mode(
          end: r'$',
          contains: [
            _mode0,
            _mode3,
            _mode6,
            _mode7,
            _mode8,
            _mode9,
            _mode10,
            _mode14,
            _mode15,
            _mode16,
            _mode18,
            _mode25,
            _mode26,
            _mode27,
            _mode34,
            _mode35,
            _mode39,
            _mode42,
          ],
        ),
      ),
      Mode(
        scope: r'meta.prompt',
        begin:
            r'^([>?]>|[\w#]+\(\w+\):\d+:\d+[>*]|(\w+-)?\d+\.\d+\.\d+(p\d+)?[^\d][^>]+>)(?=[ ])',
        starts: Mode(
          end: r'$',
          keywords: {
            r'variable.constant': [r'__FILE__', r'__LINE__', r'__ENCODING__'],
            r'variable.language': [r'self', r'super'],
            r'keyword': [
              r'alias',
              r'and',
              r'begin',
              r'BEGIN',
              r'break',
              r'case',
              r'class',
              r'defined',
              r'do',
              r'else',
              r'elsif',
              r'end',
              r'END',
              r'ensure',
              r'for',
              r'if',
              r'in',
              r'module',
              r'next',
              r'not',
              r'or',
              r'redo',
              r'require',
              r'rescue',
              r'retry',
              r'return',
              r'then',
              r'undef',
              r'unless',
              r'until',
              r'when',
              r'while',
              r'yield',
              r'include',
              r'extend',
              r'prepend',
              r'public',
              r'private',
              r'protected',
              r'raise',
              r'throw',
            ],
            r'built_in': [
              r'proc',
              r'lambda',
              r'attr_accessor',
              r'attr_reader',
              r'attr_writer',
              r'define_method',
              r'private_constant',
              r'module_function',
            ],
            r'literal': [r'true', r'false', r'nil'],
          },
          contains: [
            _mode0,
            _mode3,
            _mode6,
            _mode7,
            _mode8,
            _mode9,
            _mode10,
            _mode14,
            _mode15,
            _mode16,
            _mode18,
            _mode25,
            _mode26,
            _mode27,
            _mode34,
            _mode35,
            _mode39,
            _mode42,
          ],
        ),
      ),
      _mode34,
      _mode35,
      _mode39,
      _mode42,
      _mode0,
      _mode3,
      _mode6,
      _mode7,
      _mode8,
      _mode9,
      _mode10,
      _mode14,
      _mode15,
      _mode16,
      _mode18,
      _mode25,
      _mode26,
      _mode27,
      _mode34,
      _mode35,
      _mode39,
      _mode42,
    ],
  );
}
