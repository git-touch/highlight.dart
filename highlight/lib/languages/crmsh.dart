// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `crmsh`.
Mode crmsh(Highlight hljs) {
  return Mode(
    name: r'crmsh',
    aliases: [r'crm', r'pcmk'],
    caseInsensitive: true,
    keywords: {
      r'keyword':
          r'params meta operations op rule attributes utilization read write deny defined not_defined in_range date spec in ref reference attribute type xpath version and or lt gt tag lte gte eq ne \ number string',
      r'literal':
          r'Master Started Slave Stopped start promote demote stop monitor true false',
    },
    contains: [
      Mode(
        scope: r'comment',
        begin: r'#',
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
      ),
      Mode(
        beginKeywords: r'node',
        starts: Mode(
          end: r'\s*([\w_-]+:)?',
          starts: Mode(scope: r'title', end: r'\s*[\$\w_][\w_-]*'),
        ),
      ),
      Mode(
        beginKeywords: r'primitive rsc_template',
        starts: Mode(
          scope: r'title',
          end: r'\s*[\$\w_][\w_-]*',
          starts: Mode(end: r'\s*@?[\w_][\w_\.:-]*'),
        ),
      ),
      Mode(
        begin:
            r'\b(group|clone|ms|master|location|colocation|order|fencing_topology|rsc_ticket|acl_target|acl_group|user|role|tag|xml)\s+',
        keywords:
            r'group clone ms master location colocation order fencing_topology rsc_ticket acl_target acl_group user role tag xml',
        starts: Mode(scope: r'title', end: r'[\$\w_][\w_-]*'),
      ),
      Mode(
        beginKeywords: r'property rsc_defaults op_defaults',
        starts: Mode(scope: r'title', end: r'\s*([\w_-]+:)?'),
      ),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(
        scope: r'meta',
        begin: r'(ocf|systemd|service|lsb):[\w_:-]+',
        relevance: 0,
      ),
      Mode(scope: r'number', begin: r'\b\d+(\.\d+)?(ms|s|h|m)?', relevance: 0),
      Mode(scope: r'literal', begin: r'[-]?(infinity|inf)', relevance: 0),
      Mode(scope: r'attr', begin: r'([A-Za-z$_#][\w_-]+)=', relevance: 0),
      Mode(scope: r'tag', begin: r'</?', end: r'/?>', relevance: 0),
    ],
  );
}
