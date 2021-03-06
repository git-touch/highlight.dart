// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final ldif = Mode(refs: {}, contains: [
  Mode(
      className: "attribute",
      begin: "^dn",
      end: ": ",
      excludeEnd: true,
      starts: Mode(end: "\$", relevance: 0),
      relevance: 10),
  Mode(
      className: "attribute",
      begin: "^\\w",
      end: ": ",
      excludeEnd: true,
      starts: Mode(end: "\$", relevance: 0)),
  Mode(className: "literal", begin: "^-", end: "\$"),
  HASH_COMMENT_MODE
]);
