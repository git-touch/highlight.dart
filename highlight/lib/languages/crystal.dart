// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `crystal`.
Mode crystal(Highlight hljs) {
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
  final Mode mode51 = Mode();
  final Mode mode52 = Mode();
  final Mode mode53 = Mode();
  final Mode mode54 = Mode();
  final Mode mode55 = Mode();
  final Mode mode56 = Mode();
  final Mode mode57 = Mode();
  final Mode mode58 = Mode();
  final Mode mode59 = Mode();
  final Mode mode60 = Mode();
  final Mode mode61 = Mode();
  final Mode mode62 = Mode();
  final Mode mode63 = Mode();
  final Mode mode64 = Mode();
  final Mode mode65 = Mode();
  final Mode mode66 = Mode();
  final Mode mode67 = Mode();
  final Mode mode68 = Mode();
  final Mode mode69 = Mode();
  mode0.scope = r'template-variable';
  mode0.variants = [mode1, mode2];
  mode0.keywords = {
    r'$pattern': r'[a-zA-Z_]\w*[!?=]?',
    r'keyword':
        r'abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__',
    r'literal': r'false nil true',
  };
  mode0.contains = [
    mode3,
    mode6,
    mode17,
    mode27,
    mode31,
    mode33,
    mode34,
    mode37,
    mode40,
    mode42,
    mode44,
    mode46,
    mode48,
    mode49,
    mode51,
  ];
  mode1.begin = r'\{\{';
  mode1.end = r'\}\}';
  mode2.begin = r'\{%';
  mode2.end = r'%\}';
  mode3.scope = r'string';
  mode3.contains = [mode4, mode5];
  mode3.variants = [
    mode57,
    mode58,
    mode59,
    mode60,
    mode62,
    mode64,
    mode66,
    mode68,
    mode69,
  ];
  mode3.relevance = 0;
  mode4.begin = r'\\[\s\S]';
  mode4.relevance = 0;
  mode5.scope = r'subst';
  mode5.begin = r'#\{';
  mode5.end = r'\}';
  mode5.keywords = {
    r'$pattern': r'[a-zA-Z_]\w*[!?=]?',
    r'keyword':
        r'abstract alias annotation as as? asm begin break case class def do else elsif end ensure enum extend for fun if include instance_sizeof is_a? lib macro module next nil? of out pointerof private protected rescue responds_to? return require select self sizeof struct super then type typeof union uninitialized unless until verbatim when while with yield __DIR__ __END_LINE__ __FILE__ __LINE__',
    r'literal': r'false nil true',
  };
  mode5.contains = [
    mode0,
    mode3,
    mode6,
    mode17,
    mode27,
    mode31,
    mode33,
    mode34,
    mode37,
    mode40,
    mode42,
    mode44,
    mode46,
    mode48,
    mode49,
    mode51,
  ];
  mode6.scope = r'string';
  mode6.variants = [mode7, mode9, mode11, mode13, mode15, mode16];
  mode6.relevance = 0;
  mode7.begin = r'%q\(';
  mode7.end = r'\)';
  mode7.contains = [mode8];
  mode8.begin = r'\(';
  mode8.end = r'\)';
  mode8.contains = [r'self'];
  mode9.begin = r'%q\[';
  mode9.end = r'\]';
  mode9.contains = [mode10];
  mode10.begin = r'\[';
  mode10.end = r'\]';
  mode10.contains = [r'self'];
  mode11.begin = r'%q\{';
  mode11.end = r'\}';
  mode11.contains = [mode12];
  mode12.begin = r'\{';
  mode12.end = r'\}';
  mode12.contains = [r'self'];
  mode13.begin = r'%q<';
  mode13.end = r'>';
  mode13.contains = [mode14];
  mode14.begin = r'<';
  mode14.end = r'>';
  mode14.contains = [r'self'];
  mode15.begin = r'%q\|';
  mode15.end = r'\|';
  mode16.begin = r"<<-'\w+'$";
  mode16.end = r'^\s*\w+$';
  mode17.scope = r'regexp';
  mode17.contains = [mode4, mode5];
  mode17.variants = [mode18, mode20, mode22, mode24, mode26];
  mode17.relevance = 0;
  mode18.begin = r'%r\(';
  mode18.end = r'\)';
  mode18.contains = [mode19];
  mode19.begin = r'\(';
  mode19.end = r'\)';
  mode19.contains = [r'self'];
  mode20.begin = r'%r\[';
  mode20.end = r'\]';
  mode20.contains = [mode21];
  mode21.begin = r'\[';
  mode21.end = r'\]';
  mode21.contains = [r'self'];
  mode22.begin = r'%r\{';
  mode22.end = r'\}';
  mode22.contains = [mode23];
  mode23.begin = r'\{';
  mode23.end = r'\}';
  mode23.contains = [r'self'];
  mode24.begin = r'%r<';
  mode24.end = r'>';
  mode24.contains = [mode25];
  mode25.begin = r'<';
  mode25.end = r'>';
  mode25.contains = [r'self'];
  mode26.begin = r'%r\|';
  mode26.end = r'\|';
  mode27.begin =
      r'(?!%\})(!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~|\n|\b(case|if|select|unless|until|when|while)\b)\s*';
  mode27.keywords = r'case if select unless until when while';
  mode27.contains = [mode28];
  mode27.relevance = 0;
  mode28.scope = r'regexp';
  mode28.contains = [mode4, mode5];
  mode28.variants = [mode29, mode30];
  mode29.begin = r'//[a-z]*';
  mode29.relevance = 0;
  mode30.begin = r'/(?!\/)';
  mode30.end = r'/[a-z]*';
  mode31.scope = r'meta';
  mode31.begin = r'@\[';
  mode31.end = r'\]';
  mode31.contains = [mode32];
  mode32.scope = r'string';
  mode32.begin = r'"';
  mode32.end = r'"';
  mode32.illegal = r'\n';
  mode32.contains = [mode4];
  mode33.scope = r'variable';
  mode33.begin = r"(\$\W)|((\$|@@?)(\w+))(?=[^@$?])(?![A-Za-z])(?![@$?'])";
  mode34.scope = r'comment';
  mode34.begin = r'#';
  mode34.end = r'$';
  mode34.contains = [mode35, mode36];
  mode35.scope = r'doctag';
  mode35.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode35.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode35.excludeBegin = true;
  mode35.relevance = 0;
  mode36.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode37.scope = r'class';
  mode37.beginKeywords = r'class module struct';
  mode37.end = r'$|;';
  mode37.illegal = r'=';
  mode37.contains = [mode34, mode38, mode39];
  mode38.scope = r'title';
  mode38.begin = r'[A-Za-z_]\w*(::\w+)*(\?|!)?';
  mode38.relevance = 0;
  mode39.begin = r'<';
  mode40.scope = r'class';
  mode40.beginKeywords = r'lib enum union';
  mode40.end = r'$|;';
  mode40.illegal = r'=';
  mode40.contains = [mode34, mode41];
  mode41.scope = r'title';
  mode41.begin = r'[A-Za-z_]\w*(::\w+)*(\?|!)?';
  mode41.relevance = 0;
  mode42.beginKeywords = r'annotation';
  mode42.end = r'$|;';
  mode42.illegal = r'=';
  mode42.contains = [mode34, mode43];
  mode42.relevance = 2;
  mode43.scope = r'title';
  mode43.begin = r'[A-Za-z_]\w*(::\w+)*(\?|!)?';
  mode43.relevance = 0;
  mode44.scope = r'function';
  mode44.beginKeywords = r'def';
  mode44.end = r'\B\b';
  mode44.contains = [mode45];
  mode45.scope = r'title';
  mode45.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\*\*|\[\][=?]?';
  mode45.relevance = 0;
  mode45.endsParent = true;
  mode46.scope = r'function';
  mode46.beginKeywords = r'fun macro';
  mode46.end = r'\B\b';
  mode46.contains = [mode47];
  mode46.relevance = 2;
  mode47.scope = r'title';
  mode47.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\*\*|\[\][=?]?';
  mode47.relevance = 0;
  mode47.endsParent = true;
  mode48.scope = r'symbol';
  mode48.begin = r'[a-zA-Z_]\w*(!|\?)?:';
  mode48.relevance = 0;
  mode49.scope = r'symbol';
  mode49.begin = r':';
  mode49.contains = [mode3, mode50];
  mode49.relevance = 0;
  mode50.begin =
      r'[a-zA-Z_]\w*[!?=]?|[-+~]@|<<|>>|[=!]~|===?|<=>|[<>]=?|\*\*|[-/+%^&*~|]|//|//=|&[-+*]=?|&\*\*|\[\][=?]?';
  mode51.scope = r'number';
  mode51.variants = [mode52, mode53, mode54, mode55, mode56];
  mode51.relevance = 0;
  mode52.begin = r'\b0b([01_]+)(_?[ui](8|16|32|64|128))?';
  mode53.begin = r'\b0o([0-7_]+)(_?[ui](8|16|32|64|128))?';
  mode54.begin = r'\b0x([A-Fa-f0-9_]+)(_?[ui](8|16|32|64|128))?';
  mode55.begin =
      r'\b([1-9][0-9_]*[0-9]|[0-9])(\.[0-9][0-9_]*)?([eE]_?[-+]?[0-9_]*)?(_?f(32|64))?(?!_)';
  mode56.begin = r'\b([1-9][0-9_]*|0)(_?[ui](8|16|32|64|128))?';
  mode57.begin = r"'";
  mode57.end = r"'";
  mode58.begin = r'"';
  mode58.end = r'"';
  mode59.begin = r'`';
  mode59.end = r'`';
  mode60.begin = r'%[Qwi]?\(';
  mode60.end = r'\)';
  mode60.contains = [mode61];
  mode61.begin = r'\(';
  mode61.end = r'\)';
  mode61.contains = [r'self'];
  mode62.begin = r'%[Qwi]?\[';
  mode62.end = r'\]';
  mode62.contains = [mode63];
  mode63.begin = r'\[';
  mode63.end = r'\]';
  mode63.contains = [r'self'];
  mode64.begin = r'%[Qwi]?\{';
  mode64.end = r'\}';
  mode64.contains = [mode65];
  mode65.begin = r'\{';
  mode65.end = r'\}';
  mode65.contains = [r'self'];
  mode66.begin = r'%[Qwi]?<';
  mode66.end = r'>';
  mode66.contains = [mode67];
  mode67.begin = r'<';
  mode67.end = r'>';
  mode67.contains = [r'self'];
  mode68.begin = r'%[Qwi]?\|';
  mode68.end = r'\|';
  mode69.begin = r'<<-\w+$';
  mode69.end = r'^\s*\w+$';
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
      mode0,
      mode3,
      mode6,
      mode17,
      mode27,
      mode31,
      mode33,
      mode34,
      mode37,
      mode40,
      mode42,
      mode44,
      mode46,
      mode48,
      mode49,
      mode51,
    ],
  );
}
