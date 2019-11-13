// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final bash = Mode(
    refs: {
      '~contains~3~contains~1': Mode(className: "variable", variants: [
        Mode(begin: "\\\$[\\w\\d#@][\\w\\d_]*"),
        Mode(begin: "\\\$\\{(.*?)}")
      ]),
    },
    aliases: ["sh", "zsh"],
    lexemes: "\\b-?[a-z\\._]+\\b",
    keywords: {
      "keyword": "if then else elif fi for while in do done case esac function",
      "literal": "true false",
      "built_in":
          "break cd continue eval exec exit export getopts hash pwd readonly return shift test times trap umask unset alias bind builtin caller command declare echo enable help let local logout mapfile printf read readarray source type typeset ulimit unalias set shopt autoload bg bindkey bye cap chdir clone comparguments compcall compctl compdescribe compfiles compgroups compquote comptags comptry compvalues dirs disable disown echotc echoti emulate fc fg float functions getcap getln history integer jobs kill limit log noglob popd print pushd pushln rehash sched setcap setopt stat suspend ttyctl unfunction unhash unlimit unsetopt vared wait whence where which zcompile zformat zftp zle zmodload zparseopts zprof zpty zregexparse zsocket zstyle ztcp",
      "_": "-ne -eq -lt -gt -f -d -e -s -l -a"
    },
    contains: [
      Mode(className: "meta", begin: "^#![^\\n]+sh\\s*\$", relevance: 10),
      Mode(
          className: "function",
          begin: "\\w[\\w\\d_]*\\s*\\(\\s*\\)\\s*\\{",
          returnBegin: true,
          contains: [
            Mode(className: "title", begin: "\\w[\\w\\d_]*", relevance: 0)
          ],
          relevance: 0),
      HASH_COMMENT_MODE,
      Mode(className: "string", begin: "\"", end: "\"", contains: [
        BACKSLASH_ESCAPE,
        Mode(ref: '~contains~3~contains~1'),
        Mode(
            className: "variable",
            begin: "\\\$\\(",
            end: "\\)",
            contains: [BACKSLASH_ESCAPE])
      ]),
      Mode(className: "", begin: "\\\\\""),
      Mode(className: "string", begin: "'", end: "'"),
      Mode(ref: '~contains~3~contains~1')
    ]);
