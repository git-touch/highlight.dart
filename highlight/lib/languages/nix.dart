// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `nix`.
Mode nix(Highlight hljs) {
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
  mode0.scope = r'number';
  mode0.match = r'\b\d+(\.\d+)?(?!-)';
  mode0.relevance = 0;
  mode1.scope = r'comment';
  mode1.begin = r'#';
  mode1.end = r'$';
  mode1.contains = [mode2, mode3];
  mode2.scope = r'doctag';
  mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode2.excludeBegin = true;
  mode2.relevance = 0;
  mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode4.scope = r'comment';
  mode4.begin = r'/\*';
  mode4.end = r'\*/';
  mode4.contains = [mode5, mode6];
  mode5.scope = r'doctag';
  mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode5.excludeBegin = true;
  mode5.relevance = 0;
  mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode7.scope = r'comment';
  mode7.begin = r'\/\*\*(?!\/)';
  mode7.end = r'\*\/';
  mode7.contains = [mode8, mode9];
  mode7.subLanguage = r'markdown';
  mode7.relevance = 0;
  mode8.scope = r'doctag';
  mode8.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode8.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode8.excludeBegin = true;
  mode8.relevance = 0;
  mode9.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode10.scope = r'built_in';
  mode10.match =
      r"(?:builtins\.abort|builtins\.add|builtins\.addDrvOutputDependencies|builtins\.addErrorContext|builtins\.all|builtins\.any|builtins\.appendContext|builtins\.attrNames|builtins\.attrValues|builtins\.baseNameOf|builtins\.bitAnd|builtins\.bitOr|builtins\.bitXor|builtins\.break|builtins\.builtins|builtins\.catAttrs|builtins\.ceil|builtins\.compareVersions|builtins\.concatLists|builtins\.concatMap|builtins\.concatStringsSep|builtins\.convertHash|builtins\.currentSystem|builtins\.currentTime|builtins\.deepSeq|builtins\.derivation|builtins\.derivationStrict|builtins\.dirOf|builtins\.div|builtins\.elem|builtins\.elemAt|builtins\.false|builtins\.fetchGit|builtins\.fetchMercurial|builtins\.fetchTarball|builtins\.fetchTree|builtins\.fetchurl|builtins\.filter|builtins\.filterSource|builtins\.findFile|builtins\.flakeRefToString|builtins\.floor|builtins\.foldl'|builtins\.fromJSON|builtins\.fromTOML|builtins\.functionArgs|builtins\.genList|builtins\.genericClosure|builtins\.getAttr|builtins\.getContext|builtins\.getEnv|builtins\.getFlake|builtins\.groupBy|builtins\.hasAttr|builtins\.hasContext|builtins\.hashFile|builtins\.hashString|builtins\.head|builtins\.import|builtins\.intersectAttrs|builtins\.isAttrs|builtins\.isBool|builtins\.isFloat|builtins\.isFunction|builtins\.isInt|builtins\.isList|builtins\.isNull|builtins\.isPath|builtins\.isString|builtins\.langVersion|builtins\.length|builtins\.lessThan|builtins\.listToAttrs|builtins\.map|builtins\.mapAttrs|builtins\.match|builtins\.mul|builtins\.nixPath|builtins\.nixVersion|builtins\.null|builtins\.parseDrvName|builtins\.parseFlakeRef|builtins\.partition|builtins\.path|builtins\.pathExists|builtins\.placeholder|builtins\.readDir|builtins\.readFile|builtins\.readFileType|builtins\.removeAttrs|builtins\.replaceStrings|builtins\.scopedImport|builtins\.seq|builtins\.sort|builtins\.split|builtins\.splitVersion|builtins\.storeDir|builtins\.storePath|builtins\.stringLength|builtins\.sub|builtins\.substring|builtins\.tail|builtins\.throw|builtins\.toFile|builtins\.toJSON|builtins\.toPath|builtins\.toString|builtins\.toXML|builtins\.trace|builtins\.traceVerbose|builtins\.true|builtins\.tryEval|builtins\.typeOf|builtins\.unsafeDiscardOutputDependency|builtins\.unsafeDiscardStringContext|builtins\.unsafeGetAttrPos|builtins\.warn|builtins\.zipAttrsWith)";
  mode10.relevance = 10;
  mode11.scope = r'string';
  mode11.variants = [
    Mode(
      begin: r"''",
      end: r"''",
      contains: [
        Mode(scope: r'char.escape', match: r"''\$"),
        mode12,
        Mode(scope: r'char.escape', match: r"'''"),
        mode23,
      ],
    ),
    Mode(
      begin: r'"',
      end: r'"',
      contains: [
        Mode(scope: r'char.escape', match: r'\\\$'),
        mode12,
        mode23,
      ],
    ),
  ];
  mode12.scope = r'subst';
  mode12.begin = r'\$\{';
  mode12.end = r'\}';
  mode12.keywords = {
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
    r'literal': [r'true', r'false', r'null'],
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
  mode12.contains = [
    mode0,
    mode1,
    mode4,
    mode7,
    mode10,
    mode11,
    mode13,
    mode14,
    mode15,
    mode16,
    mode18,
    mode22,
  ];
  mode13.scope = r'symbol';
  mode13.match = r"<[A-Za-z_][A-Za-z0-9_'-]*(\/[A-Za-z_][A-Za-z0-9_'-]*)*>";
  mode14.scope = r'symbol';
  mode14.match =
      r'(\.\.|\.|~)?\/([A-Za-z0-9_\+\.-]+)?(\/[A-Za-z0-9_\+\.-]+)*(?=[\s;])';
  mode15.scope = r'params';
  mode15.match = r"[A-Za-z_][A-Za-z0-9_'-]*\s*:(?=\s)";
  mode16.beforeMatch = r'(^|\{|;)\s*';
  mode16.begin =
      r"[A-Za-z_][A-Za-z0-9_'-]*(\.[A-Za-z_][A-Za-z0-9_'-]*)*\s*=(?!=)";
  mode16.returnBegin = true;
  mode16.relevance = 0;
  mode16.contains = [mode17];
  mode17.scope = r'attr';
  mode17.match =
      r"[A-Za-z_][A-Za-z0-9_'-]*(\.[A-Za-z_][A-Za-z0-9_'-]*)*(?=\s*=)";
  mode17.relevance = 0.2;
  mode18.variants = [mode19, mode20, mode21];
  mode18.relevance = 0;
  mode19.scope = r'operator';
  mode19.beforeMatch = r'\s';
  mode19.begin = r'-(?!>)';
  mode20.begin = [r'\b\d+(\.\d+)?', r'-', r'(?!>)'];
  mode20.beginScope = {1: r'number', 2: r'operator'};
  mode21.begin = [
    r'(?:==|=|\+\+|\+|<=|<\||<|>=|>|->|//|/|!=|!|\|\||\|>|\?|\*|&&)',
    r'-',
    r'(?!>)',
  ];
  mode21.beginScope = {1: r'operator', 2: r'operator'};
  mode22.scope = r'operator';
  mode22.match =
      r'(?:==|=|\+\+|\+|<=|<\||<|>=|>|->|//|/|!=|!|\|\||\|>|\?|\*|&&)(?!-)';
  mode22.relevance = 0;
  mode23.scope = r'char.escape';
  mode23.match = r'\\(?!\$).';
  return Mode(
    name: r'Nix',
    aliases: [r'nixos'],
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
      r'literal': [r'true', r'false', r'null'],
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
      mode0,
      mode1,
      mode4,
      mode7,
      mode10,
      mode11,
      mode13,
      mode14,
      mode15,
      mode16,
      mode18,
      mode22,
      Mode(scope: r'meta.prompt', match: r'^nix-repl>(?=\s)', relevance: 10),
      Mode(scope: r'meta', beforeMatch: r'\s+', begin: r':([a-z]+|\?)'),
    ],
  );
}
