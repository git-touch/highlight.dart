// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode applescript(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  _mode0.scope = r'string';
  _mode0.begin = r'"';
  _mode0.end = r'"';
  _mode0.contains = [_mode1];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'number';
  _mode2.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode2.relevance = 0;
  _mode3.scope = r'comment';
  _mode3.begin = r'--';
  _mode3.end = r'$';
  _mode3.contains = [_mode4, _mode5];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  return Mode(
    name: r'AppleScript',
    aliases: [r'osascript'],
    keywords: {
      r'keyword':
          r'about above after against and around as at back before beginning behind below beneath beside between but by considering contain contains continue copy div does eighth else end equal equals error every exit fifth first for fourth from front get given global if ignoring in into is it its last local me middle mod my ninth not of on onto or over prop property put ref reference repeat returning script second set seventh since sixth some tell tenth that the|0 then third through thru timeout times to transaction try until where while whose with without',
      r'literal':
          r'AppleScript false linefeed return pi quote result space tab true',
      r'built_in':
          r'alias application boolean class constant date file integer list number real record string text activate beep count delay launch log offset read round run say summarize write character characters contents day frontmost id item length month name|0 paragraph paragraphs rest reverse running time version weekday word words year',
    },
    contains: [
      _mode0,
      _mode2,
      Mode(
        scope: r'built_in',
        begin:
            r'\b(?:clipboard info|the clipboard|info for|list (disks|folder)|mount volume|path to|(close|open for) access|(get|set) eof|current date|do shell script|get volume settings|random number|set volume|system attribute|system info|time to GMT|(load|run|store) script|scripting components|ASCII (character|number)|localized string|choose (application|color|file|file name|folder|from list|remote application|URL)|display (alert|dialog))\b',
      ),
      Mode(scope: r'built_in', begin: r'^\s*return\b'),
      Mode(
        scope: r'literal',
        begin: r'\b(text item delimiters|current application|missing value)\b',
      ),
      Mode(
        scope: r'keyword',
        begin:
            r"\b(?:apart from|aside from|instead of|out of|greater than|isn't|(doesn't|does not) (equal|come before|come after|contain)|(greater|less) than( or equal)?|(starts?|ends|begins?) with|contained by|comes (before|after)|a (ref|reference)|POSIX (file|path)|(date|time) string|quoted form)\b",
      ),
      Mode(
        beginKeywords: r'on',
        illegal: r'[${=;\n]',
        contains: [
          Mode(scope: r'title', begin: r'[a-zA-Z_]\w*', relevance: 0),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            contains: [r'self', _mode2, _mode0],
          ),
        ],
      ),
      _mode3,
      Mode(
        scope: r'comment',
        begin: r'\(\*',
        end: r'\*\)',
        contains: [
          r'self',
          _mode3,
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
        begin: r'#',
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
    ],
    illegal: r'\/\/|->|=>|\[\[',
  );
}
