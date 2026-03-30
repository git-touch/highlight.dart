// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `autohotkey`.
Mode autohotkey(Highlight hljs) {
  final Mode mode0 = Mode();
  mode0.begin = r'`[\s\S]';
  return Mode(
    name: r'AutoHotkey',
    caseInsensitive: true,
    aliases: [r'ahk'],
    keywords: {
      r'keyword':
          r'Break Continue Critical Exit ExitApp Gosub Goto New OnExit Pause return SetBatchLines SetTimer Suspend Thread Throw Until ahk_id ahk_class ahk_pid ahk_exe ahk_group',
      r'literal': r'true false NOT AND OR',
      r'built_in': r'ComSpec Clipboard ClipboardAll ErrorLevel',
    },
    contains: [
      mode0,
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [mode0],
      ),
      Mode(
        scope: r'comment',
        begin: r';',
        end: r'$',
        contains: [
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
        relevance: 0,
      ),
      Mode(
        scope: r'comment',
        begin: r'/\*',
        end: r'\*/',
        contains: [
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
      ),
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?', relevance: 0),
      Mode(scope: r'variable', begin: r'%[a-zA-Z0-9#_$@]+%'),
      Mode(scope: r'built_in', begin: r'^\s*\w+\s*(,|%)'),
      Mode(
        scope: r'title',
        variants: [
          Mode(begin: r'^[^\n";]+::(?!=)'),
          Mode(begin: r'^[^\n";]+:(?!=)', relevance: 0),
        ],
      ),
      Mode(scope: r'meta', begin: r'^\s*#\w+', end: r'$', relevance: 0),
      Mode(scope: r'built_in', begin: r'A_[a-zA-Z0-9]+'),
      Mode(begin: r',\s*,'),
    ],
  );
}
