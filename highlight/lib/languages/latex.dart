// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode latex(Highlight hljs) {
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
  _mode0.begin = r'\s+';
  _mode0.relevance = 0;
  _mode1.begin = r'\{';
  _mode1.end = r'\}';
  _mode1.relevance = 0;
  _mode1.contains = [
    _mode2,
    _mode3,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
  ];
  _mode1.endsParent = true;
  _mode2.begin = r'\{';
  _mode2.end = r'\}';
  _mode2.relevance = 0;
  _mode2.contains = [
    r'self',
    _mode3,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
  ];
  _mode3.scope = r'keyword';
  _mode3.begin = r'\\';
  _mode3.relevance = 0;
  _mode3.contains = [_mode4, _mode5, _mode6, _mode13];
  _mode4.endsParent = true;
  _mode4.begin =
      r'(?:(?:NeedsTeXFormat|RequirePackage|GetIdInfo)(?![a-zA-Z@:_])|Provides(?:Expl)?(?:Package|Class|File)(?![a-zA-Z@:_])|(?:DeclareOption|ProcessOptions)(?![a-zA-Z@:_])|(?:documentclass|usepackage|input|include)(?![a-zA-Z@:_])|makeat(?:letter|other)(?![a-zA-Z@:_])|ExplSyntax(?:On|Off)(?![a-zA-Z@:_])|(?:new|renew|provide)?command(?![a-zA-Z@:_])|(?:re)newenvironment(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)(?:Expandable)?DocumentCommand(?![a-zA-Z@:_])|(?:New|Renew|Provide|Declare)DocumentEnvironment(?![a-zA-Z@:_])|(?:(?:e|g|x)?def|let)(?![a-zA-Z@:_])|(?:begin|end)(?![a-zA-Z@:_])|(?:part|chapter|(?:sub){0,2}section|(?:sub)?paragraph)(?![a-zA-Z@:_])|caption(?![a-zA-Z@:_])|(?:label|(?:eq|page|name)?ref|(?:paren|foot|super)?cite)(?![a-zA-Z@:_])|(?:alpha|beta|[Gg]amma|[Dd]elta|(?:var)?epsilon|zeta|eta|[Tt]heta|vartheta)(?![a-zA-Z@:_])|(?:iota|(?:var)?kappa|[Ll]ambda|mu|nu|[Xx]i|[Pp]i|varpi|(?:var)rho)(?![a-zA-Z@:_])|(?:[Ss]igma|varsigma|tau|[Uu]psilon|[Pp]hi|varphi|chi|[Pp]si|[Oo]mega)(?![a-zA-Z@:_])|(?:frac|sum|prod|lim|infty|times|sqrt|leq|geq|left|right|middle|[bB]igg?)(?![a-zA-Z@:_])|(?:[lr]angle|q?quad|[lcvdi]?dots|d?dot|hat|tilde|bar)(?![a-zA-Z@:_]))';
  _mode5.endsParent = true;
  _mode5.begin =
      r'(?:__)?[a-zA-Z]{2,}_[a-zA-Z](?:_?[a-zA-Z])+:[a-zA-Z]*(?![a-zA-Z:_])|[lgc]__?[a-zA-Z](?:_?[a-zA-Z])*_[a-zA-Z]{2,}(?![a-zA-Z:_])|[qs]__?[a-zA-Z](?:_?[a-zA-Z])+(?![a-zA-Z:_])|use(?:_i)?:[a-zA-Z]*(?![a-zA-Z:_])|(?:else|fi|or):(?![a-zA-Z:_])|(?:if|cs|exp):w(?![a-zA-Z:_])|(?:hbox|vbox):n(?![a-zA-Z:_])|::[a-zA-Z]_unbraced(?![a-zA-Z:_])|::[a-zA-Z:](?![a-zA-Z:_])';
  _mode6.endsParent = true;
  _mode6.variants = [_mode7, _mode8, _mode9, _mode10, _mode11, _mode12];
  _mode7.begin = r'\^{6}[0-9a-f]{6}';
  _mode8.begin = r'\^{5}[0-9a-f]{5}';
  _mode9.begin = r'\^{4}[0-9a-f]{4}';
  _mode10.begin = r'\^{3}[0-9a-f]{3}';
  _mode11.begin = r'\^{2}[0-9a-f]{2}';
  _mode12.begin = r'\^{2}[\u0000-\u007f]';
  _mode13.endsParent = true;
  _mode13.relevance = 0;
  _mode13.variants = [_mode14, _mode15];
  _mode14.begin = r'[a-zA-Z@]+';
  _mode15.begin = r'[^a-zA-Z@]?';
  _mode16.scope = r'params';
  _mode16.relevance = 0;
  _mode16.begin = r'#+\d?';
  _mode17.variants = [_mode7, _mode8, _mode9, _mode10, _mode11, _mode12];
  _mode18.scope = r'built_in';
  _mode18.relevance = 0;
  _mode18.begin = r'[$&^_]';
  _mode19.scope = r'meta';
  _mode19.begin = r'% ?!(T[eE]X|tex|BIB|bib)';
  _mode19.end = r'$';
  _mode19.relevance = 10;
  _mode20.scope = r'comment';
  _mode20.begin = r'%';
  _mode20.end = r'$';
  _mode20.contains = [_mode21, _mode22];
  _mode20.relevance = 0;
  _mode21.scope = r'doctag';
  _mode21.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode21.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode21.excludeBegin = true;
  _mode21.relevance = 0;
  _mode22.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode23.begin = r'\[';
  _mode23.end = r'\]';
  _mode23.endsParent = true;
  _mode23.relevance = 0;
  _mode23.contains = [
    _mode2,
    _mode3,
    _mode16,
    _mode17,
    _mode18,
    _mode19,
    _mode20,
  ];
  return Mode(
    name: r'LaTeX',
    aliases: [r'tex'],
    contains: [
      Mode(
        begin: r'\\verb(?![a-zA-Z@:_])',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\verb'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          contains: [
            hljs.END_SAME_AS_BEGIN(
              Mode(
                scope: r'string',
                begin: r'(.|\r?\n)',
                end: r'(.|\r?\n)',
                excludeBegin: true,
                excludeEnd: true,
                endsParent: true,
              ),
            ),
          ],
        ),
      ),
      Mode(
        begin: r'\\lstinline(?![a-zA-Z@:_])',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\lstinline'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          contains: [
            hljs.END_SAME_AS_BEGIN(
              Mode(
                scope: r'string',
                begin: r'(.|\r?\n)',
                end: r'(.|\r?\n)',
                excludeBegin: true,
                excludeEnd: true,
                endsParent: true,
              ),
            ),
          ],
        ),
      ),
      Mode(
        begin: r'\\mint(?![a-zA-Z@:_])',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\mint'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          contains: [_mode0],
          starts: Mode(
            relevance: 0,
            contains: [_mode1],
            starts: Mode(
              contains: [
                hljs.END_SAME_AS_BEGIN(
                  Mode(
                    scope: r'string',
                    begin: r'(.|\r?\n)',
                    end: r'(.|\r?\n)',
                    excludeBegin: true,
                    excludeEnd: true,
                    endsParent: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\mintinline(?![a-zA-Z@:_])',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\mintinline'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          contains: [_mode0],
          starts: Mode(
            relevance: 0,
            contains: [_mode1],
            starts: Mode(
              contains: [
                Mode(
                  relevance: 0,
                  begin: r'\{',
                  starts: Mode(
                    endsParent: true,
                    contains: [
                      Mode(
                        scope: r'string',
                        end: r'(?=\})',
                        endsParent: true,
                        contains: [
                          Mode(
                            begin: r'\{',
                            end: r'\}',
                            relevance: 0,
                            contains: [r'self'],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                hljs.END_SAME_AS_BEGIN(
                  Mode(
                    scope: r'string',
                    begin: r'(.|\r?\n)',
                    end: r'(.|\r?\n)',
                    excludeBegin: true,
                    excludeEnd: true,
                    endsParent: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\url(?![a-zA-Z@:_])',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\url'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          contains: [
            Mode(
              relevance: 0,
              begin: r'\{',
              starts: Mode(
                endsParent: true,
                contains: [
                  Mode(
                    scope: r'link',
                    end: r'(?=\})',
                    endsParent: true,
                    contains: [
                      Mode(
                        begin: r'\{',
                        end: r'\}',
                        relevance: 0,
                        contains: [r'self'],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Mode(
              relevance: 0,
              begin: r'\{',
              starts: Mode(
                endsParent: true,
                contains: [
                  Mode(
                    scope: r'link',
                    end: r'(?=\})',
                    endsParent: true,
                    contains: [
                      Mode(
                        begin: r'\{',
                        end: r'\}',
                        relevance: 0,
                        contains: [r'self'],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Mode(
        begin: r'\\hyperref(?![a-zA-Z@:_])',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\hyperref'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          contains: [
            Mode(
              relevance: 0,
              begin: r'\{',
              starts: Mode(
                endsParent: true,
                contains: [
                  Mode(
                    scope: r'link',
                    end: r'(?=\})',
                    endsParent: true,
                    contains: [
                      Mode(
                        begin: r'\{',
                        end: r'\}',
                        relevance: 0,
                        contains: [r'self'],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Mode(
        begin: r'\\href(?![a-zA-Z@:_])',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\href'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          contains: [_mode0],
          starts: Mode(
            relevance: 0,
            contains: [_mode23],
            starts: Mode(
              contains: [
                Mode(
                  relevance: 0,
                  begin: r'\{',
                  starts: Mode(
                    endsParent: true,
                    contains: [
                      Mode(
                        scope: r'link',
                        end: r'(?=\})',
                        endsParent: true,
                        contains: [
                          Mode(
                            begin: r'\{',
                            end: r'\}',
                            relevance: 0,
                            contains: [r'self'],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{verbatim\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(scope: r'string', end: r'(?=\\end\{verbatim\})'),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{filecontents\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode1],
              starts: Mode(scope: r'string', end: r'(?=\\end\{filecontents\})'),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{Verbatim\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode23],
              starts: Mode(scope: r'string', end: r'(?=\\end\{Verbatim\})'),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{BVerbatim\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode23],
              starts: Mode(scope: r'string', end: r'(?=\\end\{BVerbatim\})'),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{LVerbatim\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode23],
              starts: Mode(scope: r'string', end: r'(?=\\end\{LVerbatim\})'),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{verbatim\*\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(scope: r'string', end: r'(?=\\end\{verbatim\*\})'),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{filecontents\*\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode1],
              starts: Mode(
                scope: r'string',
                end: r'(?=\\end\{filecontents\*\})',
              ),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{Verbatim\*\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode23],
              starts: Mode(scope: r'string', end: r'(?=\\end\{Verbatim\*\})'),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{BVerbatim\*\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode23],
              starts: Mode(scope: r'string', end: r'(?=\\end\{BVerbatim\*\})'),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{LVerbatim\*\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode23],
              starts: Mode(scope: r'string', end: r'(?=\\end\{LVerbatim\*\})'),
            ),
          ),
        ),
      ),
      Mode(
        begin: r'\\begin(?=[ 	]*(\r?\n[ 	]*)?\{minted\})',
        keywords: {r'$pattern': r'\\[a-zA-Z]+', r'keyword': r'\begin'},
        relevance: 0,
        contains: [_mode0],
        starts: Mode(
          relevance: 0,
          contains: [_mode1],
          starts: Mode(
            contains: [_mode0],
            starts: Mode(
              relevance: 0,
              contains: [_mode23],
              starts: Mode(
                contains: [_mode0],
                starts: Mode(
                  relevance: 0,
                  contains: [_mode1],
                  starts: Mode(scope: r'string', end: r'(?=\\end\{minted\})'),
                ),
              ),
            ),
          ),
        ),
      ),
      _mode3,
      _mode16,
      _mode17,
      _mode18,
      _mode19,
      _mode20,
    ],
  );
}
