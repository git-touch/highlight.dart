// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode gams(Highlight hljs) {
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
  _mode0.scope = r'comment';
  _mode0.begin = r'//';
  _mode0.end = r'$';
  _mode0.contains = [_mode1, _mode2];
  _mode1.scope = r'doctag';
  _mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode1.excludeBegin = true;
  _mode1.relevance = 0;
  _mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode3.scope = r'comment';
  _mode3.begin = r'/\*';
  _mode3.end = r'\*/';
  _mode3.contains = [_mode4, _mode5];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.scope = r'string';
  _mode6.begin = r'"';
  _mode6.end = r'"';
  _mode6.illegal = r'\n';
  _mode6.contains = [_mode7];
  _mode7.begin = r'\\[\s\S]';
  _mode7.relevance = 0;
  _mode8.scope = r'string';
  _mode8.begin = r"'";
  _mode8.end = r"'";
  _mode8.illegal = r'\n';
  _mode8.contains = [_mode7];
  _mode9.begin = r'/';
  _mode9.end = r'/';
  _mode9.keywords = {
    r'keyword':
        r'abort acronym acronyms alias all and assign binary card diag display else eq file files for free ge gt if integer le loop lt maximizing minimizing model models ne negative no not option options or ord positive prod put putpage puttl repeat sameas semicont semiint smax smin solve sos1 sos2 sum system table then until using while xor yes',
    r'literal': r'eps inf na',
    r'built_in':
        r'abs arccos arcsin arctan arctan2 Beta betaReg binomial ceil centropy cos cosh cvPower div div0 eDist entropy errorf execSeed exp fact floor frac gamma gammaReg log logBeta logGamma log10 log2 mapVal max min mod ncpCM ncpF ncpVUpow ncpVUsin normal pi poly power randBinomial randLinear randTriangle round rPower sigmoid sign signPower sin sinh slexp sllog10 slrec sqexp sqlog10 sqr sqrec sqrt tan tanh trunc uniform uniformInt vcPower bool_and bool_eqv bool_imp bool_not bool_or bool_xor ifThen rel_eq rel_ge rel_gt rel_le rel_lt rel_ne gday gdow ghour gleap gmillisec gminute gmonth gsecond gyear jdate jnow jstart jtime errorLevel execError gamsRelease gamsVersion handleCollect handleDelete handleStatus handleSubmit heapFree heapLimit heapSize jobHandle jobKill jobStatus jobTerminate licenseLevel licenseStatus maxExecError sleep timeClose timeComp timeElapsed timeExec timeStart',
  };
  _mode9.contains = [_mode10, _mode0, _mode3, _mode6, _mode8, _mode13];
  _mode10.scope = r'comment';
  _mode10.variants = [_mode11, _mode12];
  _mode10.illegal = r'\n';
  _mode10.contains = [_mode7];
  _mode11.begin = r"'";
  _mode11.end = r"'";
  _mode12.begin = r'"';
  _mode12.end = r'"';
  _mode13.scope = r'number';
  _mode13.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode13.relevance = 0;
  _mode14.begin = r'[a-z][a-z0-9_]*(\([a-z0-9_, ]*\))?[ \t]+';
  _mode14.excludeBegin = true;
  _mode14.end = r'$';
  _mode14.endsWithParent = true;
  _mode14.contains = [_mode10, _mode9, _mode15];
  _mode15.scope = r'comment';
  _mode15.begin =
      r'[a-z0-9&#*=?@\\><:,()$[\]_.{}!+%^-]+(?:[ ]+[a-z0-9&#*=?@\\><:,()$[\]_.{}!+%^-]+)*';
  _mode15.relevance = 0;
  _mode16.scope = r'symbol';
  _mode16.variants = [_mode17, _mode18];
  _mode17.begin = r'=[lgenxc]=';
  _mode18.begin = r'\$';
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
      _mode0,
      _mode3,
      _mode6,
      _mode8,
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
          _mode0,
          _mode3,
          _mode6,
          _mode8,
          _mode9,
          _mode14,
        ],
      ),
      Mode(
        beginKeywords: r'table',
        end: r';',
        returnBegin: true,
        contains: [
          Mode(beginKeywords: r'table', end: r'$', contains: [_mode14]),
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
          _mode0,
          _mode3,
          _mode6,
          _mode8,
          _mode13,
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
          _mode16,
        ],
      ),
      _mode13,
      _mode16,
    ],
  );
}
