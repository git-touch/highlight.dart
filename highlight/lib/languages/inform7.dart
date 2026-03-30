// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `inform7`.
Mode inform7(Highlight hljs) {
  return Mode(
    name: r'Inform 7',
    aliases: [r'i7'],
    caseInsensitive: true,
    keywords: {
      r'keyword':
          r'thing room person man woman animal container supporter backdrop door scenery open closed locked inside gender is are say understand kind of rule',
    },
    contains: [
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        relevance: 0,
        contains: [Mode(scope: r'subst', begin: r'\[', end: r'\]')],
      ),
      Mode(
        scope: r'section',
        begin: r'^(Volume|Book|Part|Chapter|Section|Table)\b',
        end: r'$',
      ),
      Mode(
        begin:
            r'^(Check|Carry out|Report|Instead of|To|Rule|When|Before|After)\b',
        end: r':',
        contains: [Mode(begin: r'\(This', end: r'\)')],
      ),
      Mode(scope: r'comment', begin: r'\[', end: r'\]', contains: [r'self']),
    ],
  );
}
