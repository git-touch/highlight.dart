// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `jboss-cli`.
Mode jboss_cli(Highlight hljs) {
  return Mode(
    name: r'JBoss CLI',
    aliases: [r'wildfly-cli'],
    keywords: {
      r'$pattern': r'[a-z-]+',
      r'keyword':
          r'alias batch cd clear command connect connection-factory connection-info data-source deploy deployment-info deployment-overlay echo echo-dmr help history if jdbc-driver-info jms-queue|20 jms-topic|20 ls patch pwd quit read-attribute read-operation reload rollout-plan run-batch set shutdown try unalias undeploy unset version xa-data-source',
      r'literal': r'true false',
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
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'\\[\s\S]', relevance: 0)],
      ),
      Mode(scope: r'params', begin: r'--[\w\-=\/]+'),
      Mode(scope: r'function', begin: r':[\w\-.]+', relevance: 0),
      Mode(scope: r'string', begin: r'\B([\/.])[\w\-.\/=]+'),
      Mode(
        scope: r'params',
        begin: r'\(',
        end: r'\)',
        contains: [
          Mode(
            begin: r'[\w-]+ *=',
            returnBegin: true,
            relevance: 0,
            contains: [Mode(scope: r'attr', begin: r'[\w-]+')],
          ),
        ],
        relevance: 0,
      ),
    ],
  );
}
