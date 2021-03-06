// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final dockerfile = Mode(
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
