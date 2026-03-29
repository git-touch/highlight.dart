// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode handlebars(Highlight hljs) {
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
  _mode0.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  _mode0.keywords = {
    r'$pattern': r'[\w.\/]+',
    r'built_in': [
      r'action',
      r'bindattr',
      r'collection',
      r'component',
      r'concat',
      r'debugger',
      r'each',
      r'each-in',
      r'get',
      r'hash',
      r'if',
      r'in',
      r'input',
      r'link-to',
      r'loc',
      r'log',
      r'lookup',
      r'mut',
      r'outlet',
      r'partial',
      r'query-params',
      r'render',
      r'template',
      r'textarea',
      r'unbound',
      r'unless',
      r'view',
      r'with',
      r'yield',
    ],
  };
  _mode0.scope = r'name';
  _mode0.starts = _mode1;
  _mode1.contains = [
    _mode2,
    _mode3,
    _mode5,
    _mode6,
    _mode8,
    _mode11,
    _mode12,
  ];
  _mode1.returnEnd = true;
  _mode1.end = r'\}\}';
  _mode2.scope = r'number';
  _mode2.begin = r'\b\d+(\.\d+)?';
  _mode2.relevance = 0;
  _mode3.scope = r'string';
  _mode3.begin = r'"';
  _mode3.end = r'"';
  _mode3.illegal = r'\n';
  _mode3.contains = [
    _mode4,
  ];
  _mode4.begin = r'\\[\s\S]';
  _mode4.relevance = 0;
  _mode5.scope = r'string';
  _mode5.begin = r"'";
  _mode5.end = r"'";
  _mode5.illegal = r'\n';
  _mode5.contains = [
    _mode4,
  ];
  _mode6.begin = r'as\s+\|';
  _mode6.keywords = {
    r'keyword': r'as',
  };
  _mode6.end = r'\|';
  _mode6.contains = [
    _mode7,
  ];
  _mode7.begin = r'\w+';
  _mode8.scope = r'attr';
  _mode8.begin =
      '(\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?==)';
  _mode8.relevance = 0;
  _mode8.starts = _mode9;
  _mode9.begin = r'=';
  _mode9.end = r'=';
  _mode9.starts = _mode10;
  _mode10.contains = [
    _mode2,
    _mode3,
    _mode5,
    _mode11,
    _mode12,
  ];
  _mode11.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  _mode11.keywords = {
    r'$pattern': r'[\w.\/]+',
    r'literal': [
      r'true',
      r'false',
      r'undefined',
      r'null',
    ],
  };
  _mode12.begin = r'\(';
  _mode12.end = r'\)';
  _mode12.contains = [
    _mode13,
  ];
  _mode13.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  _mode13.scope = r'name';
  _mode13.keywords = {
    r'$pattern': r'[\w.\/]+',
    r'built_in': [
      r'action',
      r'bindattr',
      r'collection',
      r'component',
      r'concat',
      r'debugger',
      r'each',
      r'each-in',
      r'get',
      r'hash',
      r'if',
      r'in',
      r'input',
      r'link-to',
      r'loc',
      r'log',
      r'lookup',
      r'mut',
      r'outlet',
      r'partial',
      r'query-params',
      r'render',
      r'template',
      r'textarea',
      r'unbound',
      r'unless',
      r'view',
      r'with',
      r'yield',
    ],
  };
  _mode13.starts = _mode14;
  _mode14.contains = [
    _mode2,
    _mode3,
    _mode5,
    _mode6,
    _mode8,
    _mode11,
    _mode12,
  ];
  _mode14.returnEnd = true;
  _mode14.end = r'\)';
  _mode15.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  _mode15.keywords = {
    r'$pattern': r'[\w.\/]+',
    r'built_in': [
      r'action',
      r'bindattr',
      r'collection',
      r'component',
      r'concat',
      r'debugger',
      r'each',
      r'each-in',
      r'get',
      r'hash',
      r'if',
      r'in',
      r'input',
      r'link-to',
      r'loc',
      r'log',
      r'lookup',
      r'mut',
      r'outlet',
      r'partial',
      r'query-params',
      r'render',
      r'template',
      r'textarea',
      r'unbound',
      r'unless',
      r'view',
      r'with',
      r'yield',
    ],
  };
  _mode15.scope = r'name';
  _mode16.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  _mode16.scope = r'name';
  _mode16.keywords = {
    r'$pattern': r'[\w.\/]+',
    r'built_in': [
      r'action',
      r'bindattr',
      r'collection',
      r'component',
      r'concat',
      r'debugger',
      r'each',
      r'each-in',
      r'get',
      r'hash',
      r'if',
      r'in',
      r'input',
      r'link-to',
      r'loc',
      r'log',
      r'lookup',
      r'mut',
      r'outlet',
      r'partial',
      r'query-params',
      r'render',
      r'template',
      r'textarea',
      r'unbound',
      r'unless',
      r'view',
      r'with',
      r'yield',
    ],
  };
  _mode16.starts = _mode17;
  _mode17.contains = [
    _mode2,
    _mode3,
    _mode5,
    _mode6,
    _mode8,
    _mode11,
    _mode12,
  ];
  _mode17.returnEnd = true;
  _mode17.end = r'\}\}';
  return Mode(
    name: r'Handlebars',
    aliases: [
      r'hbs',
      r'html.hbs',
      r'html.handlebars',
      r'htmlbars',
    ],
    caseInsensitive: true,
    subLanguage: r'xml',
    contains: [
      Mode(
        begin: r'\\\{\{',
        skip: true,
      ),
      Mode(
        begin: r'\\\\(?=\{\{)',
        skip: true,
      ),
      Mode(
        scope: r'comment',
        begin: r'\{\{!--',
        end: r'--\}\}',
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
        begin: r'\{\{!',
        end: r'\}\}',
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
        scope: r'template-tag',
        begin: r'\{\{\{\{(?!\/)',
        end: r'\}\}\}\}',
        contains: [
          _mode0,
        ],
        starts: Mode(
          end: r'\{\{\{\{\/',
          returnEnd: true,
          subLanguage: r'xml',
        ),
      ),
      Mode(
        scope: r'template-tag',
        begin: r'\{\{\{\{\/',
        end: r'\}\}\}\}',
        contains: [
          _mode15,
        ],
      ),
      Mode(
        scope: r'template-tag',
        begin: r'\{\{#',
        end: r'\}\}',
        contains: [
          _mode0,
        ],
      ),
      Mode(
        scope: r'template-tag',
        begin: r'\{\{(?=else\}\})',
        end: r'\}\}',
        keywords: r'else',
      ),
      Mode(
        scope: r'template-tag',
        begin: r'\{\{(?=else if)',
        end: r'\}\}',
        keywords: r'else if',
      ),
      Mode(
        scope: r'template-tag',
        begin: r'\{\{\/',
        end: r'\}\}',
        contains: [
          _mode15,
        ],
      ),
      Mode(
        scope: r'template-variable',
        begin: r'\{\{\{',
        end: r'\}\}\}',
        contains: [
          _mode16,
        ],
      ),
      Mode(
        scope: r'template-variable',
        begin: r'\{\{',
        end: r'\}\}',
        contains: [
          _mode16,
        ],
      ),
    ],
  );
}
