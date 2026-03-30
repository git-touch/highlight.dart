// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `powershell`.
Mode powershell(Highlight hljs) {
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
  mode0.scope = r'function';
  mode0.begin = r'\[.*\]\s*[\w]+[ ]??\(';
  mode0.end = r'$';
  mode0.returnBegin = true;
  mode0.relevance = 0;
  mode0.contains = [mode1, mode27, mode28];
  mode1.begin = r'\[';
  mode1.end = r'\]';
  mode1.excludeBegin = true;
  mode1.excludeEnd = true;
  mode1.relevance = 0;
  mode1.contains = [
    r'self',
    mode0,
    mode2,
    mode8,
    mode9,
    mode10,
    mode18,
    mode21,
    mode13,
    mode23,
    mode24,
    mode25,
    mode26,
  ];
  mode2.scope = r'comment';
  mode2.contains = [mode3];
  mode2.variants = [mode6, mode7];
  mode3.scope = r'doctag';
  mode3.variants = [mode4, mode5];
  mode4.begin =
      r'\.(synopsis|description|example|inputs|outputs|notes|link|component|role|functionality)';
  mode5.begin =
      r'\.(parameter|forwardhelptargetname|forwardhelpcategory|remotehelprunspace|externalhelp)\s+\S+';
  mode6.begin = r'#';
  mode6.end = r'$';
  mode7.begin = r'<#';
  mode7.end = r'#>';
  mode8.begin = r'`[\s\S]';
  mode8.relevance = 0;
  mode9.scope = r'number';
  mode9.begin = r'\b\d+(\.\d+)?';
  mode9.relevance = 0;
  mode10.scope = r'string';
  mode10.variants = [mode11, mode12];
  mode10.contains = [mode8, mode13, mode17];
  mode11.begin = r'"';
  mode11.end = r'"';
  mode12.begin = r'@"';
  mode12.end = r'^"@';
  mode13.scope = r'variable';
  mode13.variants = [mode14, mode15, mode16];
  mode14.begin = r'\$\B';
  mode15.scope = r'keyword';
  mode15.begin = r'\$this';
  mode16.begin = r'\$[\w\d][\w\d_:]*';
  mode17.scope = r'variable';
  mode17.begin = r'\$[A-z]';
  mode17.end = r'[^A-z]';
  mode18.scope = r'string';
  mode18.variants = [mode19, mode20];
  mode19.begin = r"'";
  mode19.end = r"'";
  mode20.begin = r"@'";
  mode20.end = r"^'@";
  mode21.scope = r'built_in';
  mode21.variants = [mode22];
  mode22.begin =
      r'(Add|Clear|Close|Copy|Enter|Exit|Find|Format|Get|Hide|Join|Lock|Move|New|Open|Optimize|Pop|Push|Redo|Remove|Rename|Reset|Resize|Search|Select|Set|Show|Skip|Split|Step|Switch|Undo|Unlock|Watch|Backup|Checkpoint|Compare|Compress|Convert|ConvertFrom|ConvertTo|Dismount|Edit|Expand|Export|Group|Import|Initialize|Limit|Merge|Mount|Out|Publish|Restore|Save|Sync|Unpublish|Update|Approve|Assert|Build|Complete|Confirm|Deny|Deploy|Disable|Enable|Install|Invoke|Register|Request|Restart|Resume|Start|Stop|Submit|Suspend|Uninstall|Unregister|Wait|Debug|Measure|Ping|Repair|Resolve|Test|Trace|Connect|Disconnect|Read|Receive|Send|Write|Block|Grant|Protect|Revoke|Unblock|Unprotect|Use|ForEach|Sort|Tee|Where)+(-)[\w\d]+';
  mode23.scope = r'literal';
  mode23.begin = r'\$(null|true|false)\b';
  mode24.scope = r'selector-tag';
  mode24.begin = r'@\B';
  mode24.relevance = 0;
  mode25.begin =
      r'(string|char|byte|int|long|bool|decimal|single|double|DateTime|xml|array|hashtable|void)';
  mode25.scope = r'built_in';
  mode25.relevance = 0;
  mode26.scope = r'type';
  mode26.begin = r'[\.\w\d]+';
  mode26.relevance = 0;
  mode27.scope = r'keyword';
  mode27.begin =
      r'(if|else|foreach|return|do|while|until|elseif|begin|for|trap|data|dynamicparam|end|break|throw|param|continue|finally|in|switch|exit|filter|try|process|catch|hidden|static|parameter)\b';
  mode27.endsParent = true;
  mode27.relevance = 0;
  mode28.scope = r'title';
  mode28.begin = r'[a-zA-Z]\w*';
  mode28.relevance = 0;
  mode28.endsParent = true;
  return Mode(
    name: r'PowerShell',
    aliases: [r'pwsh', r'ps', r'ps1'],
    caseInsensitive: true,
    keywords: {
      r'$pattern': r'-?[A-z\.\-]+\b',
      r'keyword':
          r'if else foreach return do while until elseif begin for trap data dynamicparam end break throw param continue finally in switch exit filter try process catch hidden static parameter',
      r'built_in':
          r'ac asnp cat cd CFS chdir clc clear clhy cli clp cls clv cnsn compare copy cp cpi cpp curl cvpa dbp del diff dir dnsn ebp echo|0 epal epcsv epsn erase etsn exsn fc fhx fl ft fw gal gbp gc gcb gci gcm gcs gdr gerr ghy gi gin gjb gl gm gmo gp gps gpv group gsn gsnp gsv gtz gu gv gwmi h history icm iex ihy ii ipal ipcsv ipmo ipsn irm ise iwmi iwr kill lp ls man md measure mi mount move mp mv nal ndr ni nmo npssc nsn nv ogv oh popd ps pushd pwd r rbp rcjb rcsn rd rdr ren ri rjb rm rmdir rmo rni rnp rp rsn rsnp rujb rv rvpa rwmi sajb sal saps sasv sbp sc scb select set shcm si sl sleep sls sort sp spjb spps spsv start stz sujb sv swmi tee trcm type wget where wjb write',
    },
    contains: [
      mode0,
      mode2,
      mode8,
      mode9,
      mode10,
      mode18,
      mode21,
      mode13,
      mode23,
      mode24,
      Mode(
        scope: r'class',
        beginKeywords: r'class enum',
        end: r'\s*[{]',
        excludeEnd: true,
        relevance: 0,
        contains: [Mode(scope: r'title', begin: r'[a-zA-Z]\w*', relevance: 0)],
      ),
      Mode(
        scope: r'function',
        begin: r'function\s+',
        end: r'\s*\{|$',
        excludeEnd: true,
        returnBegin: true,
        relevance: 0,
        contains: [
          Mode(begin: r'function', relevance: 0, scope: r'keyword'),
          Mode(scope: r'title', begin: r'\w[\w\d]*((-)[\w\d]+)*', relevance: 0),
          Mode(
            begin: r'\(',
            end: r'\)',
            scope: r'params',
            relevance: 0,
            contains: [mode13],
          ),
        ],
      ),
      Mode(
        begin: r'using\s',
        end: r'$',
        returnBegin: true,
        contains: [
          mode10,
          mode18,
          Mode(
            scope: r'keyword',
            begin: r'(using|assembly|command|module|namespace|type)',
          ),
        ],
      ),
      Mode(
        variants: [
          Mode(
            scope: r'operator',
            begin:
                r'(-and|-as|-band|-bnot|-bor|-bxor|-casesensitive|-ccontains|-ceq|-cge|-cgt|-cle|-clike|-clt|-cmatch|-cne|-cnotcontains|-cnotlike|-cnotmatch|-contains|-creplace|-csplit|-eq|-exact|-f|-file|-ge|-gt|-icontains|-ieq|-ige|-igt|-ile|-ilike|-ilt|-imatch|-in|-ine|-inotcontains|-inotlike|-inotmatch|-ireplace|-is|-isnot|-isplit|-join|-le|-like|-lt|-match|-ne|-not|-notcontains|-notin|-notlike|-notmatch|-or|-regex|-replace|-shl|-shr|-split|-wildcard|-xor)\b',
          ),
          Mode(scope: r'literal', begin: r'(-){1,2}[\w\d-]+', relevance: 0),
        ],
      ),
      mode1,
    ],
  );
}
