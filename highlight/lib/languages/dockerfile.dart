import 'common.dart';
import '../highlight.dart';

var dockerfile = Mode(
    refs: {},
    aliases: ["docker"],
    case_insensitive: true,
    keywords: "from maintainer expose env arg user onbuild stopsignal",
    contains: [
      HASH_COMMENT_MODE,
      APOS_STRING_MODE,
      QUOTE_STRING_MODE,
      NUMBER_MODE,
      Mode(
          beginKeywords:
              "run cmd entrypoint volume add copy workdir label healthcheck shell",
          starts: Mode(end: "[^\\\\]\$", subLanguage: ["bash"]))
    ],
    illegal: "</");
