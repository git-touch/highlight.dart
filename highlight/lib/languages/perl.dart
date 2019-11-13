// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final perl = Mode(
    refs: {
      '~contains~3~contains~4~contains~1~contains~9': Mode(
          begin: "^__DATA__\$",
          end: "^__END__\$",
          subLanguage: ["mojolicious"],
          contains: [Mode(begin: "^@@.*", end: "\$", className: "comment")]),
      '~contains~3~contains~4~contains~1~contains~8':
          Mode(begin: "-\\w\\b", relevance: 0),
      '~contains~3~contains~4~contains~1~contains~7': Mode(
          className: "function",
          beginKeywords: "sub",
          end: "(\\s*\\(.*?\\))?[;{]",
          excludeEnd: true,
          relevance: 5,
          contains: [TITLE_MODE]),
      '~contains~3~contains~4~contains~1~contains~6': Mode(
          begin:
              "(\\/\\/|!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||\\x7e|\\b(split|return|print|reverse|grep)\\b)\\s*",
          keywords: "split return print reverse grep",
          relevance: 0,
          contains: [
            HASH_COMMENT_MODE,
            Mode(
                className: "regexp",
                begin: "(s|tr|y)/(\\\\.|[^/])*/(\\\\.|[^/])*/[a-z]*",
                relevance: 10),
            Mode(
                className: "regexp",
                begin: "(m|qr)?/",
                end: "/[a-z]*",
                contains: [BACKSLASH_ESCAPE],
                relevance: 0)
          ]),
      '~contains~3~contains~4~contains~1~contains~5': Mode(
          className: "number",
          begin:
              "(\\b0[0-7_]+)|(\\b0x[0-9a-fA-F_]+)|(\\b[1-9][0-9_]*(\\.[0-9_]+)?)|[0_]\\b",
          relevance: 0),
      '~contains~3~contains~4': Mode(className: "string", contains: [
        BACKSLASH_ESCAPE,
        Mode(
            className: "subst",
            begin: "[\$@]\\{",
            end: "\\}",
            keywords:
                "getpwent getservent quotemeta msgrcv scalar kill dbmclose undef lc ma syswrite tr send umask sysopen shmwrite vec qx utime local oct semctl localtime readpipe do return format read sprintf dbmopen pop getpgrp not getpwnam rewinddir qqfileno qw endprotoent wait sethostent bless s|0 opendir continue each sleep endgrent shutdown dump chomp connect getsockname die socketpair close flock exists index shmgetsub for endpwent redo lstat msgctl setpgrp abs exit select print ref gethostbyaddr unshift fcntl syscall goto getnetbyaddr join gmtime symlink semget splice x|0 getpeername recv log setsockopt cos last reverse gethostbyname getgrnam study formline endhostent times chop length gethostent getnetent pack getprotoent getservbyname rand mkdir pos chmod y|0 substr endnetent printf next open msgsnd readdir use unlink getsockopt getpriority rindex wantarray hex system getservbyport endservent int chr untie rmdir prototype tell listen fork shmread ucfirst setprotoent else sysseek link getgrgid shmctl waitpid unpack getnetbyname reset chdir grep split require caller lcfirst until warn while values shift telldir getpwuid my getprotobynumber delete and sort uc defined srand accept package seekdir getprotobyname semop our rename seek if q|0 chroot sysread setpwent no crypt getc chown sqrt write setnetent setpriority foreach tie sin msgget map stat getlogin unless elsif truncate exec keys glob tied closedirioctl socket readlink eval xor readline binmode setservent eof ord bind alarm pipe atan2 getgrent exp time push setgrent gt lt or ne m|0 break given say state when",
            contains: [
              Mode(ref: '~contains~0'),
              HASH_COMMENT_MODE,
              Mode(ref: '~contains~2'),
              Mode(ref: '~contains~3'),
              Mode(ref: '~contains~3~contains~4'),
              Mode(ref: '~contains~3~contains~4~contains~1~contains~5'),
              Mode(ref: '~contains~3~contains~4~contains~1~contains~6'),
              Mode(ref: '~contains~3~contains~4~contains~1~contains~7'),
              Mode(ref: '~contains~3~contains~4~contains~1~contains~8'),
              Mode(ref: '~contains~3~contains~4~contains~1~contains~9')
            ]),
        Mode(ref: '~contains~0')
      ], variants: [
        Mode(begin: "q[qwxr]?\\s*\\(", end: "\\)", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*\\[", end: "\\]", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*\\{", end: "\\}", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*\\|", end: "\\|", relevance: 5),
        Mode(begin: "q[qwxr]?\\s*\\<", end: "\\>", relevance: 5),
        Mode(begin: "qw\\s+q", end: "q", relevance: 5),
        Mode(begin: "'", end: "'", contains: [BACKSLASH_ESCAPE]),
        Mode(begin: "\"", end: "\""),
        Mode(begin: "`", end: "`", contains: [BACKSLASH_ESCAPE]),
        Mode(begin: "{\\w+}", contains: [], relevance: 0),
        Mode(begin: "-?\\w+\\s*\\=\\>", contains: [], relevance: 0)
      ]),
      '~contains~3': Mode(begin: "->{", end: "}", contains: [
        Mode(ref: '~contains~0'),
        HASH_COMMENT_MODE,
        Mode(ref: '~contains~2'),
        Mode(ref: '~contains~3'),
        Mode(ref: '~contains~3~contains~4'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~5'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~6'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~7'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~8'),
        Mode(ref: '~contains~3~contains~4~contains~1~contains~9')
      ]),
      '~contains~2': Mode(
          className: "comment",
          begin: "^\\=\\w",
          end: "\\=cut",
          contains: [
            PHRASAL_WORDS_MODE,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          endsWithParent: true),
      '~contains~0': Mode(variants: [
        Mode(begin: "\\\$\\d"),
        Mode(begin: "[\\\$%@](\\^\\w\\b|#\\w+(::\\w+)*|{\\w+}|\\w+(::\\w*)*)"),
        Mode(begin: "[\\\$%@][^\\s\\w{]", relevance: 0)
      ]),
    },
    aliases: ["pl", "pm"],
    lexemes: "[\\w\\.]+",
    keywords:
        "getpwent getservent quotemeta msgrcv scalar kill dbmclose undef lc ma syswrite tr send umask sysopen shmwrite vec qx utime local oct semctl localtime readpipe do return format read sprintf dbmopen pop getpgrp not getpwnam rewinddir qqfileno qw endprotoent wait sethostent bless s|0 opendir continue each sleep endgrent shutdown dump chomp connect getsockname die socketpair close flock exists index shmgetsub for endpwent redo lstat msgctl setpgrp abs exit select print ref gethostbyaddr unshift fcntl syscall goto getnetbyaddr join gmtime symlink semget splice x|0 getpeername recv log setsockopt cos last reverse gethostbyname getgrnam study formline endhostent times chop length gethostent getnetent pack getprotoent getservbyname rand mkdir pos chmod y|0 substr endnetent printf next open msgsnd readdir use unlink getsockopt getpriority rindex wantarray hex system getservbyport endservent int chr untie rmdir prototype tell listen fork shmread ucfirst setprotoent else sysseek link getgrgid shmctl waitpid unpack getnetbyname reset chdir grep split require caller lcfirst until warn while values shift telldir getpwuid my getprotobynumber delete and sort uc defined srand accept package seekdir getprotobyname semop our rename seek if q|0 chroot sysread setpwent no crypt getc chown sqrt write setnetent setpriority foreach tie sin msgget map stat getlogin unless elsif truncate exec keys glob tied closedirioctl socket readlink eval xor readline binmode setservent eof ord bind alarm pipe atan2 getgrent exp time push setgrent gt lt or ne m|0 break given say state when",
    contains: [
      Mode(ref: '~contains~0'),
      HASH_COMMENT_MODE,
      Mode(ref: '~contains~2'),
      Mode(ref: '~contains~3'),
      Mode(ref: '~contains~3~contains~4'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~5'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~6'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~7'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~8'),
      Mode(ref: '~contains~3~contains~4~contains~1~contains~9')
    ]);
