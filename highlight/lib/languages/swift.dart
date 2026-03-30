// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `swift`.
Mode swift(Highlight hljs) {
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
  final Mode mode70 = Mode();
  final Mode mode71 = Mode();
  final Mode mode72 = Mode();
  final Mode mode73 = Mode();
  final Mode mode74 = Mode();
  final Mode mode75 = Mode();
  final Mode mode76 = Mode();
  final Mode mode77 = Mode();
  final Mode mode78 = Mode();
  final Mode mode79 = Mode();
  final Mode mode80 = Mode();
  final Mode mode81 = Mode();
  final Mode mode82 = Mode();
  final Mode mode83 = Mode();
  final Mode mode84 = Mode();
  final Mode mode85 = Mode();
  final Mode mode86 = Mode();
  final Mode mode87 = Mode();
  final Mode mode88 = Mode();
  final Mode mode89 = Mode();
  final Mode mode90 = Mode();
  final Mode mode91 = Mode();
  final Mode mode92 = Mode();
  final Mode mode93 = Mode();
  final Mode mode94 = Mode();
  final Mode mode95 = Mode();
  final Mode mode96 = Mode();
  final Mode mode97 = Mode();
  final Mode mode98 = Mode();
  final Mode mode99 = Mode();
  final Mode mode100 = Mode();
  final Mode mode101 = Mode();
  final Mode mode102 = Mode();
  final Mode mode103 = Mode();
  final Mode mode104 = Mode();
  final Mode mode105 = Mode();
  final Mode mode106 = Mode();
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
  mode3.contains = [r'self', mode4, mode5];
  mode4.scope = r'doctag';
  mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode4.excludeBegin = true;
  mode4.relevance = 0;
  mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode6.begin = r'<';
  mode6.end = r'>';
  mode6.keywords = r'repeat each';
  mode6.contains = [mode0, mode3, mode7];
  mode7.match = r'(?=\b[A-Z])';
  mode7.relevance = 0;
  mode7.contains = [mode8, mode9, mode10, mode11, mode12, mode13];
  mode8.scope = r'type';
  mode8.match =
      r'(AV|CA|CF|CG|CI|CL|CM|CN|CT|MK|MP|MTK|MTL|NS|SCN|SK|UI|WK|XC)(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])+';
  mode9.scope = r'type';
  mode9.match =
      r'[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*';
  mode9.relevance = 0;
  mode10.match = r'[?!]+';
  mode10.relevance = 0;
  mode11.match = r'\.\.\.';
  mode11.relevance = 0;
  mode12.match =
      r'\s+&\s+(?=[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*)';
  mode12.relevance = 0;
  mode13.begin = r'<';
  mode13.end = r'>';
  mode13.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode13.contains = [
    mode0,
    mode3,
    mode14,
    mode15,
    mode16,
    mode18,
    mode88,
    mode89,
    mode21,
    mode7,
  ];
  mode14.match = [r'\.', r'(?:\bProtocol\b|\bType\b|\binit\b|\bself\b)'];
  mode14.scope = {2: r'keyword'};
  mode15.match =
      r'\.(?:actor|any|associatedtype|async|await|as\?|as!|as|borrowing|break|case|catch|class|consume|consuming|continue|convenience|copy|default|defer|deinit|didSet|distributed|do|dynamic|each|else|enum|extension|fallthrough|fileprivate\(set\)|fileprivate|final|for|func|get|guard|if|import|indirect|infix|init\?|init!|inout|internal\(set\)|internal|in|is|isolated|nonisolated|lazy|let|macro|mutating|nonmutating|open\(set\)|open|operator|optional|override|package|postfix|precedencegroup|prefix|private\(set\)|private|protocol|public\(set\)|public|repeat|required|rethrows|return|set|some|static|struct|subscript|super|switch|throws|throw|try\?|try!|try|typealias|unowned\(safe\)|unowned\(unsafe\)|unowned|var|weak|where|while|willSet)';
  mode15.relevance = 0;
  mode16.variants = [mode17];
  mode17.scope = r'keyword';
  mode17.match =
      r'(?:\bas\?\B|\bas!\B|\bfileprivate\(set\)\B|\binit\?\B|\binit!\B|\binternal\(set\)\B|\bopen\(set\)\B|\bprivate\(set\)\B|\bpublic\(set\)\B|\btry\?\B|\btry!\B|\bunowned\(safe\)\B|\bunowned\(unsafe\)\B|\bAny\b|\bSelf\b|\binit\b|\bself\b)';
  mode18.match = r'(@|#(un)?)available';
  mode18.scope = r'keyword';
  mode18.starts = mode19;
  mode19.contains = [mode20];
  mode20.begin = r'\(';
  mode20.end = r'\)';
  mode20.keywords = [
    r'iOS',
    r'iOSApplicationExtension',
    r'macOS',
    r'macOSApplicationExtension',
    r'macCatalyst',
    r'macCatalystApplicationExtension',
    r'watchOS',
    r'watchOSApplicationExtension',
    r'tvOS',
    r'tvOSApplicationExtension',
    r'swift',
  ];
  mode20.contains = [mode21, mode22, mode25, mode30];
  mode21.match = r'->';
  mode21.relevance = 0;
  mode22.scope = r'operator';
  mode22.relevance = 0;
  mode22.variants = [mode23, mode24];
  mode23.match =
      r'(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])(?:(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])|[\u0300-\u036F]|[\u1DC0-\u1DFF]|[\u20D0-\u20FF]|[\uFE00-\uFE0F]|[\uFE20-\uFE2F])*';
  mode24.match =
      r'\.(\.|(?:(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])|[\u0300-\u036F]|[\u1DC0-\u1DFF]|[\u20D0-\u20FF]|[\uFE00-\uFE0F]|[\uFE20-\uFE2F]))+';
  mode25.scope = r'number';
  mode25.relevance = 0;
  mode25.variants = [mode26, mode27, mode28, mode29];
  mode26.match = r'\b(([0-9]_*)+)(\.(([0-9]_*)+))?([eE][+-]?(([0-9]_*)+))?\b';
  mode27.match =
      r'\b0x(([0-9a-fA-F]_*)+)(\.(([0-9a-fA-F]_*)+))?([pP][+-]?(([0-9]_*)+))?\b';
  mode28.match = r'\b0o([0-7]_*)+\b';
  mode29.match = r'\b0b([01]_*)+\b';
  mode30.scope = r'string';
  mode30.variants = [
    mode31,
    mode43,
    mode50,
    mode57,
    mode64,
    mode70,
    mode76,
    mode82,
  ];
  mode31.begin = r'"""';
  mode31.end = r'"""';
  mode31.contains = [mode32, mode35, mode36];
  mode32.scope = r'subst';
  mode32.variants = [mode33, mode34];
  mode33.match = '\\\\[0\\\\tnr"\']';
  mode34.match = r'\\u\{[0-9a-fA-F]{1,8}\}';
  mode35.scope = r'subst';
  mode35.match = r'\\[\t ]*(?:[\r\n]|\r\n)';
  mode36.scope = r'subst';
  mode36.label = r'interpol';
  mode36.begin = r'\\\(';
  mode36.end = r'\)';
  mode36.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode36.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode42,
  ];
  mode37.match =
      r'\.(?:abs|all|any|assert|assertionFailure|debugPrint|dump|fatalError|getVaList|isKnownUniquelyReferenced|max|min|numericCast|pointwiseMax|pointwiseMin|precondition|preconditionFailure|print|readLine|repeatElement|sequence|stride|swap|swift_unboxFromSwiftValueWithType|transcode|type|unsafeBitCast|unsafeDowncast|withExtendedLifetime|withUnsafeMutablePointer|withUnsafePointer|withVaList|withoutActuallyEscaping|zip)';
  mode37.relevance = 0;
  mode38.scope = r'built_in';
  mode38.match =
      r'\b(?:abs|all|any|assert|assertionFailure|debugPrint|dump|fatalError|getVaList|isKnownUniquelyReferenced|max|min|numericCast|pointwiseMax|pointwiseMin|precondition|preconditionFailure|print|readLine|repeatElement|sequence|stride|swap|swift_unboxFromSwiftValueWithType|transcode|type|unsafeBitCast|unsafeDowncast|withExtendedLifetime|withUnsafeMutablePointer|withUnsafePointer|withVaList|withoutActuallyEscaping|zip)(?=\()';
  mode39.match =
      r'`(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*`';
  mode40.scope = r'variable';
  mode40.match = r'\$\d+';
  mode41.scope = r'variable';
  mode41.match =
      r'\$(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])+';
  mode42.begin = r'\(';
  mode42.end = r'\)';
  mode42.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode43.begin = r'#"""';
  mode43.end = r'"""#';
  mode43.contains = [mode44, mode47, mode48];
  mode44.scope = r'subst';
  mode44.variants = [mode45, mode46];
  mode45.match = '\\\\#[0\\\\tnr"\']';
  mode46.match = r'\\#u\{[0-9a-fA-F]{1,8}\}';
  mode47.scope = r'subst';
  mode47.match = r'\\#[\t ]*(?:[\r\n]|\r\n)';
  mode48.scope = r'subst';
  mode48.label = r'interpol';
  mode48.begin = r'\\#\(';
  mode48.end = r'\)';
  mode48.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode48.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode49,
  ];
  mode49.begin = r'\(';
  mode49.end = r'\)';
  mode49.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode50.begin = r'##"""';
  mode50.end = r'"""##';
  mode50.contains = [mode51, mode54, mode55];
  mode51.scope = r'subst';
  mode51.variants = [mode52, mode53];
  mode52.match = '\\\\##[0\\\\tnr"\']';
  mode53.match = r'\\##u\{[0-9a-fA-F]{1,8}\}';
  mode54.scope = r'subst';
  mode54.match = r'\\##[\t ]*(?:[\r\n]|\r\n)';
  mode55.scope = r'subst';
  mode55.label = r'interpol';
  mode55.begin = r'\\##\(';
  mode55.end = r'\)';
  mode55.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode55.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode56,
  ];
  mode56.begin = r'\(';
  mode56.end = r'\)';
  mode56.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode57.begin = r'###"""';
  mode57.end = r'"""###';
  mode57.contains = [mode58, mode61, mode62];
  mode58.scope = r'subst';
  mode58.variants = [mode59, mode60];
  mode59.match = '\\\\###[0\\\\tnr"\']';
  mode60.match = r'\\###u\{[0-9a-fA-F]{1,8}\}';
  mode61.scope = r'subst';
  mode61.match = r'\\###[\t ]*(?:[\r\n]|\r\n)';
  mode62.scope = r'subst';
  mode62.label = r'interpol';
  mode62.begin = r'\\###\(';
  mode62.end = r'\)';
  mode62.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode62.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode63,
  ];
  mode63.begin = r'\(';
  mode63.end = r'\)';
  mode63.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode64.begin = r'"';
  mode64.end = r'"';
  mode64.contains = [mode65, mode68];
  mode65.scope = r'subst';
  mode65.variants = [mode66, mode67];
  mode66.match = '\\\\[0\\\\tnr"\']';
  mode67.match = r'\\u\{[0-9a-fA-F]{1,8}\}';
  mode68.scope = r'subst';
  mode68.label = r'interpol';
  mode68.begin = r'\\\(';
  mode68.end = r'\)';
  mode68.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode68.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode69,
  ];
  mode69.begin = r'\(';
  mode69.end = r'\)';
  mode69.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode70.begin = r'#"';
  mode70.end = r'"#';
  mode70.contains = [mode71, mode74];
  mode71.scope = r'subst';
  mode71.variants = [mode72, mode73];
  mode72.match = '\\\\#[0\\\\tnr"\']';
  mode73.match = r'\\#u\{[0-9a-fA-F]{1,8}\}';
  mode74.scope = r'subst';
  mode74.label = r'interpol';
  mode74.begin = r'\\#\(';
  mode74.end = r'\)';
  mode74.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode74.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode75,
  ];
  mode75.begin = r'\(';
  mode75.end = r'\)';
  mode75.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode76.begin = r'##"';
  mode76.end = r'"##';
  mode76.contains = [mode77, mode80];
  mode77.scope = r'subst';
  mode77.variants = [mode78, mode79];
  mode78.match = '\\\\##[0\\\\tnr"\']';
  mode79.match = r'\\##u\{[0-9a-fA-F]{1,8}\}';
  mode80.scope = r'subst';
  mode80.label = r'interpol';
  mode80.begin = r'\\##\(';
  mode80.end = r'\)';
  mode80.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode80.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode81,
  ];
  mode81.begin = r'\(';
  mode81.end = r'\)';
  mode81.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode82.begin = r'###"';
  mode82.end = r'"###';
  mode82.contains = [mode83, mode86];
  mode83.scope = r'subst';
  mode83.variants = [mode84, mode85];
  mode84.match = '\\\\###[0\\\\tnr"\']';
  mode85.match = r'\\###u\{[0-9a-fA-F]{1,8}\}';
  mode86.scope = r'subst';
  mode86.label = r'interpol';
  mode86.begin = r'\\###\(';
  mode86.end = r'\)';
  mode86.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode86.contains = [
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode87,
  ];
  mode87.begin = r'\(';
  mode87.end = r'\)';
  mode87.contains = [
    r'self',
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
  ];
  mode88.scope = r'keyword';
  mode88.match =
      r'@(?:attached|autoclosure|convention\((?:swift|block|c)\)|discardableResult|dynamicCallable|dynamicMemberLookup|escaping|freestanding|frozen|GKInspectable|IBAction|IBDesignable|IBInspectable|IBOutlet|IBSegueAction|inlinable|main|nonobjc|NSApplicationMain|NSCopying|NSManaged|objc\((?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\)|objc|objcMembers|propertyWrapper|requires_stored_property_inits|resultBuilder|Sendable|testable|UIApplicationMain|unchecked|unknown|usableFromInline|warn_unqualified_access)(?=(?:\(|\s+))';
  mode89.scope = r'meta';
  mode89.match =
      r'@(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*';
  mode90.begin = r'\(';
  mode90.end = r'\)';
  mode90.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode90.contains = [
    mode91,
    mode0,
    mode3,
    mode14,
    mode15,
    mode16,
    mode21,
    mode22,
    mode25,
    mode30,
    mode18,
    mode88,
    mode89,
    mode7,
    mode94,
  ];
  mode90.endsParent = true;
  mode90.illegal = '["\']';
  mode91.begin =
      r'(?:(?=(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s*:)|(?=(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s+(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s*:))';
  mode91.end = r':';
  mode91.relevance = 0;
  mode91.contains = [mode92, mode93];
  mode92.scope = r'keyword';
  mode92.match = r'\b_\b';
  mode93.scope = r'params';
  mode93.match =
      r'(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*';
  mode94.begin = r'\(';
  mode94.end = r'\)';
  mode94.relevance = 0;
  mode94.keywords = {
    r'$pattern': r'(?:\b\w+|#\w+)',
    r'keyword': [
      r'actor',
      r'any',
      r'associatedtype',
      r'async',
      r'await',
      r'as',
      r'borrowing',
      r'break',
      r'case',
      r'catch',
      r'class',
      r'consume',
      r'consuming',
      r'continue',
      r'convenience',
      r'copy',
      r'default',
      r'defer',
      r'deinit',
      r'didSet',
      r'distributed',
      r'do',
      r'dynamic',
      r'each',
      r'else',
      r'enum',
      r'extension',
      r'fallthrough',
      r'fileprivate',
      r'final',
      r'for',
      r'func',
      r'get',
      r'guard',
      r'if',
      r'import',
      r'indirect',
      r'infix',
      r'inout',
      r'internal',
      r'in',
      r'is',
      r'isolated',
      r'nonisolated',
      r'lazy',
      r'let',
      r'macro',
      r'mutating',
      r'nonmutating',
      r'open',
      r'operator',
      r'optional',
      r'override',
      r'package',
      r'postfix',
      r'precedencegroup',
      r'prefix',
      r'private',
      r'protocol',
      r'public',
      r'repeat',
      r'required',
      r'rethrows',
      r'return',
      r'set',
      r'some',
      r'static',
      r'struct',
      r'subscript',
      r'super',
      r'switch',
      r'throws',
      r'throw',
      r'try',
      r'typealias',
      r'unowned',
      r'var',
      r'weak',
      r'where',
      r'while',
      r'willSet',
      r'_|0',
      r'#colorLiteral',
      r'#column',
      r'#dsohandle',
      r'#else',
      r'#elseif',
      r'#endif',
      r'#error',
      r'#file',
      r'#fileID',
      r'#fileLiteral',
      r'#filePath',
      r'#function',
      r'#if',
      r'#imageLiteral',
      r'#keyPath',
      r'#line',
      r'#selector',
      r'#sourceLocation',
      r'#warning',
    ],
    r'literal': [r'false', r'nil', r'true'],
  };
  mode94.contains = [
    r'self',
    mode95,
    mode0,
    mode3,
    mode96,
    mode14,
    mode15,
    mode16,
    mode37,
    mode38,
    mode21,
    mode22,
    mode25,
    mode30,
    mode39,
    mode40,
    mode41,
    mode18,
    mode88,
    mode89,
    mode7,
  ];
  mode95.match =
      r'(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s*:';
  mode95.keywords = r'_|0';
  mode95.relevance = 0;
  mode96.scope = r'regexp';
  mode96.variants = [mode97, mode101, mode103, mode105];
  mode97.begin = r'###\/';
  mode97.end = r'\/###';
  mode97.contains = [mode98, mode99, mode100];
  mode98.begin = r'\\[\s\S]';
  mode98.relevance = 0;
  mode99.begin = r'\[';
  mode99.end = r'\]';
  mode99.relevance = 0;
  mode99.contains = [mode98];
  mode100.scope = r'comment';
  mode100.begin = r'#(?!.*\/###)';
  mode100.end = r'$';
  mode101.begin = r'##\/';
  mode101.end = r'\/##';
  mode101.contains = [mode98, mode99, mode102];
  mode102.scope = r'comment';
  mode102.begin = r'#(?!.*\/##)';
  mode102.end = r'$';
  mode103.begin = r'#\/';
  mode103.end = r'\/#';
  mode103.contains = [mode98, mode99, mode104];
  mode104.scope = r'comment';
  mode104.begin = r'#(?!.*\/#)';
  mode104.end = r'$';
  mode105.begin = r'\/[^\s](?=[^/\n]*\/)';
  mode105.end = r'\/';
  mode105.contains = [mode98, mode99];
  mode106.match = r'\s+';
  mode106.relevance = 0;
  return Mode(
    name: r'Swift',
    keywords: {
      r'$pattern': r'(?:\b\w+|#\w+)',
      r'keyword': [
        r'actor',
        r'any',
        r'associatedtype',
        r'async',
        r'await',
        r'as',
        r'borrowing',
        r'break',
        r'case',
        r'catch',
        r'class',
        r'consume',
        r'consuming',
        r'continue',
        r'convenience',
        r'copy',
        r'default',
        r'defer',
        r'deinit',
        r'didSet',
        r'distributed',
        r'do',
        r'dynamic',
        r'each',
        r'else',
        r'enum',
        r'extension',
        r'fallthrough',
        r'fileprivate',
        r'final',
        r'for',
        r'func',
        r'get',
        r'guard',
        r'if',
        r'import',
        r'indirect',
        r'infix',
        r'inout',
        r'internal',
        r'in',
        r'is',
        r'isolated',
        r'nonisolated',
        r'lazy',
        r'let',
        r'macro',
        r'mutating',
        r'nonmutating',
        r'open',
        r'operator',
        r'optional',
        r'override',
        r'package',
        r'postfix',
        r'precedencegroup',
        r'prefix',
        r'private',
        r'protocol',
        r'public',
        r'repeat',
        r'required',
        r'rethrows',
        r'return',
        r'set',
        r'some',
        r'static',
        r'struct',
        r'subscript',
        r'super',
        r'switch',
        r'throws',
        r'throw',
        r'try',
        r'typealias',
        r'unowned',
        r'var',
        r'weak',
        r'where',
        r'while',
        r'willSet',
        r'_|0',
        r'#colorLiteral',
        r'#column',
        r'#dsohandle',
        r'#else',
        r'#elseif',
        r'#endif',
        r'#error',
        r'#file',
        r'#fileID',
        r'#fileLiteral',
        r'#filePath',
        r'#function',
        r'#if',
        r'#imageLiteral',
        r'#keyPath',
        r'#line',
        r'#selector',
        r'#sourceLocation',
        r'#warning',
      ],
      r'literal': [r'false', r'nil', r'true'],
    },
    contains: [
      mode0,
      mode3,
      Mode(
        match: [
          r'(func|macro)',
          r'\s+',
          r'(?:`(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*`|(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*|(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])(?:(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])|[\u0300-\u036F]|[\u1DC0-\u1DFF]|[\u20D0-\u20FF]|[\uFE00-\uFE0F]|[\uFE20-\uFE2F])*)',
        ],
        scope: {1: r'keyword', 3: r'title.function'},
        contains: [mode6, mode90, mode106],
        illegal: [r'\[', r'%'],
      ),
      Mode(
        match: [r'\b(?:subscript|init[?!]?)', r'\s*(?=[<(])'],
        scope: {1: r'keyword'},
        contains: [mode6, mode90, mode106],
        illegal: r'\[|%',
      ),
      Mode(
        match: [
          r'class\b',
          r'\s+',
          r'func\b',
          r'\s+',
          r'\b[A-Za-z_][A-Za-z0-9_]*\b',
        ],
        scope: {1: r'keyword', 3: r'keyword', 5: r'title.function'},
      ),
      Mode(
        match: [r'class\b', r'\s+', r'var\b'],
        scope: {1: r'keyword', 3: r'keyword'},
      ),
      Mode(
        begin: [
          r'(struct|protocol|class|extension|enum|actor)',
          r'\s+',
          r'(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*',
          r'\s*',
        ],
        beginScope: {1: r'keyword', 3: r'title.class'},
        keywords: {
          r'$pattern': r'(?:\b\w+|#\w+)',
          r'keyword': [
            r'actor',
            r'any',
            r'associatedtype',
            r'async',
            r'await',
            r'as',
            r'borrowing',
            r'break',
            r'case',
            r'catch',
            r'class',
            r'consume',
            r'consuming',
            r'continue',
            r'convenience',
            r'copy',
            r'default',
            r'defer',
            r'deinit',
            r'didSet',
            r'distributed',
            r'do',
            r'dynamic',
            r'each',
            r'else',
            r'enum',
            r'extension',
            r'fallthrough',
            r'fileprivate',
            r'final',
            r'for',
            r'func',
            r'get',
            r'guard',
            r'if',
            r'import',
            r'indirect',
            r'infix',
            r'inout',
            r'internal',
            r'in',
            r'is',
            r'isolated',
            r'nonisolated',
            r'lazy',
            r'let',
            r'macro',
            r'mutating',
            r'nonmutating',
            r'open',
            r'operator',
            r'optional',
            r'override',
            r'package',
            r'postfix',
            r'precedencegroup',
            r'prefix',
            r'private',
            r'protocol',
            r'public',
            r'repeat',
            r'required',
            r'rethrows',
            r'return',
            r'set',
            r'some',
            r'static',
            r'struct',
            r'subscript',
            r'super',
            r'switch',
            r'throws',
            r'throw',
            r'try',
            r'typealias',
            r'unowned',
            r'var',
            r'weak',
            r'where',
            r'while',
            r'willSet',
            r'_|0',
            r'#colorLiteral',
            r'#column',
            r'#dsohandle',
            r'#else',
            r'#elseif',
            r'#endif',
            r'#error',
            r'#file',
            r'#fileID',
            r'#fileLiteral',
            r'#filePath',
            r'#function',
            r'#if',
            r'#imageLiteral',
            r'#keyPath',
            r'#line',
            r'#selector',
            r'#sourceLocation',
            r'#warning',
          ],
          r'literal': [r'false', r'nil', r'true'],
        },
        contains: [
          mode6,
          mode14,
          mode15,
          mode16,
          Mode(
            begin: r':',
            end: r'\{',
            keywords: {
              r'$pattern': r'(?:\b\w+|#\w+)',
              r'keyword': [
                r'actor',
                r'any',
                r'associatedtype',
                r'async',
                r'await',
                r'as',
                r'borrowing',
                r'break',
                r'case',
                r'catch',
                r'class',
                r'consume',
                r'consuming',
                r'continue',
                r'convenience',
                r'copy',
                r'default',
                r'defer',
                r'deinit',
                r'didSet',
                r'distributed',
                r'do',
                r'dynamic',
                r'each',
                r'else',
                r'enum',
                r'extension',
                r'fallthrough',
                r'fileprivate',
                r'final',
                r'for',
                r'func',
                r'get',
                r'guard',
                r'if',
                r'import',
                r'indirect',
                r'infix',
                r'inout',
                r'internal',
                r'in',
                r'is',
                r'isolated',
                r'nonisolated',
                r'lazy',
                r'let',
                r'macro',
                r'mutating',
                r'nonmutating',
                r'open',
                r'operator',
                r'optional',
                r'override',
                r'package',
                r'postfix',
                r'precedencegroup',
                r'prefix',
                r'private',
                r'protocol',
                r'public',
                r'repeat',
                r'required',
                r'rethrows',
                r'return',
                r'set',
                r'some',
                r'static',
                r'struct',
                r'subscript',
                r'super',
                r'switch',
                r'throws',
                r'throw',
                r'try',
                r'typealias',
                r'unowned',
                r'var',
                r'weak',
                r'where',
                r'while',
                r'willSet',
                r'_|0',
                r'#colorLiteral',
                r'#column',
                r'#dsohandle',
                r'#else',
                r'#elseif',
                r'#endif',
                r'#error',
                r'#file',
                r'#fileID',
                r'#fileLiteral',
                r'#filePath',
                r'#function',
                r'#if',
                r'#imageLiteral',
                r'#keyPath',
                r'#line',
                r'#selector',
                r'#sourceLocation',
                r'#warning',
              ],
              r'literal': [r'false', r'nil', r'true'],
            },
            contains: [
              Mode(
                scope: r'title.class.inherited',
                match:
                    r'[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*',
              ),
              mode14,
              mode15,
              mode16,
            ],
            relevance: 0,
          ),
        ],
      ),
      Mode(
        match: [
          r'operator',
          r'\s+',
          r'(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])(?:(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])|[\u0300-\u036F]|[\u1DC0-\u1DFF]|[\u20D0-\u20FF]|[\uFE00-\uFE0F]|[\uFE20-\uFE2F])*',
        ],
        scope: {1: r'keyword', 3: r'title'},
      ),
      Mode(
        begin: [
          r'precedencegroup',
          r'\s+',
          r'[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*',
        ],
        scope: {1: r'keyword', 3: r'title'},
        contains: [mode7],
        keywords: [
          r'assignment',
          r'associativity',
          r'higherThan',
          r'left',
          r'lowerThan',
          r'none',
          r'right',
          r'false',
          r'nil',
          r'true',
        ],
        end: r'}',
      ),
      Mode(
        beginKeywords: r'import',
        end: r'$',
        contains: [mode0, mode3],
        relevance: 0,
      ),
      mode96,
      mode14,
      mode15,
      mode16,
      mode37,
      mode38,
      mode21,
      mode22,
      mode25,
      mode30,
      mode39,
      mode40,
      mode41,
      mode18,
      mode88,
      mode89,
      mode7,
      mode94,
    ],
  );
}
