// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `vbnet`.
Mode vbnet(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  mode0.scope = r'comment';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode0.variants = [mode3, mode4];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.begin = r"'";
  mode4.begin = r'([\t ]|^)REM(?=\s)';
  return Mode(
    name: r'Visual Basic .NET',
    aliases: [r'vb'],
    caseInsensitive: true,
    classNameAliases: {r'label': r'symbol'},
    keywords: {
      r'keyword':
          r'addhandler alias aggregate ansi as async assembly auto binary by byref byval call case catch class compare const continue custom declare default delegate dim distinct do each equals else elseif end enum erase error event exit explicit finally for friend from function get global goto group handles if implements imports in inherits interface into iterator join key let lib loop me mid module mustinherit mustoverride mybase myclass namespace narrowing new next notinheritable notoverridable of off on operator option optional order overloads overridable overrides paramarray partial preserve private property protected public raiseevent readonly redim removehandler resume return select set shadows shared skip static step stop structure strict sub synclock take text then throw to try unicode until using when where while widening with withevents writeonly yield',
      r'built_in':
          r'addressof and andalso await directcast gettype getxmlnamespace is isfalse isnot istrue like mod nameof new not or orelse trycast typeof xor cbool cbyte cchar cdate cdbl cdec cint clng cobj csbyte cshort csng cstr cuint culng cushort',
      r'type':
          r'boolean byte char date decimal double integer long object sbyte short single string uinteger ulong ushort',
      r'literal': r'true false nothing',
    },
    illegal: r'//|\{|\}|endif|gosub|variant|wend|^\$ ',
    contains: [
      Mode(scope: r'string', begin: r'"(""|[^/n])"C\b'),
      Mode(
        scope: r'string',
        begin: r'"',
        end: r'"',
        illegal: r'\n',
        contains: [Mode(begin: r'""')],
      ),
      Mode(
        scope: r'literal',
        variants: [
          Mode(
            begin: r'# *(?:\d{4}-\d{1,2}-\d{1,2}|\d{1,2}\/\d{1,2}\/\d{4}) *#',
          ),
          Mode(begin: r'# *\d{1,2}(:\d{1,2}){1,2} *#'),
          Mode(begin: r'# *(\d|1[012])(:\d+){0,2} *(AM|PM) *#'),
          Mode(
            begin:
                r'# *(?:\d{4}-\d{1,2}-\d{1,2}|\d{1,2}\/\d{1,2}\/\d{4}) +(?:(\d|1[012])(:\d+){0,2} *(AM|PM)|\d{1,2}(:\d{1,2}){1,2}) *#',
          ),
        ],
      ),
      Mode(
        scope: r'number',
        relevance: 0,
        variants: [
          Mode(
            begin:
                r'\b\d[\d_]*((\.[\d_]+(E[+-]?[\d_]+)?)|(E[+-]?[\d_]+))[RFD@!#]?',
          ),
          Mode(begin: r'\b\d[\d_]*((U?[SIL])|[%&])?'),
          Mode(begin: r'&H[\dA-F_]+((U?[SIL])|[%&])?'),
          Mode(begin: r'&O[0-7_]+((U?[SIL])|[%&])?'),
          Mode(begin: r'&B[01_]+((U?[SIL])|[%&])?'),
        ],
      ),
      Mode(scope: r'label', begin: r'^\w+:'),
      Mode(
        scope: r'comment',
        begin: r"'''",
        end: r'$',
        contains: [
          Mode(scope: r'doctag', begin: r'<\/?', end: r'>'),
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
      mode0,
      Mode(
        scope: r'meta',
        begin:
            r'[\t ]*#(const|disable|else|elseif|enable|end|externalsource|if|region)\b',
        end: r'$',
        keywords: {
          r'keyword':
              r'const disable else elseif enable end externalsource if region then',
        },
        contains: [mode0],
      ),
    ],
  );
}
