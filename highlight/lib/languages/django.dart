// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final django = Mode(
    refs: {
      '~contains~2~contains~0~starts~contains~0':
          Mode(begin: "\\|[A-Za-z]+:?", keywords: {
        "name":
            "truncatewords removetags linebreaksbr yesno get_digit timesince random striptags filesizeformat escape linebreaks length_is ljust rjust cut urlize fix_ampersands title floatformat capfirst pprint divisibleby add make_list unordered_list urlencode timeuntil urlizetrunc wordcount stringformat linenumbers slice date dictsort dictsortreversed default_if_none pluralize lower join center default truncatewords_html upper length phone2numeric wordwrap time addslashes slugify first escapejs force_escape iriencode last safe safeseq truncatechars localize unlocalize localtime utc timezone"
      }, contains: [
        QUOTE_STRING_MODE,
        APOS_STRING_MODE
      ]),
    },
    aliases: ["jinja"],
    case_insensitive: true,
    subLanguage: ["xml"],
    contains: [
      Mode(
          className: "comment",
          begin: "\\{%\\s*comment\\s*%}",
          end: "\\{%\\s*endcomment\\s*%}",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ]),
      Mode(className: "comment", begin: "\\{#", end: "#}", contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(className: "template-tag", begin: "\\{%", end: "%}", contains: [
        Mode(
            className: "name",
            begin: "\\w+",
            keywords: {
              "name":
                  "comment endcomment load templatetag ifchanged endifchanged if endif firstof for endfor ifnotequal endifnotequal widthratio extends include spaceless endspaceless regroup ifequal endifequal ssi now with cycle url filter endfilter debug block endblock else autoescape endautoescape csrf_token empty elif endwith static trans blocktrans endblocktrans get_static_prefix get_media_prefix plural get_current_language language get_available_languages get_current_language_bidi get_language_info get_language_info_list localize endlocalize localtime endlocaltime timezone endtimezone get_current_timezone verbatim"
            },
            starts: Mode(
                endsWithParent: true,
                keywords: "in by as",
                contains: [
                  Mode(ref: '~contains~2~contains~0~starts~contains~0')
                ],
                relevance: 0))
      ]),
      Mode(
          className: "template-variable",
          begin: "\\{\\{",
          end: "}}",
          contains: [Mode(ref: '~contains~2~contains~0~starts~contains~0')])
    ]);
