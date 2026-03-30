// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `accesslog`.
Mode accesslog(Highlight hljs) {
  return Mode(
    name: r'Apache Access Log',
    contains: [
      Mode(
        scope: r'number',
        begin: r'^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(:\d{1,5})?\b',
        relevance: 5,
      ),
      Mode(scope: r'number', begin: r'\b\d+\b', relevance: 0),
      Mode(
        scope: r'string',
        begin: r'"(?:GET|POST|HEAD|PUT|DELETE|CONNECT|OPTIONS|PATCH|TRACE)',
        end: r'"',
        keywords: [
          r'GET',
          r'POST',
          r'HEAD',
          r'PUT',
          r'DELETE',
          r'CONNECT',
          r'OPTIONS',
          r'PATCH',
          r'TRACE',
        ],
        illegal: r'\n',
        relevance: 5,
        contains: [Mode(begin: r"HTTP\/[12]\.\d'", relevance: 5)],
      ),
      Mode(
        scope: r'string',
        begin: r'\[\d[^\]\n]{8,}\]',
        illegal: r'\n',
        relevance: 1,
      ),
      Mode(
        scope: r'string',
        begin: r'\[',
        end: r'\]',
        illegal: r'\n',
        relevance: 0,
      ),
      Mode(
        scope: r'string',
        begin: r'"Mozilla\/\d\.\d \(',
        end: r'"',
        illegal: r'\n',
        relevance: 3,
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        relevance: 0,
      ),
    ],
  );
}
