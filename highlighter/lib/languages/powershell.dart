// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final powershell = Mode(
    refs: {
      '~contains~0~contains~0~contains~9':
          Mode(className: "literal", begin: "\\\$(null|true|false)\\b"),
      '~contains~0~contains~0~contains~7':
          Mode(className: "built_in", variants: [
        Mode(
            begin:
                "(Add|Clear|Close|Copy|Enter|Exit|Find|Format|Get|Hide|Join|Lock|Move|New|Open|Optimize|Pop|Push|Redo|Remove|Rename|Reset|Resize|Search|Select|Set|Show|Skip|Split|Step|Switch|Undo|Unlock|Watch|Backup|Checkpoint|Compare|Compress|Convert|ConvertFrom|ConvertTo|Dismount|Edit|Expand|Export|Group|Import|Initialize|Limit|Merge|New|Out|Publish|Restore|Save|Sync|Unpublish|Update|Approve|Assert|Complete|Confirm|Deny|Disable|Enable|Install|Invoke|Register|Request|Restart|Resume|Start|Stop|Submit|Suspend|Uninstall|Unregister|Wait|Debug|Measure|Ping|Repair|Resolve|Test|Trace|Connect|Disconnect|Read|Receive|Send|Write|Block|Grant|Protect|Revoke|Unblock|Unprotect|Use|ForEach|Sort|Tee|Where)+(-)[\\w\\d]+")
      ]),
      '~contains~0~contains~0~contains~6': Mode(className: "string", variants: [
        Mode(begin: "'", end: "'"),
        Mode(begin: "@'", end: "^'@")
      ]),
      '~contains~0~contains~0~contains~5~contains~1':
          Mode(className: "variable", variants: [
        Mode(begin: "\\\$\\B"),
        Mode(className: "keyword", begin: "\\\$this"),
        Mode(begin: "\\\$[\\w\\d][\\w\\d_:]*")
      ]),
      '~contains~0~contains~0~contains~5': Mode(className: "string", variants: [
        Mode(begin: "\"", end: "\""),
        Mode(begin: "@\"", end: "^\"@")
      ], contains: [
        Mode(ref: '~contains~0~contains~0~contains~3'),
        Mode(ref: '~contains~0~contains~0~contains~5~contains~1'),
        Mode(className: "variable", begin: "\\\$[A-z]", end: "[^A-z]")
      ]),
      '~contains~0~contains~0~contains~3':
          Mode(begin: "`[\\s\\S]", relevance: 0),
      '~contains~0~contains~0~contains~2':
          Mode(className: "comment", begin: null, end: null, contains: [
        Mode(className: "doctag", variants: [
          Mode(
              begin:
                  "\\.(synopsis|description|example|inputs|outputs|notes|link|component|role|functionality)"),
          Mode(
              begin:
                  "\\.(parameter|forwardhelptargetname|forwardhelpcategory|remotehelprunspace|externalhelp)\\s+\\S+")
        ])
      ], variants: [
        Mode(begin: "#", end: "\$"),
        Mode(begin: "<#", end: "#>")
      ]),
      '~contains~0~contains~0~contains~10':
          Mode(className: "selector-tag", begin: "\\@\\B", relevance: 0),
      '~contains~0~contains~0': Mode(
          begin: "\\[",
          end: "\\]",
          excludeBegin: true,
          excludeEnd: true,
          relevance: 0,
          contains: [
            Mode(self: true),
            Mode(ref: '~contains~0'),
            Mode(ref: '~contains~0~contains~0~contains~2'),
            Mode(ref: '~contains~0~contains~0~contains~3'),
            NUMBER_MODE,
            Mode(ref: '~contains~0~contains~0~contains~5'),
            Mode(ref: '~contains~0~contains~0~contains~6'),
            Mode(ref: '~contains~0~contains~0~contains~7'),
            Mode(ref: '~contains~0~contains~0~contains~5~contains~1'),
            Mode(ref: '~contains~0~contains~0~contains~9'),
            Mode(ref: '~contains~0~contains~0~contains~10'),
            Mode(
                begin:
                    "(string|char|byte|int|long|bool|decimal|single|double|DateTime|xml|array|hashtable|void)",
                className: "built_in",
                relevance: 0),
            Mode(className: "type", begin: "[\\.\\w\\d]+", relevance: 0)
          ]),
      '~contains~0': Mode(
          className: "function",
          begin: "\\[.*\\]\\s*[\\w]+[ ]??\\(",
          end: "\$",
          returnBegin: true,
          relevance: 0,
          contains: [
            Mode(ref: '~contains~0~contains~0'),
            Mode(
                className: "keyword",
                begin:
                    "(if|else|foreach|return|do|while|until|elseif|begin|for|trap|data|dynamicparam|end|break|throw|param|continue|finally|in|switch|exit|filter|try|process|catch|hidden|static|parameter)\\b",
                endsParent: true,
                relevance: 0),
            Mode(
                className: "title",
                begin: "[a-zA-Z]\\w*",
                relevance: 0,
                endsParent: true)
          ]),
    },
    aliases: ["ps", "ps1"],
    lexemes: "-?[A-z\\.\\-]+",
    case_insensitive: true,
    keywords: {
      "keyword":
          "if else foreach return do while until elseif begin for trap data dynamicparam end break throw param continue finally in switch exit filter try process catch hidden static parameter"
    },
    contains: [
      Mode(ref: '~contains~0'),
      Mode(ref: '~contains~0~contains~0~contains~2'),
      Mode(ref: '~contains~0~contains~0~contains~3'),
      NUMBER_MODE,
      Mode(ref: '~contains~0~contains~0~contains~5'),
      Mode(ref: '~contains~0~contains~0~contains~6'),
      Mode(ref: '~contains~0~contains~0~contains~7'),
      Mode(ref: '~contains~0~contains~0~contains~5~contains~1'),
      Mode(ref: '~contains~0~contains~0~contains~9'),
      Mode(ref: '~contains~0~contains~0~contains~10'),
      Mode(
          className: "class",
          beginKeywords: "class enum",
          end: "\\s*[{]",
          excludeEnd: true,
          relevance: 0,
          contains: [TITLE_MODE]),
      Mode(
          className: "function",
          begin: "function\\s+",
          end: "\\s*\\{|\$",
          excludeEnd: true,
          returnBegin: true,
          relevance: 0,
          contains: [
            Mode(begin: "function", relevance: 0, className: "keyword"),
            Mode(
                className: "title",
                begin: "\\w[\\w\\d]*((-)[\\w\\d]+)*",
                relevance: 0),
            Mode(
                begin: "\\(",
                end: "\\)",
                className: "params",
                relevance: 0,
                contains: [
                  Mode(ref: '~contains~0~contains~0~contains~5~contains~1')
                ])
          ]),
      Mode(begin: "using\\s", end: "\$", returnBegin: true, contains: [
        Mode(ref: '~contains~0~contains~0~contains~5'),
        Mode(ref: '~contains~0~contains~0~contains~6'),
        Mode(
            className: "keyword",
            begin: "(using|assembly|command|module|namespace|type)")
      ]),
      Mode(variants: [
        Mode(
            className: "operator",
            begin:
                "(-and|-as|-band|-bnot|-bor|-bxor|-casesensitive|-ccontains|-ceq|-cge|-cgt|-cle|-clike|-clt|-cmatch|-cne|-cnotcontains|-cnotlike|-cnotmatch|-contains|-creplace|-csplit|-eq|-exact|-f|-file|-ge|-gt|-icontains|-ieq|-ige|-igt|-ile|-ilike|-ilt|-imatch|-in|-ine|-inotcontains|-inotlike|-inotmatch|-ireplace|-is|-isnot|-isplit|-join|-le|-like|-lt|-match|-ne|-not|-notcontains|-notin|-notlike|-notmatch|-or|-regex|-replace|-shl|-shr|-split|-wildcard|-xor)\\b"),
        Mode(className: "literal", begin: "(-)[\\w\\d]+", relevance: 0)
      ]),
      Mode(ref: '~contains~0~contains~0')
    ]);
