// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

var accesslog = Mode(refs: {}, contains: [
  Mode(
      className: "number",
      begin: "\\b\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d{1,5})?\\b"),
  Mode(className: "number", begin: "\\b\\d+\\b", relevance: 0),
  Mode(
      className: "string",
      begin: "\"(GET|POST|HEAD|PUT|DELETE|CONNECT|OPTIONS|PATCH|TRACE)",
      end: "\"",
      keywords: "GET POST HEAD PUT DELETE CONNECT OPTIONS PATCH TRACE",
      illegal: "\\n",
      relevance: 10),
  Mode(className: "string", begin: "\\[", end: "\\]", illegal: "\\n"),
  Mode(className: "string", begin: "\"", end: "\"", illegal: "\\n")
]);
