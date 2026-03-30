// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `gams`.
Mode gams(Highlight hljs) {
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
  mode0.scope = r'comment';
  mode0.begin = r'//';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'comment';
  mode3.begin = r'/\*';
  mode3.end = r'\*/';
  mode3.contains = [mode4, mode5];
  mode4.scope = r'doctag';
  mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode4.excludeBegin = true;
  mode4.relevance = 0;
  mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode6.scope = r'string';
  mode6.begin = r'"';
  mode6.end = r'"';
  mode6.illegal = r'\n';
  mode6.contains = [mode7];
  mode7.begin = r'\\[\s\S]';
  mode7.relevance = 0;
  mode8.scope = r'string';
  mode8.begin = r"'";
  mode8.end = r"'";
  mode8.illegal = r'\n';
  mode8.contains = [mode7];
  mode9.begin = r'/';
  mode9.end = r'/';
  mode9.keywords = {
    r'keyword':
        r'abort acronym acronyms alias all and assign binary card diag display else eq file files for free ge gt if integer le loop lt maximizing minimizing model models ne negative no not option options or ord positive prod put putpage puttl repeat sameas semicont semiint smax smin solve sos1 sos2 sum system table then until using while xor yes',
    r'literal': r'eps inf na',
    r'built_in':
        r'abs arccos arcsin arctan arctan2 Beta betaReg binomial ceil centropy cos cosh cvPower div div0 eDist entropy errorf execSeed exp fact floor frac gamma gammaReg log logBeta logGamma log10 log2 mapVal max min mod ncpCM ncpF ncpVUpow ncpVUsin normal pi poly power randBinomial randLinear randTriangle round rPower sigmoid sign signPower sin sinh slexp sllog10 slrec sqexp sqlog10 sqr sqrec sqrt tan tanh trunc uniform uniformInt vcPower bool_and bool_eqv bool_imp bool_not bool_or bool_xor ifThen rel_eq rel_ge rel_gt rel_le rel_lt rel_ne gday gdow ghour gleap gmillisec gminute gmonth gsecond gyear jdate jnow jstart jtime errorLevel execError gamsRelease gamsVersion handleCollect handleDelete handleStatus handleSubmit heapFree heapLimit heapSize jobHandle jobKill jobStatus jobTerminate licenseLevel licenseStatus maxExecError sleep timeClose timeComp timeElapsed timeExec timeStart',
  };
  mode9.contains = [mode10, mode0, mode3, mode6, mode8, mode13];
  mode10.scope = r'comment';
  mode10.variants = [mode11, mode12];
  mode10.illegal = r'\n';
  mode10.contains = [mode7];
  mode11.begin = r"'";
  mode11.end = r"'";
  mode12.begin = r'"';
  mode12.end = r'"';
  mode13.scope = r'number';
  mode13.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode13.relevance = 0;
  mode14.begin = r'[a-z][a-z0-9_]*(\([a-z0-9_, ]*\))?[ \t]+';
  mode14.excludeBegin = true;
  mode14.end = r'$';
  mode14.endsWithParent = true;
  mode14.contains = [mode10, mode9, mode15];
  mode15.scope = r'comment';
  mode15.begin =
      r'[a-z0-9&#*=?@\\><:,()$[\]_.{}!+%^-]+(?:[ ]+[a-z0-9&#*=?@\\><:,()$[\]_.{}!+%^-]+)*';
  mode15.relevance = 0;
  mode16.scope = r'symbol';
  mode16.variants = [mode17, mode18];
  mode17.begin = r'=[lgenxc]=';
  mode18.begin = r'\$';
  return Mode(
    name: r'GAMS',
    aliases: [r'gms'],
    caseInsensitive: true,
    keywords: {
      r'keyword':
          r'abort acronym acronyms alias all and assign binary card diag display else eq file files for free ge gt if integer le loop lt maximizing minimizing model models ne negative no not option options or ord positive prod put putpage puttl repeat sameas semicont semiint smax smin solve sos1 sos2 sum system table then until using while xor yes',
      r'literal': r'eps inf na',
      r'built_in':
          r'abs arccos arcsin arctan arctan2 Beta betaReg binomial ceil centropy cos cosh cvPower div div0 eDist entropy errorf execSeed exp fact floor frac gamma gammaReg log logBeta logGamma log10 log2 mapVal max min mod ncpCM ncpF ncpVUpow ncpVUsin normal pi poly power randBinomial randLinear randTriangle round rPower sigmoid sign signPower sin sinh slexp sllog10 slrec sqexp sqlog10 sqr sqrec sqrt tan tanh trunc uniform uniformInt vcPower bool_and bool_eqv bool_imp bool_not bool_or bool_xor ifThen rel_eq rel_ge rel_gt rel_le rel_lt rel_ne gday gdow ghour gleap gmillisec gminute gmonth gsecond gyear jdate jnow jstart jtime errorLevel execError gamsRelease gamsVersion handleCollect handleDelete handleStatus handleSubmit heapFree heapLimit heapSize jobHandle jobKill jobStatus jobTerminate licenseLevel licenseStatus maxExecError sleep timeClose timeComp timeElapsed timeExec timeStart',
    },
    contains: [
      Mode(
        scope: r'comment',
        begin: r'^\$ontext',
        end: r'^\$offtext',
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
        scope: r'meta',
        begin: r'^\$[a-z0-9]+',
        end: r'$',
        returnBegin: true,
        contains: [Mode(scope: r'keyword', begin: r'^\$[a-z0-9]+')],
      ),
      Mode(
        scope: r'comment',
        begin: r'^\*',
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
      mode0,
      mode3,
      mode6,
      mode8,
      Mode(
        beginKeywords:
            r'set sets parameter parameters variable variables scalar scalars equation equations',
        end: r';',
        contains: [
          Mode(
            scope: r'comment',
            begin: r'^\*',
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
          mode0,
          mode3,
          mode6,
          mode8,
          mode9,
          mode14,
        ],
      ),
      Mode(
        beginKeywords: r'table',
        end: r';',
        returnBegin: true,
        contains: [
          Mode(beginKeywords: r'table', end: r'$', contains: [mode14]),
          Mode(
            scope: r'comment',
            begin: r'^\*',
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
          mode0,
          mode3,
          mode6,
          mode8,
          mode13,
        ],
      ),
      Mode(
        scope: r'function',
        begin: r"^[a-z][a-z0-9_,\-+' ()$]+\.{2}",
        returnBegin: true,
        contains: [
          Mode(scope: r'title', begin: r'^[a-z0-9_]+'),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            excludeBegin: true,
            excludeEnd: true,
          ),
          mode16,
        ],
      ),
      mode13,
      mode16,
    ],
  );
}
