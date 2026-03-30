// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `handlebars`.
Mode handlebars(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  mode0.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  mode0.keywords = {
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
  mode0.scope = r'name';
  mode0.starts = mode1;
  mode1.contains = [mode2, mode3, mode5, mode6, mode8, mode11, mode12];
  mode1.returnEnd = true;
  mode1.end = r'\}\}';
  mode2.scope = r'number';
  mode2.begin = r'\b\d+(\.\d+)?';
  mode2.relevance = 0;
  mode3.scope = r'string';
  mode3.begin = r'"';
  mode3.end = r'"';
  mode3.illegal = r'\n';
  mode3.contains = [mode4];
  mode4.begin = r'\\[\s\S]';
  mode4.relevance = 0;
  mode5.scope = r'string';
  mode5.begin = r"'";
  mode5.end = r"'";
  mode5.illegal = r'\n';
  mode5.contains = [mode4];
  mode6.begin = r'as\s+\|';
  mode6.keywords = {r'keyword': r'as'};
  mode6.end = r'\|';
  mode6.contains = [mode7];
  mode7.begin = r'\w+';
  mode8.scope = r'attr';
  mode8.begin =
      '(\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?==)';
  mode8.relevance = 0;
  mode8.starts = mode9;
  mode9.begin = r'=';
  mode9.end = r'=';
  mode9.starts = mode10;
  mode10.contains = [mode2, mode3, mode5, mode11, mode12];
  mode11.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  mode11.keywords = {
    r'$pattern': r'[\w.\/]+',
    r'literal': [r'true', r'false', r'undefined', r'null'],
  };
  mode12.begin = r'\(';
  mode12.end = r'\)';
  mode12.contains = [mode13];
  mode13.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  mode13.scope = r'name';
  mode13.keywords = {
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
  mode13.starts = mode14;
  mode14.contains = [mode2, mode3, mode5, mode6, mode8, mode11, mode12];
  mode14.returnEnd = true;
  mode14.end = r'\)';
  mode15.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  mode15.keywords = {
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
  mode15.scope = r'name';
  mode16.begin =
      '(?:\\.|\\.\\/|\\/)?(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+)(?:(\\.|\\/)(?:""|"[^"]+"|\'\'|\'[^\']+\'|\\[\\]|\\[[^\\]]+\\]|[^\\s!"#%&\'()*+,.\\/;<=>@\\[\\\\\\]^`{|}~]+))*';
  mode16.scope = r'name';
  mode16.keywords = {
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
  mode16.starts = mode17;
  mode17.contains = [mode2, mode3, mode5, mode6, mode8, mode11, mode12];
  mode17.returnEnd = true;
  mode17.end = r'\}\}';
  return Mode(
    name: r'Handlebars',
    aliases: [r'hbs', r'html.hbs', r'html.handlebars', r'htmlbars'],
    caseInsensitive: true,
    subLanguage: r'xml',
    contains: [
      Mode(begin: r'\\\{\{', skip: true),
      Mode(begin: r'\\\\(?=\{\{)', skip: true),
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
        contains: [mode0],
        starts: Mode(end: r'\{\{\{\{\/', returnEnd: true, subLanguage: r'xml'),
      ),
      Mode(
        scope: r'template-tag',
        begin: r'\{\{\{\{\/',
        end: r'\}\}\}\}',
        contains: [mode15],
      ),
      Mode(
        scope: r'template-tag',
        begin: r'\{\{#',
        end: r'\}\}',
        contains: [mode0],
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
        contains: [mode15],
      ),
      Mode(
        scope: r'template-variable',
        begin: r'\{\{\{',
        end: r'\}\}\}',
        contains: [mode16],
      ),
      Mode(
        scope: r'template-variable',
        begin: r'\{\{',
        end: r'\}\}',
        contains: [mode16],
      ),
    ],
  );
}
