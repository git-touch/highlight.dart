// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';

final accesslog = Mode(refs: {}, contains: [
  Mode(
      className: "number",
      begin: "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d{1,5})?\\b",
      relevance: 5),
  Mode(className: "number", begin: "\\b\\d+\\b", relevance: 0),
  Mode(
      className: "string",
      begin: "\"(GET|POST|HEAD|PUT|DELETE|CONNECT|OPTIONS|PATCH|TRACE)",
      end: "\"",
      keywords: "GET POST HEAD PUT DELETE CONNECT OPTIONS PATCH TRACE",
      illegal: "\\n",
      relevance: 5,
      contains: [Mode(begin: "HTTP/[12]\\.\\d", relevance: 5)]),
  Mode(
      className: "string",
      begin: "\\[\\d[^\\]\\n]{8,}\\]",
      illegal: "\\n",
      relevance: 1),
  Mode(
      className: "string",
      begin: "\\[",
      end: "\\]",
      illegal: "\\n",
      relevance: 0),
  Mode(
      className: "string",
      begin: "\"Mozilla/\\d\\.\\d \\(",
      end: "\"",
      illegal: "\\n",
      relevance: 3),
  Mode(
      className: "string", begin: "\"", end: "\"", illegal: "\\n", relevance: 0)
]);
