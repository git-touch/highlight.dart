// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `vbscript-html`.
Mode vbscript_html(Highlight hljs) {
  return Mode(
    name: r'VBScript in HTML',
    subLanguage: r'xml',
    contains: [Mode(begin: r'<%', end: r'%>', subLanguage: r'vbscript')],
  );
}
