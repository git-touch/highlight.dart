// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `django`.
Mode django(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  mode0.begin = r'\|[A-Za-z]+:?';
  mode0.keywords = {
    r'name':
        r'truncatewords removetags linebreaksbr yesno get_digit timesince random striptags filesizeformat escape linebreaks length_is ljust rjust cut urlize fix_ampersands title floatformat capfirst pprint divisibleby add make_list unordered_list urlencode timeuntil urlizetrunc wordcount stringformat linenumbers slice date dictsort dictsortreversed default_if_none pluralize lower join center default truncatewords_html upper length phone2numeric wordwrap time addslashes slugify first escapejs force_escape iriencode last safe safeseq truncatechars localize unlocalize localtime utc timezone',
  };
  mode0.contains = [mode1, mode3];
  mode1.scope = r'string';
  mode1.begin = r'"';
  mode1.end = r'"';
  mode1.illegal = r'\n';
  mode1.contains = [mode2];
  mode2.begin = r'\\[\s\S]';
  mode2.relevance = 0;
  mode3.scope = r'string';
  mode3.begin = r"'";
  mode3.end = r"'";
  mode3.illegal = r'\n';
  mode3.contains = [mode2];
  return Mode(
    name: r'Django',
    aliases: [r'jinja'],
    caseInsensitive: true,
    subLanguage: r'xml',
    contains: [
      Mode(
        scope: r'comment',
        begin: r'\{%\s*comment\s*%\}',
        end: r'\{%\s*endcomment\s*%\}',
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
        begin: r'\{#',
        end: r'#\}',
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
        begin: r'\{%',
        end: r'%\}',
        contains: [
          Mode(
            scope: r'name',
            begin: r'\w+',
            keywords: {
              r'name':
                  r'comment endcomment load templatetag ifchanged endifchanged if endif firstof for endfor ifnotequal endifnotequal widthratio extends include spaceless endspaceless regroup ifequal endifequal ssi now with cycle url filter endfilter debug block endblock else autoescape endautoescape csrf_token empty elif endwith static trans blocktrans endblocktrans get_static_prefix get_media_prefix plural get_current_language language get_available_languages get_current_language_bidi get_language_info get_language_info_list localize endlocalize localtime endlocaltime timezone endtimezone get_current_timezone verbatim',
            },
            starts: Mode(
              endsWithParent: true,
              keywords: r'in by as',
              contains: [mode0],
              relevance: 0,
            ),
          ),
        ],
      ),
      Mode(
        scope: r'template-variable',
        begin: r'\{\{',
        end: r'\}\}',
        contains: [mode0],
      ),
    ],
  );
}
