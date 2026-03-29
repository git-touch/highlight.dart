// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode nix(Highlight hljs) {
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
  _mode0.scope = r'number';
  _mode0.match = r'\b\d+(\.\d+)?(?!-)';
  _mode0.relevance = 0;
  _mode1.scope = r'comment';
  _mode1.begin = r'#';
  _mode1.end = r'$';
  _mode1.contains = [
    _mode2,
    _mode3,
  ];
  _mode2.scope = r'doctag';
  _mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode2.excludeBegin = true;
  _mode2.relevance = 0;
  _mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode4.scope = r'comment';
  _mode4.begin = r'/\*';
  _mode4.end = r'\*/';
  _mode4.contains = [
    _mode5,
    _mode6,
  ];
  _mode5.scope = r'doctag';
  _mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode5.excludeBegin = true;
  _mode5.relevance = 0;
  _mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode7.scope = r'comment';
  _mode7.begin = r'\/\*\*(?!\/)';
  _mode7.end = r'\*\/';
  _mode7.contains = [
    _mode8,
    _mode9,
  ];
  _mode7.subLanguage = r'markdown';
  _mode7.relevance = 0;
  _mode8.scope = r'doctag';
  _mode8.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode8.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode8.excludeBegin = true;
  _mode8.relevance = 0;
  _mode9.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode10.scope = r'built_in';
  _mode10.match =
      r"(?:builtins\.abort|builtins\.add|builtins\.addDrvOutputDependencies|builtins\.addErrorContext|builtins\.all|builtins\.any|builtins\.appendContext|builtins\.attrNames|builtins\.attrValues|builtins\.baseNameOf|builtins\.bitAnd|builtins\.bitOr|builtins\.bitXor|builtins\.break|builtins\.builtins|builtins\.catAttrs|builtins\.ceil|builtins\.compareVersions|builtins\.concatLists|builtins\.concatMap|builtins\.concatStringsSep|builtins\.convertHash|builtins\.currentSystem|builtins\.currentTime|builtins\.deepSeq|builtins\.derivation|builtins\.derivationStrict|builtins\.dirOf|builtins\.div|builtins\.elem|builtins\.elemAt|builtins\.false|builtins\.fetchGit|builtins\.fetchMercurial|builtins\.fetchTarball|builtins\.fetchTree|builtins\.fetchurl|builtins\.filter|builtins\.filterSource|builtins\.findFile|builtins\.flakeRefToString|builtins\.floor|builtins\.foldl'|builtins\.fromJSON|builtins\.fromTOML|builtins\.functionArgs|builtins\.genList|builtins\.genericClosure|builtins\.getAttr|builtins\.getContext|builtins\.getEnv|builtins\.getFlake|builtins\.groupBy|builtins\.hasAttr|builtins\.hasContext|builtins\.hashFile|builtins\.hashString|builtins\.head|builtins\.import|builtins\.intersectAttrs|builtins\.isAttrs|builtins\.isBool|builtins\.isFloat|builtins\.isFunction|builtins\.isInt|builtins\.isList|builtins\.isNull|builtins\.isPath|builtins\.isString|builtins\.langVersion|builtins\.length|builtins\.lessThan|builtins\.listToAttrs|builtins\.map|builtins\.mapAttrs|builtins\.match|builtins\.mul|builtins\.nixPath|builtins\.nixVersion|builtins\.null|builtins\.parseDrvName|builtins\.parseFlakeRef|builtins\.partition|builtins\.path|builtins\.pathExists|builtins\.placeholder|builtins\.readDir|builtins\.readFile|builtins\.readFileType|builtins\.removeAttrs|builtins\.replaceStrings|builtins\.scopedImport|builtins\.seq|builtins\.sort|builtins\.split|builtins\.splitVersion|builtins\.storeDir|builtins\.storePath|builtins\.stringLength|builtins\.sub|builtins\.substring|builtins\.tail|builtins\.throw|builtins\.toFile|builtins\.toJSON|builtins\.toPath|builtins\.toString|builtins\.toXML|builtins\.trace|builtins\.traceVerbose|builtins\.true|builtins\.tryEval|builtins\.typeOf|builtins\.unsafeDiscardOutputDependency|builtins\.unsafeDiscardStringContext|builtins\.unsafeGetAttrPos|builtins\.warn|builtins\.zipAttrsWith)";
  _mode10.relevance = 10;
  _mode11.scope = r'string';
  _mode11.variants = [
    Mode(
      begin: r"''",
      end: r"''",
      contains: [
        Mode(
          scope: r'char.escape',
          match: r"''\$",
        ),
        _mode12,
        Mode(
          scope: r'char.escape',
          match: r"'''",
        ),
        _mode23,
      ],
    ),
    Mode(
      begin: r'"',
      end: r'"',
      contains: [
        Mode(
          scope: r'char.escape',
          match: r'\\\$',
        ),
        _mode12,
        _mode23,
      ],
    ),
  ];
  _mode12.scope = r'subst';
  _mode12.begin = r'\$\{';
  _mode12.end = r'\}';
  _mode12.keywords = {
    r'keyword': [
      r'assert',
      r'else',
      r'if',
      r'in',
      r'inherit',
      r'let',
      r'or',
      r'rec',
      r'then',
      r'with',
    ],
    r'literal': [
      r'true',
      r'false',
      r'null',
    ],
    r'built_in': [
      r'abort',
      r'baseNameOf',
      r'builtins',
      r'derivation',
      r'derivationStrict',
      r'dirOf',
      r'fetchGit',
      r'fetchMercurial',
      r'fetchTarball',
      r'fetchTree',
      r'fromTOML',
      r'import',
      r'isNull',
      r'map',
      r'placeholder',
      r'removeAttrs',
      r'scopedImport',
      r'throw',
      r'toString',
    ],
  };
  _mode12.contains = [
    _mode0,
    _mode1,
    _mode4,
    _mode7,
    _mode10,
    _mode11,
    _mode13,
    _mode14,
    _mode15,
    _mode16,
    _mode18,
    _mode22,
  ];
  _mode13.scope = r'symbol';
  _mode13.match = r"<[A-Za-z_][A-Za-z0-9_'-]*(\/[A-Za-z_][A-Za-z0-9_'-]*)*>";
  _mode14.scope = r'symbol';
  _mode14.match =
      r'(\.\.|\.|~)?\/([A-Za-z0-9_\+\.-]+)?(\/[A-Za-z0-9_\+\.-]+)*(?=[\s;])';
  _mode15.scope = r'params';
  _mode15.match = r"[A-Za-z_][A-Za-z0-9_'-]*\s*:(?=\s)";
  _mode16.beforeMatch = r'(^|\{|;)\s*';
  _mode16.begin =
      r"[A-Za-z_][A-Za-z0-9_'-]*(\.[A-Za-z_][A-Za-z0-9_'-]*)*\s*=(?!=)";
  _mode16.returnBegin = true;
  _mode16.relevance = 0;
  _mode16.contains = [
    _mode17,
  ];
  _mode17.scope = r'attr';
  _mode17.match =
      r"[A-Za-z_][A-Za-z0-9_'-]*(\.[A-Za-z_][A-Za-z0-9_'-]*)*(?=\s*=)";
  _mode17.relevance = 0.2;
  _mode18.variants = [
    _mode19,
    _mode20,
    _mode21,
  ];
  _mode18.relevance = 0;
  _mode19.scope = r'operator';
  _mode19.beforeMatch = r'\s';
  _mode19.begin = r'-(?!>)';
  _mode20.begin = [
    r'\b\d+(\.\d+)?',
    r'-',
    r'(?!>)',
  ];
  _mode20.beginScope = {
    1: r'number',
    2: r'operator',
  };
  _mode21.begin = [
    r'(?:==|=|\+\+|\+|<=|<\||<|>=|>|->|//|/|!=|!|\|\||\|>|\?|\*|&&)',
    r'-',
    r'(?!>)',
  ];
  _mode21.beginScope = {
    1: r'operator',
    2: r'operator',
  };
  _mode22.scope = r'operator';
  _mode22.match =
      r'(?:==|=|\+\+|\+|<=|<\||<|>=|>|->|//|/|!=|!|\|\||\|>|\?|\*|&&)(?!-)';
  _mode22.relevance = 0;
  _mode23.scope = r'char.escape';
  _mode23.match = r'\\(?!\$).';
  return Mode(
    name: r'Nix',
    aliases: [
      r'nixos',
    ],
    keywords: {
      r'keyword': [
        r'assert',
        r'else',
        r'if',
        r'in',
        r'inherit',
        r'let',
        r'or',
        r'rec',
        r'then',
        r'with',
      ],
      r'literal': [
        r'true',
        r'false',
        r'null',
      ],
      r'built_in': [
        r'abort',
        r'baseNameOf',
        r'builtins',
        r'derivation',
        r'derivationStrict',
        r'dirOf',
        r'fetchGit',
        r'fetchMercurial',
        r'fetchTarball',
        r'fetchTree',
        r'fromTOML',
        r'import',
        r'isNull',
        r'map',
        r'placeholder',
        r'removeAttrs',
        r'scopedImport',
        r'throw',
        r'toString',
      ],
    },
    contains: [
      _mode0,
      _mode1,
      _mode4,
      _mode7,
      _mode10,
      _mode11,
      _mode13,
      _mode14,
      _mode15,
      _mode16,
      _mode18,
      _mode22,
      Mode(
        scope: r'meta.prompt',
        match: r'^nix-repl>(?=\s)',
        relevance: 10,
      ),
      Mode(
        scope: r'meta',
        beforeMatch: r'\s+',
        begin: r':([a-z]+|\?)',
      ),
    ],
  );
}
