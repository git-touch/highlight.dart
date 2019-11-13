// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final jbossCli = Mode(
    refs: {},
    aliases: ["wildfly-cli"],
    lexemes: "[a-z-]+",
    keywords: {
      "keyword":
          "alias batch cd clear command connect connection-factory connection-info data-source deploy deployment-info deployment-overlay echo echo-dmr help history if jdbc-driver-info jms-queue|20 jms-topic|20 ls patch pwd quit read-attribute read-operation reload rollout-plan run-batch set shutdown try unalias undeploy unset version xa-data-source",
      "literal": "true false"
    },
    contains: [
      HASH_COMMENT_MODE,
      QUOTE_STRING_MODE,
      Mode(className: "params", begin: "--[\\w\\-=\\/]+"),
      Mode(className: "function", begin: ":[\\w\\-.]+", relevance: 0),
      Mode(className: "string", begin: "\\B(([\\/.])[\\w\\-.\\/=]+)+"),
      Mode(
          className: "params",
          begin: "\\(",
          end: "\\)",
          contains: [
            Mode(
                begin: "[\\w-]+ *=",
                returnBegin: true,
                relevance: 0,
                contains: [Mode(className: "attr", begin: "[\\w-]+")])
          ],
          relevance: 0)
    ]);
