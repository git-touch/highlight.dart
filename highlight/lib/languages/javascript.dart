// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode javascript(Highlight hljs) {
  bool _hasClosingTag(RegExpMatch match, {required int after}) {
    final tag = '</${match.group(0)!.substring(1)}';
    return match.input.indexOf(tag, after) != -1;
  }

  void _isTrulyOpeningTag(RegExpMatch match, CallbackResponse response) {
    final matchedText = match.group(0);
    if (matchedText == null) return;

    final afterMatchIndex = matchedText.length + match.start;
    if (afterMatchIndex >= match.input.length) return;

    final nextChar = match.input[afterMatchIndex];
    if (nextChar == '<' || nextChar == ',') {
      response.ignoreMatch();
      return;
    }

    if (nextChar == '>' && !_hasClosingTag(match, after: afterMatchIndex)) {
      response.ignoreMatch();
      return;
    }

    final afterMatch = match.input.substring(afterMatchIndex);
    if (RegExp(r'^\s*=').hasMatch(afterMatch)) {
      response.ignoreMatch();
      return;
    }

    if (RegExp(r'^\s+extends\s+').hasMatch(afterMatch)) {
      response.ignoreMatch();
    }
  }

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
  _mode0.scope = r'comment';
  _mode0.variants = [_mode1, _mode9, _mode12];
  _mode1.scope = r'comment';
  _mode1.begin = r'\/\*\*(?!\/)';
  _mode1.end = r'\*/';
  _mode1.contains = [_mode2, _mode7, _mode8];
  _mode1.relevance = 0;
  _mode2.begin = r'(?=@[A-Za-z]+)';
  _mode2.relevance = 0;
  _mode2.contains = [_mode3, _mode4, _mode5, _mode6];
  _mode3.scope = r'doctag';
  _mode3.begin = r'@[A-Za-z]+';
  _mode4.scope = r'type';
  _mode4.begin = r'\{';
  _mode4.end = r'\}';
  _mode4.excludeEnd = true;
  _mode4.excludeBegin = true;
  _mode4.relevance = 0;
  _mode5.scope = r'variable';
  _mode5.begin = r'[A-Za-z$_][0-9A-Za-z$_]*(?=\s*(-)|$)';
  _mode5.endsParent = true;
  _mode5.relevance = 0;
  _mode6.begin = r'(?=[^\n])\s';
  _mode6.relevance = 0;
  _mode7.scope = r'doctag';
  _mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode7.excludeBegin = true;
  _mode7.relevance = 0;
  _mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode9.scope = r'comment';
  _mode9.begin = r'/\*';
  _mode9.end = r'\*/';
  _mode9.contains = [_mode10, _mode11];
  _mode10.scope = r'doctag';
  _mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode10.excludeBegin = true;
  _mode10.relevance = 0;
  _mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode12.scope = r'comment';
  _mode12.begin = r'//';
  _mode12.end = r'$';
  _mode12.contains = [_mode13, _mode14];
  _mode13.scope = r'doctag';
  _mode13.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode13.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode13.excludeBegin = true;
  _mode13.relevance = 0;
  _mode14.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode15.scope = r'string';
  _mode15.begin = r"'";
  _mode15.end = r"'";
  _mode15.illegal = r'\n';
  _mode15.contains = [_mode16];
  _mode16.begin = r'\\[\s\S]';
  _mode16.relevance = 0;
  _mode17.scope = r'string';
  _mode17.begin = r'"';
  _mode17.end = r'"';
  _mode17.illegal = r'\n';
  _mode17.contains = [_mode16];
  _mode18.begin = r'.?html`';
  _mode18.end = r'';
  _mode18.starts = _mode19;
  _mode19.end = r'`';
  _mode19.returnEnd = false;
  _mode19.contains = [_mode16, _mode20];
  _mode19.subLanguage = r'xml';
  _mode20.scope = r'subst';
  _mode20.begin = r'\$\{';
  _mode20.end = r'\}';
  _mode20.keywords = {
    r'$pattern': r'[A-Za-z$_][0-9A-Za-z$_]*',
    r'keyword': [
      r'as',
      r'in',
      r'of',
      r'if',
      r'for',
      r'while',
      r'finally',
      r'var',
      r'new',
      r'function',
      r'do',
      r'return',
      r'void',
      r'else',
      r'break',
      r'catch',
      r'instanceof',
      r'with',
      r'throw',
      r'case',
      r'default',
      r'try',
      r'switch',
      r'continue',
      r'typeof',
      r'delete',
      r'let',
      r'yield',
      r'const',
      r'class',
      r'debugger',
      r'async',
      r'await',
      r'static',
      r'import',
      r'from',
      r'export',
      r'extends',
      r'using',
    ],
    r'literal': [r'true', r'false', r'null', r'undefined', r'NaN', r'Infinity'],
    r'built_in': [
      r'setInterval',
      r'setTimeout',
      r'clearInterval',
      r'clearTimeout',
      r'require',
      r'exports',
      r'eval',
      r'isFinite',
      r'isNaN',
      r'parseFloat',
      r'parseInt',
      r'decodeURI',
      r'decodeURIComponent',
      r'encodeURI',
      r'encodeURIComponent',
      r'escape',
      r'unescape',
      r'Object',
      r'Function',
      r'Boolean',
      r'Symbol',
      r'Math',
      r'Date',
      r'Number',
      r'BigInt',
      r'String',
      r'RegExp',
      r'Array',
      r'Float32Array',
      r'Float64Array',
      r'Int8Array',
      r'Uint8Array',
      r'Uint8ClampedArray',
      r'Int16Array',
      r'Int32Array',
      r'Uint16Array',
      r'Uint32Array',
      r'BigInt64Array',
      r'BigUint64Array',
      r'Set',
      r'Map',
      r'WeakSet',
      r'WeakMap',
      r'ArrayBuffer',
      r'SharedArrayBuffer',
      r'Atomics',
      r'DataView',
      r'JSON',
      r'Promise',
      r'Generator',
      r'GeneratorFunction',
      r'AsyncFunction',
      r'Reflect',
      r'Proxy',
      r'Intl',
      r'WebAssembly',
      r'Error',
      r'EvalError',
      r'InternalError',
      r'RangeError',
      r'ReferenceError',
      r'SyntaxError',
      r'TypeError',
      r'URIError',
    ],
    r'variable.language': [
      r'arguments',
      r'this',
      r'super',
      r'console',
      r'window',
      r'document',
      r'localStorage',
      r'sessionStorage',
      r'module',
      r'global',
    ],
  };
  _mode20.contains = [
    _mode15,
    _mode17,
    _mode18,
    _mode21,
    _mode23,
    _mode25,
    _mode26,
    _mode27,
    _mode35,
  ];
  _mode21.begin = r'.?css`';
  _mode21.end = r'';
  _mode21.starts = _mode22;
  _mode22.end = r'`';
  _mode22.returnEnd = false;
  _mode22.contains = [_mode16, _mode20];
  _mode22.subLanguage = r'css';
  _mode23.begin = r'.?gql`';
  _mode23.end = r'';
  _mode23.starts = _mode24;
  _mode24.end = r'`';
  _mode24.returnEnd = false;
  _mode24.contains = [_mode16, _mode20];
  _mode24.subLanguage = r'graphql';
  _mode25.scope = r'string';
  _mode25.begin = r'`';
  _mode25.end = r'`';
  _mode25.contains = [_mode16, _mode20];
  _mode26.match = r'\$\d+';
  _mode27.scope = r'number';
  _mode27.variants = [
    _mode28,
    _mode29,
    _mode30,
    _mode31,
    _mode32,
    _mode33,
    _mode34,
  ];
  _mode27.relevance = 0;
  _mode28.begin =
      r'(\b(0|[1-9](_?[0-9])*|0[0-7]*[89][0-9]*)((\.([0-9](_?[0-9])*))|\.)?|(\.([0-9](_?[0-9])*)))[eE][+-]?([0-9](_?[0-9])*)\b';
  _mode29.begin =
      r'\b(0|[1-9](_?[0-9])*|0[0-7]*[89][0-9]*)\b((\.([0-9](_?[0-9])*))\b|\.)?|(\.([0-9](_?[0-9])*))\b';
  _mode30.begin = r'\b(0|[1-9](_?[0-9])*)n\b';
  _mode31.begin = r'\b0[xX][0-9a-fA-F](_?[0-9a-fA-F])*n?\b';
  _mode32.begin = r'\b0[bB][0-1](_?[0-1])*n?\b';
  _mode33.begin = r'\b0[oO][0-7](_?[0-7])*n?\b';
  _mode34.begin = r'\b0[0-7]+n?\b';
  _mode35.begin = r'\{';
  _mode35.end = r'\}';
  _mode35.keywords = {
    r'$pattern': r'[A-Za-z$_][0-9A-Za-z$_]*',
    r'keyword': [
      r'as',
      r'in',
      r'of',
      r'if',
      r'for',
      r'while',
      r'finally',
      r'var',
      r'new',
      r'function',
      r'do',
      r'return',
      r'void',
      r'else',
      r'break',
      r'catch',
      r'instanceof',
      r'with',
      r'throw',
      r'case',
      r'default',
      r'try',
      r'switch',
      r'continue',
      r'typeof',
      r'delete',
      r'let',
      r'yield',
      r'const',
      r'class',
      r'debugger',
      r'async',
      r'await',
      r'static',
      r'import',
      r'from',
      r'export',
      r'extends',
      r'using',
    ],
    r'literal': [r'true', r'false', r'null', r'undefined', r'NaN', r'Infinity'],
    r'built_in': [
      r'setInterval',
      r'setTimeout',
      r'clearInterval',
      r'clearTimeout',
      r'require',
      r'exports',
      r'eval',
      r'isFinite',
      r'isNaN',
      r'parseFloat',
      r'parseInt',
      r'decodeURI',
      r'decodeURIComponent',
      r'encodeURI',
      r'encodeURIComponent',
      r'escape',
      r'unescape',
      r'Object',
      r'Function',
      r'Boolean',
      r'Symbol',
      r'Math',
      r'Date',
      r'Number',
      r'BigInt',
      r'String',
      r'RegExp',
      r'Array',
      r'Float32Array',
      r'Float64Array',
      r'Int8Array',
      r'Uint8Array',
      r'Uint8ClampedArray',
      r'Int16Array',
      r'Int32Array',
      r'Uint16Array',
      r'Uint32Array',
      r'BigInt64Array',
      r'BigUint64Array',
      r'Set',
      r'Map',
      r'WeakSet',
      r'WeakMap',
      r'ArrayBuffer',
      r'SharedArrayBuffer',
      r'Atomics',
      r'DataView',
      r'JSON',
      r'Promise',
      r'Generator',
      r'GeneratorFunction',
      r'AsyncFunction',
      r'Reflect',
      r'Proxy',
      r'Intl',
      r'WebAssembly',
      r'Error',
      r'EvalError',
      r'InternalError',
      r'RangeError',
      r'ReferenceError',
      r'SyntaxError',
      r'TypeError',
      r'URIError',
    ],
    r'variable.language': [
      r'arguments',
      r'this',
      r'super',
      r'console',
      r'window',
      r'document',
      r'localStorage',
      r'sessionStorage',
      r'module',
      r'global',
    ],
  };
  _mode35.contains = [
    r'self',
    _mode15,
    _mode17,
    _mode18,
    _mode21,
    _mode23,
    _mode25,
    _mode26,
    _mode27,
  ];
  _mode36.begin = r'(\s*)\(';
  _mode36.end = r'\)';
  _mode36.keywords = {
    r'$pattern': r'[A-Za-z$_][0-9A-Za-z$_]*',
    r'keyword': [
      r'as',
      r'in',
      r'of',
      r'if',
      r'for',
      r'while',
      r'finally',
      r'var',
      r'new',
      r'function',
      r'do',
      r'return',
      r'void',
      r'else',
      r'break',
      r'catch',
      r'instanceof',
      r'with',
      r'throw',
      r'case',
      r'default',
      r'try',
      r'switch',
      r'continue',
      r'typeof',
      r'delete',
      r'let',
      r'yield',
      r'const',
      r'class',
      r'debugger',
      r'async',
      r'await',
      r'static',
      r'import',
      r'from',
      r'export',
      r'extends',
      r'using',
    ],
    r'literal': [r'true', r'false', r'null', r'undefined', r'NaN', r'Infinity'],
    r'built_in': [
      r'setInterval',
      r'setTimeout',
      r'clearInterval',
      r'clearTimeout',
      r'require',
      r'exports',
      r'eval',
      r'isFinite',
      r'isNaN',
      r'parseFloat',
      r'parseInt',
      r'decodeURI',
      r'decodeURIComponent',
      r'encodeURI',
      r'encodeURIComponent',
      r'escape',
      r'unescape',
      r'Object',
      r'Function',
      r'Boolean',
      r'Symbol',
      r'Math',
      r'Date',
      r'Number',
      r'BigInt',
      r'String',
      r'RegExp',
      r'Array',
      r'Float32Array',
      r'Float64Array',
      r'Int8Array',
      r'Uint8Array',
      r'Uint8ClampedArray',
      r'Int16Array',
      r'Int32Array',
      r'Uint16Array',
      r'Uint32Array',
      r'BigInt64Array',
      r'BigUint64Array',
      r'Set',
      r'Map',
      r'WeakSet',
      r'WeakMap',
      r'ArrayBuffer',
      r'SharedArrayBuffer',
      r'Atomics',
      r'DataView',
      r'JSON',
      r'Promise',
      r'Generator',
      r'GeneratorFunction',
      r'AsyncFunction',
      r'Reflect',
      r'Proxy',
      r'Intl',
      r'WebAssembly',
      r'Error',
      r'EvalError',
      r'InternalError',
      r'RangeError',
      r'ReferenceError',
      r'SyntaxError',
      r'TypeError',
      r'URIError',
    ],
    r'variable.language': [
      r'arguments',
      r'this',
      r'super',
      r'console',
      r'window',
      r'document',
      r'localStorage',
      r'sessionStorage',
      r'module',
      r'global',
    ],
  };
  _mode36.contains = [
    r'self',
    _mode0,
    _mode15,
    _mode17,
    _mode18,
    _mode21,
    _mode23,
    _mode25,
    _mode26,
    _mode27,
    _mode35,
  ];
  _mode37.relevance = 0;
  _mode37.match =
      r'(?:\bJSON|\b[A-Z][a-z]+([A-Z][a-z]*|\d)*|\b[A-Z]{2,}([A-Z][a-z]+|\d)+([A-Z][a-z]*)*|\b[A-Z]{2,}[a-z]+([A-Z][a-z]+|\d)*([A-Z][a-z]*)*)';
  _mode37.scope = r'title.class';
  _mode37.keywords = {
    r'_': [
      r'Object',
      r'Function',
      r'Boolean',
      r'Symbol',
      r'Math',
      r'Date',
      r'Number',
      r'BigInt',
      r'String',
      r'RegExp',
      r'Array',
      r'Float32Array',
      r'Float64Array',
      r'Int8Array',
      r'Uint8Array',
      r'Uint8ClampedArray',
      r'Int16Array',
      r'Int32Array',
      r'Uint16Array',
      r'Uint32Array',
      r'BigInt64Array',
      r'BigUint64Array',
      r'Set',
      r'Map',
      r'WeakSet',
      r'WeakMap',
      r'ArrayBuffer',
      r'SharedArrayBuffer',
      r'Atomics',
      r'DataView',
      r'JSON',
      r'Promise',
      r'Generator',
      r'GeneratorFunction',
      r'AsyncFunction',
      r'Reflect',
      r'Proxy',
      r'Intl',
      r'WebAssembly',
      r'Error',
      r'EvalError',
      r'InternalError',
      r'RangeError',
      r'ReferenceError',
      r'SyntaxError',
      r'TypeError',
      r'URIError',
    ],
  };
  _mode38.scope = r'params';
  _mode38.begin = r'(\s*)\(';
  _mode38.end = r'\)';
  _mode38.excludeBegin = true;
  _mode38.excludeEnd = true;
  _mode38.keywords = {
    r'$pattern': r'[A-Za-z$_][0-9A-Za-z$_]*',
    r'keyword': [
      r'as',
      r'in',
      r'of',
      r'if',
      r'for',
      r'while',
      r'finally',
      r'var',
      r'new',
      r'function',
      r'do',
      r'return',
      r'void',
      r'else',
      r'break',
      r'catch',
      r'instanceof',
      r'with',
      r'throw',
      r'case',
      r'default',
      r'try',
      r'switch',
      r'continue',
      r'typeof',
      r'delete',
      r'let',
      r'yield',
      r'const',
      r'class',
      r'debugger',
      r'async',
      r'await',
      r'static',
      r'import',
      r'from',
      r'export',
      r'extends',
      r'using',
    ],
    r'literal': [r'true', r'false', r'null', r'undefined', r'NaN', r'Infinity'],
    r'built_in': [
      r'setInterval',
      r'setTimeout',
      r'clearInterval',
      r'clearTimeout',
      r'require',
      r'exports',
      r'eval',
      r'isFinite',
      r'isNaN',
      r'parseFloat',
      r'parseInt',
      r'decodeURI',
      r'decodeURIComponent',
      r'encodeURI',
      r'encodeURIComponent',
      r'escape',
      r'unescape',
      r'Object',
      r'Function',
      r'Boolean',
      r'Symbol',
      r'Math',
      r'Date',
      r'Number',
      r'BigInt',
      r'String',
      r'RegExp',
      r'Array',
      r'Float32Array',
      r'Float64Array',
      r'Int8Array',
      r'Uint8Array',
      r'Uint8ClampedArray',
      r'Int16Array',
      r'Int32Array',
      r'Uint16Array',
      r'Uint32Array',
      r'BigInt64Array',
      r'BigUint64Array',
      r'Set',
      r'Map',
      r'WeakSet',
      r'WeakMap',
      r'ArrayBuffer',
      r'SharedArrayBuffer',
      r'Atomics',
      r'DataView',
      r'JSON',
      r'Promise',
      r'Generator',
      r'GeneratorFunction',
      r'AsyncFunction',
      r'Reflect',
      r'Proxy',
      r'Intl',
      r'WebAssembly',
      r'Error',
      r'EvalError',
      r'InternalError',
      r'RangeError',
      r'ReferenceError',
      r'SyntaxError',
      r'TypeError',
      r'URIError',
    ],
    r'variable.language': [
      r'arguments',
      r'this',
      r'super',
      r'console',
      r'window',
      r'document',
      r'localStorage',
      r'sessionStorage',
      r'module',
      r'global',
    ],
  };
  _mode38.contains = [
    _mode0,
    _mode15,
    _mode17,
    _mode18,
    _mode21,
    _mode23,
    _mode25,
    _mode26,
    _mode27,
    _mode35,
    _mode36,
  ];
  return Mode(
    name: r'JavaScript',
    aliases: [r'js', r'jsx', r'mjs', r'cjs'],
    keywords: {
      r'$pattern': r'[A-Za-z$_][0-9A-Za-z$_]*',
      r'keyword': [
        r'as',
        r'in',
        r'of',
        r'if',
        r'for',
        r'while',
        r'finally',
        r'var',
        r'new',
        r'function',
        r'do',
        r'return',
        r'void',
        r'else',
        r'break',
        r'catch',
        r'instanceof',
        r'with',
        r'throw',
        r'case',
        r'default',
        r'try',
        r'switch',
        r'continue',
        r'typeof',
        r'delete',
        r'let',
        r'yield',
        r'const',
        r'class',
        r'debugger',
        r'async',
        r'await',
        r'static',
        r'import',
        r'from',
        r'export',
        r'extends',
        r'using',
      ],
      r'literal': [
        r'true',
        r'false',
        r'null',
        r'undefined',
        r'NaN',
        r'Infinity',
      ],
      r'built_in': [
        r'setInterval',
        r'setTimeout',
        r'clearInterval',
        r'clearTimeout',
        r'require',
        r'exports',
        r'eval',
        r'isFinite',
        r'isNaN',
        r'parseFloat',
        r'parseInt',
        r'decodeURI',
        r'decodeURIComponent',
        r'encodeURI',
        r'encodeURIComponent',
        r'escape',
        r'unescape',
        r'Object',
        r'Function',
        r'Boolean',
        r'Symbol',
        r'Math',
        r'Date',
        r'Number',
        r'BigInt',
        r'String',
        r'RegExp',
        r'Array',
        r'Float32Array',
        r'Float64Array',
        r'Int8Array',
        r'Uint8Array',
        r'Uint8ClampedArray',
        r'Int16Array',
        r'Int32Array',
        r'Uint16Array',
        r'Uint32Array',
        r'BigInt64Array',
        r'BigUint64Array',
        r'Set',
        r'Map',
        r'WeakSet',
        r'WeakMap',
        r'ArrayBuffer',
        r'SharedArrayBuffer',
        r'Atomics',
        r'DataView',
        r'JSON',
        r'Promise',
        r'Generator',
        r'GeneratorFunction',
        r'AsyncFunction',
        r'Reflect',
        r'Proxy',
        r'Intl',
        r'WebAssembly',
        r'Error',
        r'EvalError',
        r'InternalError',
        r'RangeError',
        r'ReferenceError',
        r'SyntaxError',
        r'TypeError',
        r'URIError',
      ],
      r'variable.language': [
        r'arguments',
        r'this',
        r'super',
        r'console',
        r'window',
        r'document',
        r'localStorage',
        r'sessionStorage',
        r'module',
        r'global',
      ],
    },
    exports: {
      r'PARAMS_CONTAINS': [
        _mode0,
        _mode15,
        _mode17,
        _mode18,
        _mode21,
        _mode23,
        _mode25,
        _mode26,
        _mode27,
        _mode35,
        _mode36,
      ],
      r'CLASS_REFERENCE': _mode37,
    },
    illegal: r'#(?![$_A-z])',
    contains: [
      Mode(
        scope: r'meta',
        begin: r'^#![ ]*\/.*\bnode\b.*',
        end: r'$',
        relevance: 5,
        label: r'shebang',
        binary: r'node',
      ),
      Mode(
        label: r'use_strict',
        scope: r'meta',
        relevance: 10,
        begin: '^\\s*[\'"]use (strict|asm)[\'"]',
      ),
      _mode15,
      _mode17,
      _mode18,
      _mode21,
      _mode23,
      _mode25,
      _mode0,
      Mode(match: r'\$\d+'),
      _mode27,
      _mode37,
      Mode(
        scope: r'attr',
        match: r'[A-Za-z$_][0-9A-Za-z$_]*(?=:)',
        relevance: 0,
      ),
      Mode(
        match: [
          r'const|var|let',
          r'\s+',
          r'[A-Za-z$_][0-9A-Za-z$_]*',
          r'\s*',
          r'=\s*',
          r'(async\s*)?',
          r'(?=(\([^()]*(\([^()]*(\([^()]*\)[^()]*)*\)[^()]*)*\)|[a-zA-Z_]\w*)\s*=>)',
        ],
        keywords: r'async',
        scope: {1: r'keyword', 3: r'title.function'},
        contains: [_mode38],
      ),
      Mode(
        begin:
            r'(!|!=|!==|%|%=|&|&&|&=|\*|\*=|\+|\+=|,|-|-=|/=|/|:|;|<<|<<=|<=|<|===|==|=|>>>=|>>=|>=|>>>|>>|>|\?|\[|\{|\(|\^|\^=|\||\|=|\|\||~|\b(case|return|throw)\b)\s*',
        keywords: r'return throw case',
        relevance: 0,
        contains: [
          _mode0,
          Mode(
            scope: r'regexp',
            begin: r'\/(?=[^/\n]*\/)',
            end: r'\/[gimuy]*',
            contains: [
              _mode16,
              Mode(begin: r'\[', end: r'\]', relevance: 0, contains: [_mode16]),
            ],
          ),
          Mode(
            scope: r'function',
            begin:
                r'(\([^()]*(\([^()]*(\([^()]*\)[^()]*)*\)[^()]*)*\)|[a-zA-Z_]\w*)\s*=>',
            returnBegin: true,
            end: r'\s*=>',
            contains: [
              Mode(
                scope: r'params',
                variants: [
                  Mode(begin: r'[a-zA-Z_]\w*', relevance: 0),
                  Mode(begin: r'\(\s*\)', skip: true),
                  Mode(
                    begin: r'(\s*)\(',
                    end: r'\)',
                    excludeBegin: true,
                    excludeEnd: true,
                    keywords: {
                      r'$pattern': r'[A-Za-z$_][0-9A-Za-z$_]*',
                      r'keyword': [
                        r'as',
                        r'in',
                        r'of',
                        r'if',
                        r'for',
                        r'while',
                        r'finally',
                        r'var',
                        r'new',
                        r'function',
                        r'do',
                        r'return',
                        r'void',
                        r'else',
                        r'break',
                        r'catch',
                        r'instanceof',
                        r'with',
                        r'throw',
                        r'case',
                        r'default',
                        r'try',
                        r'switch',
                        r'continue',
                        r'typeof',
                        r'delete',
                        r'let',
                        r'yield',
                        r'const',
                        r'class',
                        r'debugger',
                        r'async',
                        r'await',
                        r'static',
                        r'import',
                        r'from',
                        r'export',
                        r'extends',
                        r'using',
                      ],
                      r'literal': [
                        r'true',
                        r'false',
                        r'null',
                        r'undefined',
                        r'NaN',
                        r'Infinity',
                      ],
                      r'built_in': [
                        r'setInterval',
                        r'setTimeout',
                        r'clearInterval',
                        r'clearTimeout',
                        r'require',
                        r'exports',
                        r'eval',
                        r'isFinite',
                        r'isNaN',
                        r'parseFloat',
                        r'parseInt',
                        r'decodeURI',
                        r'decodeURIComponent',
                        r'encodeURI',
                        r'encodeURIComponent',
                        r'escape',
                        r'unescape',
                        r'Object',
                        r'Function',
                        r'Boolean',
                        r'Symbol',
                        r'Math',
                        r'Date',
                        r'Number',
                        r'BigInt',
                        r'String',
                        r'RegExp',
                        r'Array',
                        r'Float32Array',
                        r'Float64Array',
                        r'Int8Array',
                        r'Uint8Array',
                        r'Uint8ClampedArray',
                        r'Int16Array',
                        r'Int32Array',
                        r'Uint16Array',
                        r'Uint32Array',
                        r'BigInt64Array',
                        r'BigUint64Array',
                        r'Set',
                        r'Map',
                        r'WeakSet',
                        r'WeakMap',
                        r'ArrayBuffer',
                        r'SharedArrayBuffer',
                        r'Atomics',
                        r'DataView',
                        r'JSON',
                        r'Promise',
                        r'Generator',
                        r'GeneratorFunction',
                        r'AsyncFunction',
                        r'Reflect',
                        r'Proxy',
                        r'Intl',
                        r'WebAssembly',
                        r'Error',
                        r'EvalError',
                        r'InternalError',
                        r'RangeError',
                        r'ReferenceError',
                        r'SyntaxError',
                        r'TypeError',
                        r'URIError',
                      ],
                      r'variable.language': [
                        r'arguments',
                        r'this',
                        r'super',
                        r'console',
                        r'window',
                        r'document',
                        r'localStorage',
                        r'sessionStorage',
                        r'module',
                        r'global',
                      ],
                    },
                    contains: [
                      _mode0,
                      _mode15,
                      _mode17,
                      _mode18,
                      _mode21,
                      _mode23,
                      _mode25,
                      _mode26,
                      _mode27,
                      _mode35,
                      _mode36,
                    ],
                  ),
                ],
              ),
            ],
          ),
          Mode(begin: r',', relevance: 0),
          Mode(match: r'\s+', relevance: 0),
          Mode(
            variants: [
              Mode(begin: r'<>', end: r'</>'),
              Mode(match: r'<[A-Za-z0-9\\._:-]+\s*\/>'),
              Mode(
                begin: r'<[A-Za-z0-9\\._:-]+',
                onBegin: _isTrulyOpeningTag,
                end: r'\/[A-Za-z0-9\\._:-]+>|\/>',
              ),
            ],
            subLanguage: r'xml',
            contains: [
              Mode(
                begin: r'<[A-Za-z0-9\\._:-]+',
                end: r'\/[A-Za-z0-9\\._:-]+>|\/>',
                skip: true,
                contains: [r'self'],
              ),
            ],
          ),
        ],
      ),
      Mode(
        variants: [
          Mode(
            match: [
              r'function',
              r'\s+',
              r'[A-Za-z$_][0-9A-Za-z$_]*',
              r'(?=\s*\()',
            ],
          ),
          Mode(match: [r'function', r'\s*(?=\()']),
        ],
        scope: {1: r'keyword', 3: r'title.function'},
        label: r'func.def',
        contains: [_mode38],
        illegal: r'%',
      ),
      Mode(beginKeywords: r'while if switch catch for'),
      Mode(
        begin:
            r'\b(?!function)[a-zA-Z_]\w*\([^()]*(\([^()]*(\([^()]*\)[^()]*)*\)[^()]*)*\)\s*\{',
        returnBegin: true,
        label: r'func.def',
        contains: [
          _mode38,
          Mode(
            scope: r'title.function',
            begin: r'[A-Za-z$_][0-9A-Za-z$_]*',
            relevance: 0,
          ),
        ],
      ),
      Mode(match: r'\.\.\.', relevance: 0),
      Mode(
        begin: r'\.(?=[A-Za-z$_][0-9A-Za-z$_]*(?![0-9A-Za-z$_(]))',
        end: r'[A-Za-z$_][0-9A-Za-z$_]*',
        excludeBegin: true,
        keywords: r'prototype',
        scope: r'property',
        relevance: 0,
      ),
      Mode(match: r'\$[A-Za-z$_][0-9A-Za-z$_]*', relevance: 0),
      Mode(
        match: [r'\bconstructor(?=\s*\()'],
        scope: {1: r'title.function'},
        contains: [_mode38],
      ),
      Mode(
        match:
            r'\b(?!setInterval\s*\(|setTimeout\s*\(|clearInterval\s*\(|clearTimeout\s*\(|require\s*\(|exports\s*\(|eval\s*\(|isFinite\s*\(|isNaN\s*\(|parseFloat\s*\(|parseInt\s*\(|decodeURI\s*\(|decodeURIComponent\s*\(|encodeURI\s*\(|encodeURIComponent\s*\(|escape\s*\(|unescape\s*\(|super\s*\(|import\s*\()[A-Za-z$_][0-9A-Za-z$_]*(?=\s*\()',
        scope: r'title.function',
        relevance: 0,
      ),
      Mode(
        relevance: 0,
        match: r'\b[A-Z][A-Z_0-9]+\b',
        scope: r'variable.constant',
      ),
      Mode(
        variants: [
          Mode(
            match: [
              r'class',
              r'\s+',
              r'[A-Za-z$_][0-9A-Za-z$_]*',
              r'\s+',
              r'extends',
              r'\s+',
              r'[A-Za-z$_][0-9A-Za-z$_]*(\.[A-Za-z$_][0-9A-Za-z$_]*)*',
            ],
            scope: {
              1: r'keyword',
              3: r'title.class',
              5: r'keyword',
              7: r'title.class.inherited',
            },
          ),
          Mode(
            match: [r'class', r'\s+', r'[A-Za-z$_][0-9A-Za-z$_]*'],
            scope: {1: r'keyword', 3: r'title.class'},
          ),
        ],
      ),
      Mode(
        match: [r'get|set', r'\s+', r'[A-Za-z$_][0-9A-Za-z$_]*', r'(?=\()'],
        scope: {1: r'keyword', 3: r'title.function'},
        contains: [
          Mode(begin: r'\(\)'),
          _mode38,
        ],
      ),
      Mode(match: r'\$[(.]'),
    ],
  );
}
