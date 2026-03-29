// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode perl(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  final Mode _mode19 = Mode();
  final Mode _mode20 = Mode();
  final Mode _mode21 = Mode();
  final Mode _mode22 = Mode();
  final Mode _mode23 = Mode();
  final Mode _mode24 = Mode();
  final Mode _mode25 = Mode();
  final Mode _mode26 = Mode();
  final Mode _mode27 = Mode();
  final Mode _mode28 = Mode();
  final Mode _mode29 = Mode();
  final Mode _mode30 = Mode();
  final Mode _mode31 = Mode();
  final Mode _mode32 = Mode();
  final Mode _mode33 = Mode();
  final Mode _mode34 = Mode();
  final Mode _mode35 = Mode();
  final Mode _mode36 = Mode();
  final Mode _mode37 = Mode();
  final Mode _mode38 = Mode();
  final Mode _mode39 = Mode();
  final Mode _mode40 = Mode();
  final Mode _mode41 = Mode();
  final Mode _mode42 = Mode();
  final Mode _mode43 = Mode();
  final Mode _mode44 = Mode();
  final Mode _mode45 = Mode();
  final Mode _mode46 = Mode();
  final Mode _mode47 = Mode();
  final Mode _mode48 = Mode();
  final Mode _mode49 = Mode();
  final Mode _mode50 = Mode();
  _mode0.scope = r'variable';
  _mode0.variants = [_mode1, _mode2, _mode3];
  _mode0.contains = [_mode4];
  _mode1.begin = r'\$\d';
  _mode2.begin =
      r'[$%@](?!")(\^\w\b|#\w+(::\w+)*|\{\w+\}|\w+(::\w*)*)(?![A-Za-z])(?![@$%])';
  _mode3.begin = r'[$%@](?!")[^\s\w{=]|\$=';
  _mode3.relevance = 0;
  _mode4.scope = r'attr';
  _mode4.match = r'\s+:\s*\w+(\s*\(.*?\))?';
  _mode5.scope = r'comment';
  _mode5.begin = r'#';
  _mode5.end = r'$';
  _mode5.contains = [_mode6, _mode7];
  _mode6.scope = r'doctag';
  _mode6.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode6.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode6.excludeBegin = true;
  _mode6.relevance = 0;
  _mode7.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode8.scope = r'comment';
  _mode8.begin = r'^=\w';
  _mode8.end = r'=cut';
  _mode8.contains = [_mode9, _mode10];
  _mode8.endsWithParent = true;
  _mode9.scope = r'doctag';
  _mode9.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode9.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode9.excludeBegin = true;
  _mode9.relevance = 0;
  _mode10.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode11.begin = r'->\{';
  _mode11.end = r'\}';
  _mode11.contains = [
    _mode0,
    _mode5,
    _mode8,
    r'self',
    _mode12,
    _mode15,
    _mode21,
    _mode34,
    _mode36,
    _mode37,
    _mode38,
  ];
  _mode12.scope = r'string';
  _mode12.contains = [_mode13, _mode14, _mode0];
  _mode12.variants = [
    _mode40,
    _mode41,
    _mode42,
    _mode43,
    _mode44,
    _mode45,
    _mode46,
    _mode47,
    _mode48,
    _mode49,
    _mode50,
  ];
  _mode13.begin = r'\\[\s\S]';
  _mode13.relevance = 0;
  _mode14.scope = r'subst';
  _mode14.begin = r'[$@]\{';
  _mode14.end = r'\}';
  _mode14.keywords = {
    r'$pattern': r'[\w.]+',
    r'keyword':
        r'abs accept alarm and atan2 bind binmode bless break caller chdir chmod chomp chop chown chr chroot class close closedir connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eval exec exists exit exp fcntl field fileno flock for foreach fork format formline getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst length link listen local localtime log lstat lt ma map method mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q|0 qq quotemeta qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir say scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn when while write x|0 xor y|0',
  };
  _mode14.contains = [
    _mode0,
    _mode5,
    _mode8,
    _mode11,
    _mode12,
    _mode15,
    _mode21,
    _mode34,
    _mode36,
    _mode37,
    _mode38,
  ];
  _mode15.scope = r'number';
  _mode15.variants = [_mode16, _mode17, _mode18, _mode19, _mode20];
  _mode15.relevance = 0;
  _mode16.match = r'0?\.[0-9][0-9_]+\b';
  _mode17.match = r'\bv?(0|[1-9][0-9_]*(\.[0-9_]+)?|[1-9][0-9_]*)\b';
  _mode18.match = r'\b0[0-7][0-7_]*\b';
  _mode19.match = r'\b0x[0-9a-fA-F][0-9a-fA-F_]*\b';
  _mode20.match = r'\b0b[0-1][0-1_]*\b';
  _mode21.begin =
      r'(\/\/|!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~|\b(split|return|print|reverse|grep)\b)\s*';
  _mode21.keywords = r'split return print reverse grep';
  _mode21.relevance = 0;
  _mode21.contains = [_mode5, _mode22, _mode27];
  _mode22.scope = r'regexp';
  _mode22.variants = [_mode23, _mode24, _mode25, _mode26];
  _mode22.relevance = 2;
  _mode23.begin =
      '(?:s|tr|y)(!|\\/|\\||\\?|\'|"|#)(?:\\\\.|[^\\\\\\/])*?\\1(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}';
  _mode24.begin =
      r'(?:s|tr|y)\((?:\\.|[^\\\/])*?\)\((?:\\.|[^\\\/])*?\)[dualxmsipngr]{0,12}';
  _mode25.begin =
      r'(?:s|tr|y)\[(?:\\.|[^\\\/])*?\]\[(?:\\.|[^\\\/])*?\][dualxmsipngr]{0,12}';
  _mode26.begin =
      r'(?:s|tr|y)\{(?:\\.|[^\\\/])*?\}\{(?:\\.|[^\\\/])*?\}[dualxmsipngr]{0,12}';
  _mode27.scope = r'regexp';
  _mode27.variants = [_mode28, _mode29, _mode30, _mode31, _mode32, _mode33];
  _mode28.begin = r'(m|qr)\/\/';
  _mode28.relevance = 0;
  _mode29.begin = r'(?:(?:m|qr)?)\/(?:\\.|[^\\\/])*?\/[dualxmsipngr]{0,12}';
  _mode30.begin =
      '(?:m|qr)(!|\\/|\\||\\?|\'|"|#)(?:\\\\.|[^\\\\\\/])*?\\1[dualxmsipngr]{0,12}';
  _mode31.begin = r'(?:m|qr)\((?:\\.|[^\\\/])*?\)[dualxmsipngr]{0,12}';
  _mode32.begin = r'(?:m|qr)\[(?:\\.|[^\\\/])*?\][dualxmsipngr]{0,12}';
  _mode33.begin = r'(?:m|qr)\{(?:\\.|[^\\\/])*?\}[dualxmsipngr]{0,12}';
  _mode34.scope = r'function';
  _mode34.beginKeywords = r'sub method';
  _mode34.end = r'(\s*\(.*?\))?[;{]';
  _mode34.excludeEnd = true;
  _mode34.relevance = 5;
  _mode34.contains = [_mode35, _mode4];
  _mode35.scope = r'title';
  _mode35.begin = r'[a-zA-Z]\w*';
  _mode35.relevance = 0;
  _mode36.scope = r'class';
  _mode36.beginKeywords = r'class';
  _mode36.end = r'[;{]';
  _mode36.excludeEnd = true;
  _mode36.relevance = 5;
  _mode36.contains = [_mode35, _mode4, _mode15];
  _mode37.begin = r'-\w\b';
  _mode37.relevance = 0;
  _mode38.begin = r'^__DATA__$';
  _mode38.end = r'^__END__$';
  _mode38.subLanguage = r'mojolicious';
  _mode38.contains = [_mode39];
  _mode39.begin = r'^@@.*';
  _mode39.end = r'$';
  _mode39.scope = r'comment';
  _mode40.begin = r'q[qwxr]?\s*\(';
  _mode40.end = r'\)';
  _mode40.relevance = 5;
  _mode41.begin = r'q[qwxr]?\s*\[';
  _mode41.end = r'\]';
  _mode41.relevance = 5;
  _mode42.begin = r'q[qwxr]?\s*\{';
  _mode42.end = r'\}';
  _mode42.relevance = 5;
  _mode43.begin = r'q[qwxr]?\s*\|';
  _mode43.end = r'\|';
  _mode43.relevance = 5;
  _mode44.begin = r'q[qwxr]?\s*<';
  _mode44.end = r'>';
  _mode44.relevance = 5;
  _mode45.begin = r'qw\s+q';
  _mode45.end = r'q';
  _mode45.relevance = 5;
  _mode46.begin = r"'";
  _mode46.end = r"'";
  _mode46.contains = [_mode13];
  _mode47.begin = r'"';
  _mode47.end = r'"';
  _mode48.begin = r'`';
  _mode48.end = r'`';
  _mode48.contains = [_mode13];
  _mode49.begin = r'\{\w+\}';
  _mode49.relevance = 0;
  _mode50.begin = r'-?\w+\s*=>';
  _mode50.relevance = 0;
  return Mode(
    name: r'Perl',
    aliases: [r'pl', r'pm'],
    keywords: {
      r'$pattern': r'[\w.]+',
      r'keyword':
          r'abs accept alarm and atan2 bind binmode bless break caller chdir chmod chomp chop chown chr chroot class close closedir connect continue cos crypt dbmclose dbmopen defined delete die do dump each else elsif endgrent endhostent endnetent endprotoent endpwent endservent eof eval exec exists exit exp fcntl field fileno flock for foreach fork format formline getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername getpgrp getpriority getprotobyname getprotobynumber getprotoent getpwent getpwnam getpwuid getservbyname getservbyport getservent getsockname getsockopt given glob gmtime goto grep gt hex if index int ioctl join keys kill last lc lcfirst length link listen local localtime log lstat lt ma map method mkdir msgctl msgget msgrcv msgsnd my ne next no not oct open opendir or ord our pack package pipe pop pos print printf prototype push q|0 qq quotemeta qw qx rand read readdir readline readlink readpipe recv redo ref rename require reset return reverse rewinddir rindex rmdir say scalar seek seekdir select semctl semget semop send setgrent sethostent setnetent setpgrp setpriority setprotoent setpwent setservent setsockopt shift shmctl shmget shmread shmwrite shutdown sin sleep socket socketpair sort splice split sprintf sqrt srand stat state study sub substr symlink syscall sysopen sysread sysseek system syswrite tell telldir tie tied time times tr truncate uc ucfirst umask undef unless unlink unpack unshift untie until use utime values vec wait waitpid wantarray warn when while write x|0 xor y|0',
    },
    contains: [
      _mode0,
      _mode5,
      _mode8,
      _mode11,
      _mode12,
      _mode15,
      _mode21,
      _mode34,
      _mode36,
      _mode37,
      _mode38,
    ],
  );
}
