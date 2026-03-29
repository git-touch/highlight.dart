// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode swift(Highlight hljs) {
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
  final Mode _mode70 = Mode();
  final Mode _mode71 = Mode();
  final Mode _mode72 = Mode();
  final Mode _mode73 = Mode();
  final Mode _mode74 = Mode();
  final Mode _mode75 = Mode();
  final Mode _mode76 = Mode();
  final Mode _mode77 = Mode();
  final Mode _mode78 = Mode();
  final Mode _mode79 = Mode();
  final Mode _mode80 = Mode();
  final Mode _mode81 = Mode();
  final Mode _mode82 = Mode();
  final Mode _mode83 = Mode();
  final Mode _mode84 = Mode();
  final Mode _mode85 = Mode();
  final Mode _mode86 = Mode();
  final Mode _mode87 = Mode();
  final Mode _mode88 = Mode();
  final Mode _mode89 = Mode();
  final Mode _mode90 = Mode();
  final Mode _mode91 = Mode();
  final Mode _mode92 = Mode();
  final Mode _mode93 = Mode();
  final Mode _mode94 = Mode();
  final Mode _mode95 = Mode();
  final Mode _mode96 = Mode();
  final Mode _mode97 = Mode();
  final Mode _mode98 = Mode();
  final Mode _mode99 = Mode();
  final Mode _mode100 = Mode();
  final Mode _mode101 = Mode();
  final Mode _mode102 = Mode();
  final Mode _mode103 = Mode();
  final Mode _mode104 = Mode();
  final Mode _mode105 = Mode();
  final Mode _mode106 = Mode();
  _mode0.scope = r'comment';
  _mode0.begin = r'//';
  _mode0.end = r'$';
  _mode0.contains = [
    _mode1,
    _mode2,
  ];
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
  _mode3.contains = [
    r'self',
    _mode4,
    _mode5,
  ];
  _mode4.scope = r'doctag';
  _mode4.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode4.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode6.begin = r'<';
  _mode6.end = r'>';
  _mode6.keywords = r'repeat each';
  _mode6.contains = [
    _mode0,
    _mode3,
    _mode7,
  ];
  _mode7.match = r'(?=\b[A-Z])';
  _mode7.relevance = 0;
  _mode7.contains = [
    _mode8,
    _mode9,
    _mode10,
    _mode11,
    _mode12,
    _mode13,
  ];
  _mode8.scope = r'type';
  _mode8.match =
      r'(AV|CA|CF|CG|CI|CL|CM|CN|CT|MK|MP|MTK|MTL|NS|SCN|SK|UI|WK|XC)(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])+';
  _mode9.scope = r'type';
  _mode9.match =
      r'[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*';
  _mode9.relevance = 0;
  _mode10.match = r'[?!]+';
  _mode10.relevance = 0;
  _mode11.match = r'\.\.\.';
  _mode11.relevance = 0;
  _mode12.match =
      r'\s+&\s+(?=[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*)';
  _mode12.relevance = 0;
  _mode13.begin = r'<';
  _mode13.end = r'>';
  _mode13.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode13.contains = [
    _mode0,
    _mode3,
    _mode14,
    _mode15,
    _mode16,
    _mode18,
    _mode88,
    _mode89,
    _mode21,
    _mode7,
  ];
  _mode14.match = [
    r'\.',
    r'(?:\bProtocol\b|\bType\b|\binit\b|\bself\b)',
  ];
  _mode14.scope = {
    2: r'keyword',
  };
  _mode15.match =
      r'\.(?:actor|any|associatedtype|async|await|as\?|as!|as|borrowing|break|case|catch|class|consume|consuming|continue|convenience|copy|default|defer|deinit|didSet|distributed|do|dynamic|each|else|enum|extension|fallthrough|fileprivate\(set\)|fileprivate|final|for|func|get|guard|if|import|indirect|infix|init\?|init!|inout|internal\(set\)|internal|in|is|isolated|nonisolated|lazy|let|macro|mutating|nonmutating|open\(set\)|open|operator|optional|override|package|postfix|precedencegroup|prefix|private\(set\)|private|protocol|public\(set\)|public|repeat|required|rethrows|return|set|some|static|struct|subscript|super|switch|throws|throw|try\?|try!|try|typealias|unowned\(safe\)|unowned\(unsafe\)|unowned|var|weak|where|while|willSet)';
  _mode15.relevance = 0;
  _mode16.variants = [
    _mode17,
  ];
  _mode17.scope = r'keyword';
  _mode17.match =
      r'(?:\bas\?\B|\bas!\B|\bfileprivate\(set\)\B|\binit\?\B|\binit!\B|\binternal\(set\)\B|\bopen\(set\)\B|\bprivate\(set\)\B|\bpublic\(set\)\B|\btry\?\B|\btry!\B|\bunowned\(safe\)\B|\bunowned\(unsafe\)\B|\bAny\b|\bSelf\b|\binit\b|\bself\b)';
  _mode18.match = r'(@|#(un)?)available';
  _mode18.scope = r'keyword';
  _mode18.starts = _mode19;
  _mode19.contains = [
    _mode20,
  ];
  _mode20.begin = r'\(';
  _mode20.end = r'\)';
  _mode20.keywords = [
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
  _mode20.contains = [
    _mode21,
    _mode22,
    _mode25,
    _mode30,
  ];
  _mode21.match = r'->';
  _mode21.relevance = 0;
  _mode22.scope = r'operator';
  _mode22.relevance = 0;
  _mode22.variants = [
    _mode23,
    _mode24,
  ];
  _mode23.match =
      r'(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])(?:(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])|[\u0300-\u036F]|[\u1DC0-\u1DFF]|[\u20D0-\u20FF]|[\uFE00-\uFE0F]|[\uFE20-\uFE2F])*';
  _mode24.match =
      r'\.(\.|(?:(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])|[\u0300-\u036F]|[\u1DC0-\u1DFF]|[\u20D0-\u20FF]|[\uFE00-\uFE0F]|[\uFE20-\uFE2F]))+';
  _mode25.scope = r'number';
  _mode25.relevance = 0;
  _mode25.variants = [
    _mode26,
    _mode27,
    _mode28,
    _mode29,
  ];
  _mode26.match = r'\b(([0-9]_*)+)(\.(([0-9]_*)+))?([eE][+-]?(([0-9]_*)+))?\b';
  _mode27.match =
      r'\b0x(([0-9a-fA-F]_*)+)(\.(([0-9a-fA-F]_*)+))?([pP][+-]?(([0-9]_*)+))?\b';
  _mode28.match = r'\b0o([0-7]_*)+\b';
  _mode29.match = r'\b0b([01]_*)+\b';
  _mode30.scope = r'string';
  _mode30.variants = [
    _mode31,
    _mode43,
    _mode50,
    _mode57,
    _mode64,
    _mode70,
    _mode76,
    _mode82,
  ];
  _mode31.begin = r'"""';
  _mode31.end = r'"""';
  _mode31.contains = [
    _mode32,
    _mode35,
    _mode36,
  ];
  _mode32.scope = r'subst';
  _mode32.variants = [
    _mode33,
    _mode34,
  ];
  _mode33.match = '\\\\[0\\\\tnr"\']';
  _mode34.match = r'\\u\{[0-9a-fA-F]{1,8}\}';
  _mode35.scope = r'subst';
  _mode35.match = r'\\[\t ]*(?:[\r\n]|\r\n)';
  _mode36.scope = r'subst';
  _mode36.label = r'interpol';
  _mode36.begin = r'\\\(';
  _mode36.end = r'\)';
  _mode36.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode36.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode42,
  ];
  _mode37.match =
      r'\.(?:abs|all|any|assert|assertionFailure|debugPrint|dump|fatalError|getVaList|isKnownUniquelyReferenced|max|min|numericCast|pointwiseMax|pointwiseMin|precondition|preconditionFailure|print|readLine|repeatElement|sequence|stride|swap|swift_unboxFromSwiftValueWithType|transcode|type|unsafeBitCast|unsafeDowncast|withExtendedLifetime|withUnsafeMutablePointer|withUnsafePointer|withVaList|withoutActuallyEscaping|zip)';
  _mode37.relevance = 0;
  _mode38.scope = r'built_in';
  _mode38.match =
      r'\b(?:abs|all|any|assert|assertionFailure|debugPrint|dump|fatalError|getVaList|isKnownUniquelyReferenced|max|min|numericCast|pointwiseMax|pointwiseMin|precondition|preconditionFailure|print|readLine|repeatElement|sequence|stride|swap|swift_unboxFromSwiftValueWithType|transcode|type|unsafeBitCast|unsafeDowncast|withExtendedLifetime|withUnsafeMutablePointer|withUnsafePointer|withVaList|withoutActuallyEscaping|zip)(?=\()';
  _mode39.match =
      r'`(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*`';
  _mode40.scope = r'variable';
  _mode40.match = r'\$\d+';
  _mode41.scope = r'variable';
  _mode41.match =
      r'\$(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])+';
  _mode42.begin = r'\(';
  _mode42.end = r'\)';
  _mode42.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode43.begin = r'#"""';
  _mode43.end = r'"""#';
  _mode43.contains = [
    _mode44,
    _mode47,
    _mode48,
  ];
  _mode44.scope = r'subst';
  _mode44.variants = [
    _mode45,
    _mode46,
  ];
  _mode45.match = '\\\\#[0\\\\tnr"\']';
  _mode46.match = r'\\#u\{[0-9a-fA-F]{1,8}\}';
  _mode47.scope = r'subst';
  _mode47.match = r'\\#[\t ]*(?:[\r\n]|\r\n)';
  _mode48.scope = r'subst';
  _mode48.label = r'interpol';
  _mode48.begin = r'\\#\(';
  _mode48.end = r'\)';
  _mode48.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode48.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode49,
  ];
  _mode49.begin = r'\(';
  _mode49.end = r'\)';
  _mode49.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode50.begin = r'##"""';
  _mode50.end = r'"""##';
  _mode50.contains = [
    _mode51,
    _mode54,
    _mode55,
  ];
  _mode51.scope = r'subst';
  _mode51.variants = [
    _mode52,
    _mode53,
  ];
  _mode52.match = '\\\\##[0\\\\tnr"\']';
  _mode53.match = r'\\##u\{[0-9a-fA-F]{1,8}\}';
  _mode54.scope = r'subst';
  _mode54.match = r'\\##[\t ]*(?:[\r\n]|\r\n)';
  _mode55.scope = r'subst';
  _mode55.label = r'interpol';
  _mode55.begin = r'\\##\(';
  _mode55.end = r'\)';
  _mode55.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode55.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode56,
  ];
  _mode56.begin = r'\(';
  _mode56.end = r'\)';
  _mode56.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode57.begin = r'###"""';
  _mode57.end = r'"""###';
  _mode57.contains = [
    _mode58,
    _mode61,
    _mode62,
  ];
  _mode58.scope = r'subst';
  _mode58.variants = [
    _mode59,
    _mode60,
  ];
  _mode59.match = '\\\\###[0\\\\tnr"\']';
  _mode60.match = r'\\###u\{[0-9a-fA-F]{1,8}\}';
  _mode61.scope = r'subst';
  _mode61.match = r'\\###[\t ]*(?:[\r\n]|\r\n)';
  _mode62.scope = r'subst';
  _mode62.label = r'interpol';
  _mode62.begin = r'\\###\(';
  _mode62.end = r'\)';
  _mode62.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode62.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode63,
  ];
  _mode63.begin = r'\(';
  _mode63.end = r'\)';
  _mode63.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode64.begin = r'"';
  _mode64.end = r'"';
  _mode64.contains = [
    _mode65,
    _mode68,
  ];
  _mode65.scope = r'subst';
  _mode65.variants = [
    _mode66,
    _mode67,
  ];
  _mode66.match = '\\\\[0\\\\tnr"\']';
  _mode67.match = r'\\u\{[0-9a-fA-F]{1,8}\}';
  _mode68.scope = r'subst';
  _mode68.label = r'interpol';
  _mode68.begin = r'\\\(';
  _mode68.end = r'\)';
  _mode68.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode68.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode69,
  ];
  _mode69.begin = r'\(';
  _mode69.end = r'\)';
  _mode69.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode70.begin = r'#"';
  _mode70.end = r'"#';
  _mode70.contains = [
    _mode71,
    _mode74,
  ];
  _mode71.scope = r'subst';
  _mode71.variants = [
    _mode72,
    _mode73,
  ];
  _mode72.match = '\\\\#[0\\\\tnr"\']';
  _mode73.match = r'\\#u\{[0-9a-fA-F]{1,8}\}';
  _mode74.scope = r'subst';
  _mode74.label = r'interpol';
  _mode74.begin = r'\\#\(';
  _mode74.end = r'\)';
  _mode74.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode74.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode75,
  ];
  _mode75.begin = r'\(';
  _mode75.end = r'\)';
  _mode75.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode76.begin = r'##"';
  _mode76.end = r'"##';
  _mode76.contains = [
    _mode77,
    _mode80,
  ];
  _mode77.scope = r'subst';
  _mode77.variants = [
    _mode78,
    _mode79,
  ];
  _mode78.match = '\\\\##[0\\\\tnr"\']';
  _mode79.match = r'\\##u\{[0-9a-fA-F]{1,8}\}';
  _mode80.scope = r'subst';
  _mode80.label = r'interpol';
  _mode80.begin = r'\\##\(';
  _mode80.end = r'\)';
  _mode80.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode80.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode81,
  ];
  _mode81.begin = r'\(';
  _mode81.end = r'\)';
  _mode81.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode82.begin = r'###"';
  _mode82.end = r'"###';
  _mode82.contains = [
    _mode83,
    _mode86,
  ];
  _mode83.scope = r'subst';
  _mode83.variants = [
    _mode84,
    _mode85,
  ];
  _mode84.match = '\\\\###[0\\\\tnr"\']';
  _mode85.match = r'\\###u\{[0-9a-fA-F]{1,8}\}';
  _mode86.scope = r'subst';
  _mode86.label = r'interpol';
  _mode86.begin = r'\\###\(';
  _mode86.end = r'\)';
  _mode86.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode86.contains = [
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode87,
  ];
  _mode87.begin = r'\(';
  _mode87.end = r'\)';
  _mode87.contains = [
    r'self',
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
  ];
  _mode88.scope = r'keyword';
  _mode88.match =
      r'@(?:attached|autoclosure|convention\((?:swift|block|c)\)|discardableResult|dynamicCallable|dynamicMemberLookup|escaping|freestanding|frozen|GKInspectable|IBAction|IBDesignable|IBInspectable|IBOutlet|IBSegueAction|inlinable|main|nonobjc|NSApplicationMain|NSCopying|NSManaged|objc\((?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\)|objc|objcMembers|propertyWrapper|requires_stored_property_inits|resultBuilder|Sendable|testable|UIApplicationMain|unchecked|unknown|usableFromInline|warn_unqualified_access)(?=(?:\(|\s+))';
  _mode89.scope = r'meta';
  _mode89.match =
      r'@(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*';
  _mode90.begin = r'\(';
  _mode90.end = r'\)';
  _mode90.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode90.contains = [
    _mode91,
    _mode0,
    _mode3,
    _mode14,
    _mode15,
    _mode16,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode18,
    _mode88,
    _mode89,
    _mode7,
    _mode94,
  ];
  _mode90.endsParent = true;
  _mode90.illegal = '["\']';
  _mode91.begin =
      r'(?:(?=(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s*:)|(?=(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s+(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s*:))';
  _mode91.end = r':';
  _mode91.relevance = 0;
  _mode91.contains = [
    _mode92,
    _mode93,
  ];
  _mode92.scope = r'keyword';
  _mode92.match = r'\b_\b';
  _mode93.scope = r'params';
  _mode93.match =
      r'(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*';
  _mode94.begin = r'\(';
  _mode94.end = r'\)';
  _mode94.relevance = 0;
  _mode94.keywords = {
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
    r'literal': [
      r'false',
      r'nil',
      r'true',
    ],
  };
  _mode94.contains = [
    r'self',
    _mode95,
    _mode0,
    _mode3,
    _mode96,
    _mode14,
    _mode15,
    _mode16,
    _mode37,
    _mode38,
    _mode21,
    _mode22,
    _mode25,
    _mode30,
    _mode39,
    _mode40,
    _mode41,
    _mode18,
    _mode88,
    _mode89,
    _mode7,
  ];
  _mode95.match =
      r'(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*\s*:';
  _mode95.keywords = r'_|0';
  _mode95.relevance = 0;
  _mode96.scope = r'regexp';
  _mode96.variants = [
    _mode97,
    _mode101,
    _mode103,
    _mode105,
  ];
  _mode97.begin = r'###\/';
  _mode97.end = r'\/###';
  _mode97.contains = [
    _mode98,
    _mode99,
    _mode100,
  ];
  _mode98.begin = r'\\[\s\S]';
  _mode98.relevance = 0;
  _mode99.begin = r'\[';
  _mode99.end = r'\]';
  _mode99.relevance = 0;
  _mode99.contains = [
    _mode98,
  ];
  _mode100.scope = r'comment';
  _mode100.begin = r'#(?!.*\/###)';
  _mode100.end = r'$';
  _mode101.begin = r'##\/';
  _mode101.end = r'\/##';
  _mode101.contains = [
    _mode98,
    _mode99,
    _mode102,
  ];
  _mode102.scope = r'comment';
  _mode102.begin = r'#(?!.*\/##)';
  _mode102.end = r'$';
  _mode103.begin = r'#\/';
  _mode103.end = r'\/#';
  _mode103.contains = [
    _mode98,
    _mode99,
    _mode104,
  ];
  _mode104.scope = r'comment';
  _mode104.begin = r'#(?!.*\/#)';
  _mode104.end = r'$';
  _mode105.begin = r'\/[^\s](?=[^/\n]*\/)';
  _mode105.end = r'\/';
  _mode105.contains = [
    _mode98,
    _mode99,
  ];
  _mode106.match = r'\s+';
  _mode106.relevance = 0;
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
      r'literal': [
        r'false',
        r'nil',
        r'true',
      ],
    },
    contains: [
      _mode0,
      _mode3,
      Mode(
        match: [
          r'(func|macro)',
          r'\s+',
          r'(?:`(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*`|(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*|(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])(?:(?:[/=\-+!*%<>&|^~?]|[\u00A1-\u00A7]|[\u00A9\u00AB]|[\u00AC\u00AE]|[\u00B0\u00B1]|[\u00B6\u00BB\u00BF\u00D7\u00F7]|[\u2016-\u2017]|[\u2020-\u2027]|[\u2030-\u203E]|[\u2041-\u2053]|[\u2055-\u205E]|[\u2190-\u23FF]|[\u2500-\u2775]|[\u2794-\u2BFF]|[\u2E00-\u2E7F]|[\u3001-\u3003]|[\u3008-\u3020]|[\u3030])|[\u0300-\u036F]|[\u1DC0-\u1DFF]|[\u20D0-\u20FF]|[\uFE00-\uFE0F]|[\uFE20-\uFE2F])*)',
        ],
        scope: {
          1: r'keyword',
          3: r'title.function',
        },
        contains: [
          _mode6,
          _mode90,
          _mode106,
        ],
        illegal: [
          r'\[',
          r'%',
        ],
      ),
      Mode(
        match: [
          r'\b(?:subscript|init[?!]?)',
          r'\s*(?=[<(])',
        ],
        scope: {
          1: r'keyword',
        },
        contains: [
          _mode6,
          _mode90,
          _mode106,
        ],
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
        scope: {
          1: r'keyword',
          3: r'keyword',
          5: r'title.function',
        },
      ),
      Mode(
        match: [
          r'class\b',
          r'\s+',
          r'var\b',
        ],
        scope: {
          1: r'keyword',
          3: r'keyword',
        },
      ),
      Mode(
        begin: [
          r'(struct|protocol|class|extension|enum|actor)',
          r'\s+',
          r'(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])(?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*',
          r'\s*',
        ],
        beginScope: {
          1: r'keyword',
          3: r'title.class',
        },
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
          r'literal': [
            r'false',
            r'nil',
            r'true',
          ],
        },
        contains: [
          _mode6,
          _mode14,
          _mode15,
          _mode16,
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
              r'literal': [
                r'false',
                r'nil',
                r'true',
              ],
            },
            contains: [
              Mode(
                scope: r'title.class.inherited',
                match:
                    r'[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*',
              ),
              _mode14,
              _mode15,
              _mode16,
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
        scope: {
          1: r'keyword',
          3: r'title',
        },
      ),
      Mode(
        begin: [
          r'precedencegroup',
          r'\s+',
          r'[A-Z](?:(?:[a-zA-Z_]|[\u00A8\u00AA\u00AD\u00AF\u00B2-\u00B5\u00B7-\u00BA]|[\u00BC-\u00BE\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]|[\u0100-\u02FF\u0370-\u167F\u1681-\u180D\u180F-\u1DBF]|[\u1E00-\u1FFF]|[\u200B-\u200D\u202A-\u202E\u203F-\u2040\u2054\u2060-\u206F]|[\u2070-\u20CF\u2100-\u218F\u2460-\u24FF\u2776-\u2793]|[\u2C00-\u2DFF\u2E80-\u2FFF]|[\u3004-\u3007\u3021-\u302F\u3031-\u303F\u3040-\uD7FF]|[\uF900-\uFD3D\uFD40-\uFDCF\uFDF0-\uFE1F\uFE30-\uFE44]|[\uFE47-\uFEFE\uFF00-\uFFFD])|\d|[\u0300-\u036F\u1DC0-\u1DFF\u20D0-\u20FF\uFE20-\uFE2F])*',
        ],
        scope: {
          1: r'keyword',
          3: r'title',
        },
        contains: [
          _mode7,
        ],
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
        contains: [
          _mode0,
          _mode3,
        ],
        relevance: 0,
      ),
      _mode96,
      _mode14,
      _mode15,
      _mode16,
      _mode37,
      _mode38,
      _mode21,
      _mode22,
      _mode25,
      _mode30,
      _mode39,
      _mode40,
      _mode41,
      _mode18,
      _mode88,
      _mode89,
      _mode7,
      _mode94,
    ],
  );
}
