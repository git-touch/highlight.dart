import 'common.dart';
import '../highlight.dart';

var twig = Mode(
    refs: {
      '~contains~1~contains~0~starts~contains~0~contains~0': Mode(
          beginKeywords:
              "attribute block constant cycle date dump include max min parent random range source template_from_string",
          keywords: {
            "name":
                "attribute block constant cycle date dump include max min parent random range source template_from_string"
          },
          relevance: 0,
          contains: [Mode(className: "params", begin: "\\(", end: "\\)")]),
      '~contains~1~contains~0~starts~contains~0': Mode(
          begin: "\\|[A-Za-z_]+:?",
          keywords:
              "abs batch capitalize convert_encoding date date_modify default escape first format join json_encode keys last length lower merge nl2br number_format raw replace reverse round slice sort split striptags title trim upper url_encode",
          contains: [
            Mode(ref: '~contains~1~contains~0~starts~contains~0~contains~0')
          ]),
    },
    aliases: ["craftcms"],
    case_insensitive: true,
    subLanguage: ["xml"],
    contains: [
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
            keywords:
                "autoescape block do embed extends filter flush for if import include macro sandbox set spaceless use verbatim endautoescape endblock enddo endembed endextends endfilter endflush endfor endif endimport endinclude endmacro endsandbox endset endspaceless enduse endverbatim",
            starts: Mode(
                endsWithParent: true,
                contains: [
                  Mode(ref: '~contains~1~contains~0~starts~contains~0'),
                  Mode(
                      ref:
                          '~contains~1~contains~0~starts~contains~0~contains~0')
                ],
                relevance: 0))
      ]),
      Mode(
          className: "template-variable",
          begin: "\\{\\{",
          end: "}}",
          contains: [
            Mode(self: true),
            Mode(ref: '~contains~1~contains~0~starts~contains~0'),
            Mode(ref: '~contains~1~contains~0~starts~contains~0~contains~0')
          ])
    ]);
