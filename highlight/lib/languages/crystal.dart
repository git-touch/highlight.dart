// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode crystal(Highlight hljs) {
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
  final Mode _mode51 = Mode();
  final Mode _mode52 = Mode();
  final Mode _mode53 = Mode();
  final Mode _mode54 = Mode();
  final Mode _mode55 = Mode();
  final Mode _mode56 = Mode();
  final Mode _mode57 = Mode();
  final Mode _mode58 = Mode();
  final Mode _mode59 = Mode();
  final Mode _mode60 = Mode();
  final Mode _mode61 = Mode();
  final Mode _mode62 = Mode();
  final Mode _mode63 = Mode();
  final Mode _mode64 = Mode();
  final Mode _mode65 = Mode();
  final Mode _mode66 = Mode();
  final Mode _mode67 = Mode();
  final Mode _mode68 = Mode();
  final Mode _mode69 = Mode();
  _mode0.scope = r'template-variable';
  _mode0.variants = [_mode1, _mode2];
  _mode0.keywords = {
    r'$pattern': r'[a-zA-Z_]\w*[!?=]?',
    r'keyword':
        r'abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__',
    r'literal': r'false nil true',
  };
  _mode0.contains = [
    _mode3,
    _mode6,
    _mode17,
    _mode27,
    _mode31,
    _mode33,
    _mode34,
    _mode37,
    _mode40,
    _mode42,
    _mode44,
    _mode46,
    _mode48,
    _mode49,
    _mode51,
  ];
  _mode1.begin = r'\{\{';
  _mode1.end = r'\}\}';
  _mode2.begin = r'\{%';
  _mode2.end = r'%\}';
  _mode3.scope = r'string';
  _mode3.contains = [_mode4, _mode5];
  _mode3.variants = [
    _mode57,
    _mode58,
    _mode59,
    _mode60,
    _mode62,
    _mode64,
    _mode66,
    _mode68,
    _mode69,
  ];
  _mode3.relevance = 0;
  _mode4.begin = r'\\[\s\S]';
  _mode4.relevance = 0;
  _mode5.scope = r'subst';
  _mode5.begin = r'#\{';
  _mode5.end = r'\}';
  _mode5.keywords = {
    r'$pattern': r'[a-zA-Z_]\w*[!?=]?',
    r'keyword':
        r'abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__',
    r'literal': r'false nil true',
  };
  _mode5.contains = [
    _mode0,
    _mode3,
    _mode6,
    _mode17,
    _mode27,
    _mode31,
    _mode33,
    _mode34,
    _mode37,
    _mode40,
    _mode42,
    _mode44,
    _mode46,
    _mode48,
    _mode49,
    _mode51,
  ];
  _mode6.scope = r'string';
  _mode6.variants = [_mode7, _mode9, _mode11, _mode13, _mode15, _mode16];
  _mode6.relevance = 0;
  _mode7.begin = r'%q\(';
  _mode7.end = r'\)';
  _mode7.contains = [_mode8];
  _mode8.begin = r'\(';
  _mode8.end = r'\)';
  _mode8.contains = [r'self'];
  _mode9.begin = r'%q\[';
  _mode9.end = r'\]';
  _mode9.contains = [_mode10];
  _mode10.begin = r'\[';
  _mode10.end = r'\]';
  _mode10.contains = [r'self'];
  _mode11.begin = r'%q\{';
  _mode11.end = r'\}';
  _mode11.contains = [_mode12];
  _mode12.begin = r'\{';
  _mode12.end = r'\}';
  _mode12.contains = [r'self'];
  _mode13.begin = r'%q<';
  _mode13.end = r'>';
  _mode13.contains = [_mode14];
  _mode14.begin = r'<';
  _mode14.end = r'>';
  _mode14.contains = [r'self'];
  _mode15.begin = r'%q\|';
  _mode15.end = r'\|';
  _mode16.begin = r"<<-'\w+'$";
  _mode16.end = r'^\s*\w+$';
  _mode17.scope = r'regexp';
  _mode17.contains = [_mode4, _mode5];
  _mode17.variants = [_mode18, _mode20, _mode22, _mode24, _mode26];
  _mode17.relevance = 0;
  _mode18.begin = r'%r\(';
  _mode18.end = r'\)';
  _mode18.contains = [_mode19];
  _mode19.begin = r'\(';
  _mode19.end = r'\)';
  _mode19.contains = [r'self'];
  _mode20.begin = r'%r\[';
  _mode20.end = r'\]';
  _mode20.contains = [_mode21];
  _mode21.begin = r'\[';
  _mode21.end = r'\]';
  _mode21.contains = [r'self'];
  _mode22.begin = r'%r\{';
  _mode22.end = r'\}';
  _mode22.contains = [_mode23];
  _mode23.begin = r'\{';
  _mode23.end = r'\}';
  _mode23.contains = [r'self'];
  _mode24.begin = r'%r<';
  _mode24.end = r'>';
  _mode24.contains = [_mode25];
  _mode25.begin = r'<';
  _mode25.end = r'>';
  _mode25.contains = [r'self'];
  _mode26.begin = r'%r\|';
  _mode26.end = r'\|';
  _mode27.begin =
      r'(?!%\})(!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~|\n|\b(case|if|select|unless|until|when|while)\b)\s*';
  _mode27.keywords = r'case if select unless until when while';
  _mode27.contains = [_mode28];
  _mode27.relevance = 0;
  _mode28.scope = r'regexp';
  _mode28.contains = [_mode4, _mode5];
  _mode28.variants = [_mode29, _mode30];
  _mode29.begin = r'//[a-z]*';
  _mode29.relevance = 0;
  _mode30.begin = r'/(?!\/)';
  _mode30.end = r'/[a-z]*';
  _mode31.scope = r'meta';
  _mode31.begin = r'@\[';
  _mode31.end = r'\]';
  _mode31.contains = [_mode32];
  _mode32.scope = r'string';
  _mode32.begin = r'"';
  _mode32.end = r'"';
  _mode32.illegal = r'\n';
  _mode32.contains = [_mode4];
  _mode33.scope = r'variable';
  _mode33.begin = r"(\$\W)|((\$|@@?)(\w+))(?=[^@$?])(?![A-Za-z])(?![@$?'])";
  _mode34.scope = r'comment';
  _mode34.begin = r'#';
  _mode34.end = r'$';
  _mode34.contains = [_mode35, _mode36];
  _mode35.scope = r'doctag';
  _mode35.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode35.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode35.excludeBegin = true;
  _mode35.relevance = 0;
  _mode36.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode37.scope = r'class';
  _mode37.beginKeywords = r'class module struct';
  _mode37.end = r'$|;';
  _mode37.illegal = r'=';
  _mode37.contains = [_mode34, _mode38, _mode39];
  _mode38.scope = r'title';
  _mode38.begin = r'[A-Za-z_]\w*(::\w+)*(\?|!)?';
  _mode38.relevance = 0;
  _mode39.begin = r'<';
  _mode40.scope = r'class';
  _mode40.beginKeywords = r'lib enum union';
  _mode40.end = r'$|;';
  _mode40.illegal = r'=';
  _mode40.contains = [_mode34, _mode41];
  _mode41.scope = r'title';
  _mode41.begin = r'[A-Za-z_]\w*(::\w+)*(\?|!)?';
  _mode41.relevance = 0;
  _mode42.beginKeywords = r'annotation';
  _mode42.end = r'$|;';
  _mode42.illegal = r'=';
  _mode42.contains = [_mode34, _mode43];
  _mode42.relevance = 2;
  _mode43.scope = r'title';
  _mode43.begin = r'[A-Za-z_]\w*(::\w+)*(\?|!)?';
  _mode43.relevance = 0;
  _mode44.scope = r'function';
  _mode44.beginKeywords = r'def';
  _mode44.end = r'\B\b';
  _mode44.contains = [_mode45];
  _mode45.scope = r'title';
  _mode45.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\*\*|\[\][=?]?';
  _mode45.relevance = 0;
  _mode45.endsParent = true;
  _mode46.scope = r'function';
  _mode46.beginKeywords = r'fun macro';
  _mode46.end = r'\B\b';
  _mode46.contains = [_mode47];
  _mode46.relevance = 2;
  _mode47.scope = r'title';
  _mode47.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\*\*|\[\][=?]?';
  _mode47.relevance = 0;
  _mode47.endsParent = true;
  _mode48.scope = r'symbol';
  _mode48.begin = r'[a-zA-Z_]\w*(!|\?)?:';
  _mode48.relevance = 0;
  _mode49.scope = r'symbol';
  _mode49.begin = r':';
  _mode49.contains = [_mode3, _mode50];
  _mode49.relevance = 0;
  _mode50.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\*\*|\[\][=?]?';
  _mode51.scope = r'number';
  _mode51.variants = [_mode52, _mode53, _mode54, _mode55, _mode56];
  _mode51.relevance = 0;
  _mode52.begin = r'\b0b([01_]+)(_?[ui](8|16|32|64|128))?';
  _mode53.begin = r'\b0o([0-7_]+)(_?[ui](8|16|32|64|128))?';
  _mode54.begin = r'\b0x([A-Fa-f0-9_]+)(_?[ui](8|16|32|64|128))?';
  _mode55.begin =
      r'\b([1-9][0-9_]*[0-9]|[0-9])(\.[0-9][0-9_]*)?([eE]_?[-+]?[0-9_]*)?(_?f(32|64))?(?!_)';
  _mode56.begin = r'\b([1-9][0-9_]*|0)(_?[ui](8|16|32|64|128))?';
  _mode57.begin = r"'";
  _mode57.end = r"'";
  _mode58.begin = r'"';
  _mode58.end = r'"';
  _mode59.begin = r'`';
  _mode59.end = r'`';
  _mode60.begin = r'%[Qwi]?\(';
  _mode60.end = r'\)';
  _mode60.contains = [_mode61];
  _mode61.begin = r'\(';
  _mode61.end = r'\)';
  _mode61.contains = [r'self'];
  _mode62.begin = r'%[Qwi]?\[';
  _mode62.end = r'\]';
  _mode62.contains = [_mode63];
  _mode63.begin = r'\[';
  _mode63.end = r'\]';
  _mode63.contains = [r'self'];
  _mode64.begin = r'%[Qwi]?\{';
  _mode64.end = r'\}';
  _mode64.contains = [_mode65];
  _mode65.begin = r'\{';
  _mode65.end = r'\}';
  _mode65.contains = [r'self'];
  _mode66.begin = r'%[Qwi]?<';
  _mode66.end = r'>';
  _mode66.contains = [_mode67];
  _mode67.begin = r'<';
  _mode67.end = r'>';
  _mode67.contains = [r'self'];
  _mode68.begin = r'%[Qwi]?\|';
  _mode68.end = r'\|';
  _mode69.begin = r'<<-\w+$';
  _mode69.end = r'^\s*\w+$';
  return Mode(
    name: r'Crystal',
    aliases: [r'cr'],
    keywords: {
      r'$pattern': r'[a-zA-Z_]\w*[!?=]?',
      r'keyword':
          r'abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__',
      r'literal': r'false nil true',
    },
    contains: [
      _mode0,
      _mode3,
      _mode6,
      _mode17,
      _mode27,
      _mode31,
      _mode33,
      _mode34,
      _mode37,
      _mode40,
      _mode42,
      _mode44,
      _mode46,
      _mode48,
      _mode49,
      _mode51,
    ],
  );
}
