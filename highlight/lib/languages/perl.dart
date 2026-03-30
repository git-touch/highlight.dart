// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `perl`.
Mode perl(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  final Mode mode18 = Mode();
  final Mode mode19 = Mode();
  final Mode mode20 = Mode();
  final Mode mode21 = Mode();
  final Mode mode22 = Mode();
  final Mode mode23 = Mode();
  final Mode mode24 = Mode();
  final Mode mode25 = Mode();
  final Mode mode26 = Mode();
  final Mode mode27 = Mode();
  final Mode mode28 = Mode();
  final Mode mode29 = Mode();
  final Mode mode30 = Mode();
  final Mode mode31 = Mode();
  final Mode mode32 = Mode();
  final Mode mode33 = Mode();
  final Mode mode34 = Mode();
  final Mode mode35 = Mode();
  final Mode mode36 = Mode();
  final Mode mode37 = Mode();
  final Mode mode38 = Mode();
  final Mode mode39 = Mode();
  final Mode mode40 = Mode();
  final Mode mode41 = Mode();
  final Mode mode42 = Mode();
  final Mode mode43 = Mode();
  final Mode mode44 = Mode();
  final Mode mode45 = Mode();
  final Mode mode46 = Mode();
  final Mode mode47 = Mode();
  final Mode mode48 = Mode();
  final Mode mode49 = Mode();
  final Mode mode50 = Mode();
  mode0.scope = r'variable';
  mode0.variants = [mode1, mode2, mode3];
  mode0.contains = [mode4];
  mode1.begin = r'\$\d';
  mode2.begin =
      r'[$%@](?!")(\^\w\b|#\w+(::\w+)*|\{\w+\}|\w+(::\w*)*)(?![A-Za-z])(?![@$%])';
  mode3.begin = r'[$%@](?!")[^\s\w{=]|\$=';
  mode3.relevance = 0;
  mode4.scope = r'attr';
  mode4.match = r'\s+:\s*\w+(\s*\(.*?\))?';
  mode5.scope = r'comment';
  mode5.begin = r'#';
  mode5.end = r'$';
  mode5.contains = [mode6, mode7];
  mode6.scope = r'doctag';
  mode6.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode6.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode6.excludeBegin = true;
  mode6.relevance = 0;
  mode7.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode8.scope = r'comment';
  mode8.begin = r'^=\w';
  mode8.end = r'=cut';
  mode8.contains = [mode9, mode10];
  mode8.endsWithParent = true;
  mode9.scope = r'doctag';
  mode9.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode9.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode9.excludeBegin = true;
  mode9.relevance = 0;
  mode10.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode11.begin = r'->\{';
  mode11.end = r'\}';
  mode11.contains = [
    mode0,
    mode5,
    mode8,
    r'self',
    mode12,
    mode15,
    mode21,
    mode34,
    mode36,
    mode37,
    mode38,
  ];
  mode12.scope = r'string';
  mode12.contains = [mode13, mode14, mode0];
  mode12.variants = [
    mode40,
    mode41,
    mode42,
    mode43,
    mode44,
    mode45,
    mode46,
    mode47,
    mode48,
    mode49,
    mode50,
  ];
  mode13.begin = r'\\[\s\S]';
  mode13.relevance = 0;
  mode14.scope = r'subst';
  mode14.begin = r'[$@]\{';
  mode14.end = r'\}';
  mode14.keywords = {
    r'$pattern': r'[\w.]+',
    r'keyword':
        r'abs accept alarm and atan2 bind binmode bless break caller chdir chmod chomp chop chown chr chroot class close closedir connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eval exec exists exit exp fcntl field fileno flock for foreach fork format formline getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst length link listen local localtime log lstat lt ma map method mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q|0 qq quotemeta qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir say scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn when while write x|0 xor y|0',
  };
  mode14.contains = [
    mode0,
    mode5,
    mode8,
    mode11,
    mode12,
    mode15,
    mode21,
    mode34,
    mode36,
    mode37,
    mode38,
  ];
  mode15.scope = r'number';
  mode15.variants = [mode16, mode17, mode18, mode19, mode20];
  mode15.relevance = 0;
  mode16.match = r'0?\.[0-9][0-9_]+\b';
  mode17.match = r'\bv?(0|[1-9][0-9_]*(\.[0-9_]+)?|[1-9][0-9_]*)\b';
  mode18.match = r'\b0[0-7][0-7_]*\b';
  mode19.match = r'\b0x[0-9a-fA-F][0-9a-fA-F_]*\b';
  mode20.match = r'\b0b[0-1][0-1_]*\b';
  mode21.begin =
      r'(\/\/|!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~|\b(split|return|print|reverse|grep)\b)\s*';
  mode21.keywords = r'split return print reverse grep';
  mode21.relevance = 0;
  mode21.contains = [mode5, mode22, mode27];
  mode22.scope = r'regexp';
  mode22.variants = [mode23, mode24, mode25, mode26];
  mode22.relevance = 2;
  mode23.begin =
      '(?:s|tr|y)(!|\\/|\\||\\?|\'|"|#)(?:\\\\.|[^\\\\\\/])*?\\1(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}';
  mode24.begin =
      r'(?:s|tr|y)\((?:\\.|[^\\\/])*?\)\((?:\\.|[^\\\/])*?\)[dualxmsipngr]{0,12}';
  mode25.begin =
      r'(?:s|tr|y)\[(?:\\.|[^\\\/])*?\]\[(?:\\.|[^\\\/])*?\][dualxmsipngr]{0,12}';
  mode26.begin =
      r'(?:s|tr|y)\{(?:\\.|[^\\\/])*?\}\{(?:\\.|[^\\\/])*?\}[dualxmsipngr]{0,12}';
  mode27.scope = r'regexp';
  mode27.variants = [mode28, mode29, mode30, mode31, mode32, mode33];
  mode28.begin = r'(m|qr)\/\/';
  mode28.relevance = 0;
  mode29.begin = r'(?:(?:m|qr)?)\/(?:\\.|[^\\\/])*?\/[dualxmsipngr]{0,12}';
  mode30.begin =
      '(?:m|qr)(!|\\/|\\||\\?|\'|"|#)(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}';
  mode31.begin = r'(?:m|qr)\((?:\\.|[^\\\/])*?\)[dualxmsipngr]{0,12}';
  mode32.begin = r'(?:m|qr)\[(?:\\.|[^\\\/])*?\][dualxmsipngr]{0,12}';
  mode33.begin = r'(?:m|qr)\{(?:\\.|[^\\\/])*?\}[dualxmsipngr]{0,12}';
  mode34.scope = r'function';
  mode34.beginKeywords = r'sub method';
  mode34.end = r'(\s*\(.*?\))?[;{]';
  mode34.excludeEnd = true;
  mode34.relevance = 5;
  mode34.contains = [mode35, mode4];
  mode35.scope = r'title';
  mode35.begin = r'[a-zA-Z]\w*';
  mode35.relevance = 0;
  mode36.scope = r'class';
  mode36.beginKeywords = r'class';
  mode36.end = r'[;{]';
  mode36.excludeEnd = true;
  mode36.relevance = 5;
  mode36.contains = [mode35, mode4, mode15];
  mode37.begin = r'-\w\b';
  mode37.relevance = 0;
  mode38.begin = r'^__DATA__$';
  mode38.end = r'^__END__$';
  mode38.subLanguage = r'mojolicious';
  mode38.contains = [mode39];
  mode39.begin = r'^@@.*';
  mode39.end = r'$';
  mode39.scope = r'comment';
  mode40.begin = r'q[qwxr]?\s*\(';
  mode40.end = r'\)';
  mode40.relevance = 5;
  mode41.begin = r'q[qwxr]?\s*\[';
  mode41.end = r'\]';
  mode41.relevance = 5;
  mode42.begin = r'q[qwxr]?\s*\{';
  mode42.end = r'\}';
  mode42.relevance = 5;
  mode43.begin = r'q[qwxr]?\s*\|';
  mode43.end = r'\|';
  mode43.relevance = 5;
  mode44.begin = r'q[qwxr]?\s*<';
  mode44.end = r'>';
  mode44.relevance = 5;
  mode45.begin = r'qw\s+q';
  mode45.end = r'q';
  mode45.relevance = 5;
  mode46.begin = r"'";
  mode46.end = r"'";
  mode46.contains = [mode13];
  mode47.begin = r'"';
  mode47.end = r'"';
  mode48.begin = r'`';
  mode48.end = r'`';
  mode48.contains = [mode13];
  mode49.begin = r'\{\w+\}';
  mode49.relevance = 0;
  mode50.begin = r'-?\w+\s*=>';
  mode50.relevance = 0;
  return Mode(
    name: r'Perl',
    aliases: [r'pl', r'pm'],
    keywords: {
      r'$pattern': r'[\w.]+',
      r'keyword':
          r'abs accept alarm and atan2 bind binmode bless break caller chdir chmod chomp chop chown chr chroot class close closedir connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eval exec exists exit exp fcntl field fileno flock for foreach fork format formline getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst length link listen local localtime log lstat lt ma map method mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q|0 qq quotemeta qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir say scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn when while write x|0 xor y|0',
    },
    contains: [
      mode0,
      mode5,
      mode8,
      mode11,
      mode12,
      mode15,
      mode21,
      mode34,
      mode36,
      mode37,
      mode38,
    ],
  );
}
