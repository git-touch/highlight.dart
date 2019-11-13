// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final vue = Mode(refs: {}, subLanguage: [
  "xml"
], contains: [
  Mode(
      className: "comment",
      begin: "<!--",
      end: "-->",
      contains: [
        PHRASAL_WORDS_MODE,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ],
      relevance: 10),
  Mode(
      begin: "^(\\s*)(<script>)",
      end: "^(\\s*)(<\\/script>)",
      subLanguage: ["javascript"],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<script lang=[\"']ts[\"']>)",
      end: "^(\\s*)(<\\/script>)",
      subLanguage: ["typescript"],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<style(\\sscoped)?>)",
      end: "^(\\s*)(<\\/style>)",
      subLanguage: ["css"],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<style lang=[\"'](scss|sass)[\"'](\\sscoped)?>)",
      end: "^(\\s*)(<\\/style>)",
      subLanguage: ["scss"],
      excludeBegin: true,
      excludeEnd: true),
  Mode(
      begin: "^(\\s*)(<style lang=[\"']stylus[\"'](\\sscoped)?>)",
      end: "^(\\s*)(<\\/style>)",
      subLanguage: ["stylus"],
      excludeBegin: true,
      excludeEnd: true)
]);
