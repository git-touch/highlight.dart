import 'dart:io';

void main(List<String> args) {
  final toolRoot = File.fromUri(Platform.script).parent.path;
  final repoRoot = Directory(toolRoot).parent.path;
  final vendorStylesDir = Directory(
    _joinAll(<String>[repoRoot, 'vendor', 'highlight.js', 'src', 'styles']),
  );
  final outputDir = Directory(
    _joinAll(<String>[repoRoot, 'flutter_highlight', 'lib', 'themes']),
  );

  if (!vendorStylesDir.existsSync()) {
    stderr.writeln(
      'highlight.js styles were not found at ${vendorStylesDir.path}.\n'
      'Run `git submodule update --init --recursive` from the repo root.',
    );
    exitCode = 1;
    return;
  }

  final allThemes = _discoverThemePaths(vendorStylesDir);
  final requested = args.map(_normalizeThemeArg).toSet();
  final targets = allThemes
      .where(
        (String themePath) =>
            requested.isEmpty ||
            requested.contains(_normalizeThemeArg(themePath)),
      )
      .toList()
    ..sort();

  if (targets.isEmpty) {
    stderr.writeln('No matching themes to generate.');
    exitCode = 1;
    return;
  }

  final writtenFiles = <String>[];
  for (final themePath in targets) {
    final cssPath = _joinAll(<String>[
      vendorStylesDir.path,
      ...themePath.split('/'),
    ]);
    final cssFile = File('$cssPath.css');
    final theme = _buildTheme(cssFile.readAsStringSync());
    final outputRelativePath = _themeOutputRelativePath(themePath);
    final outputFile = File(
      _joinAll(<String>[outputDir.path, ...outputRelativePath.split('/')]),
    );

    outputFile.parent.createSync(recursive: true);
    outputFile.writeAsStringSync(_renderThemeFile(themePath, theme));
    writtenFiles.add(outputFile.path);
  }

  final exports = _discoverExistingThemeExports(outputDir);
  final allExportsFile = File(_joinAll(<String>[outputDir.path, '_all.dart']));
  allExportsFile.writeAsStringSync(_renderAllExports(exports));
  writtenFiles.add(allExportsFile.path);

  final formatResult = Process.runSync(Platform.resolvedExecutable, <String>[
    'format',
    ...writtenFiles,
  ]);
  if (formatResult.exitCode != 0) {
    stderr.write(formatResult.stderr);
    exitCode = formatResult.exitCode;
    return;
  }

  stdout.writeln('Generated ${targets.length} theme files.');
  stdout.writeln(targets.join(', '));
}

Map<String, _StyleBuilder> _buildTheme(String cssSource) {
  final theme = <String, _StyleBuilder>{};

  for (final rule in _parseCssRules(cssSource)) {
    final declarations = _extractStyle(rule.declarations);
    if (declarations == null || declarations.isEmpty) {
      continue;
    }

    for (final selector in rule.selectors) {
      final key = _normalizeSelector(selector);
      if (key == null) {
        continue;
      }

      final style = theme.putIfAbsent(key, _StyleBuilder.new);
      style.merge(declarations);
    }
  }

  return theme;
}

List<String> _discoverThemePaths(Directory vendorStylesDir) {
  final themes = <String>[];

  for (final entity in vendorStylesDir.listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('.css')) {
      continue;
    }

    final relativePath = entity.path
        .substring(vendorStylesDir.path.length + 1)
        .replaceAll(Platform.pathSeparator, '/');
    final themePath = relativePath.substring(0, relativePath.length - 4);

    if (themePath == 'darkula') {
      continue;
    }

    themes.add(themePath);
  }

  themes.sort();
  return themes;
}

String _renderThemeFile(
  String themePath,
  Map<String, _StyleBuilder> theme,
) {
  final buffer = StringBuffer();
  final variableName = _themeVariableName(themePath);
  final keys = theme.keys.toList()
    ..sort((String a, String b) {
      if (a == 'root') {
        return -1;
      }
      if (b == 'root') {
        return 1;
      }
      return a.compareTo(b);
    });

  buffer.writeln(
      "import 'package:highlight/highlight_core.dart' show HljsStyle;");
  buffer.writeln();
  buffer.writeln('const $variableName = <String, HljsStyle>{');
  for (final key in keys) {
    buffer.writeln("  '$key': ${theme[key]!.toCode()},");
  }
  buffer.writeln('};');

  return buffer.toString();
}

String _renderAllExports(List<String> themePaths) {
  final exports = themePaths.toList()..sort();

  final buffer = StringBuffer();
  for (final exportPath in exports) {
    buffer.writeln("export '$exportPath';");
  }
  return buffer.toString();
}

List<String> _discoverExistingThemeExports(Directory outputDir) {
  final exports = <String>[];

  for (final entity in outputDir.listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('.dart')) {
      continue;
    }

    final relativePath = entity.path
        .substring(outputDir.path.length + 1)
        .replaceAll(Platform.pathSeparator, '/');
    if (relativePath == '_all.dart') {
      continue;
    }

    exports.add(relativePath);
  }

  exports.sort();
  return exports;
}

String _themeVariableName(String themePath) {
  final segments = themePath.split('/');
  final words = <String>[];
  for (final segment in segments) {
    words.addAll(segment.split('-').where((String word) => word.isNotEmpty));
  }

  final buffer = StringBuffer();
  for (var i = 0; i < words.length; i++) {
    final word = words[i];
    if (i == 0) {
      buffer.write(word.toLowerCase());
      continue;
    }

    if (word.isEmpty) {
      continue;
    }

    buffer.write(word[0].toUpperCase());
    buffer.write(word.substring(1).toLowerCase());
  }

  final baseName = buffer.toString();
  final identifier =
      RegExp(r'^\d').hasMatch(baseName) ? '\$$baseName' : baseName;
  return '${identifier}Theme';
}

String _themeOutputRelativePath(String themePath) {
  final parts =
      themePath.split('/').map((String part) => part.replaceAll('-', '_'));
  return '${parts.join('/')}.dart';
}

String _normalizeThemeArg(String value) {
  var normalized = value.trim().replaceAll('\\', '/');
  normalized =
      normalized.replaceAll(RegExp(r'\.(css|dart)$', caseSensitive: false), '');
  normalized = normalized.replaceAll('_', '-');
  return normalized;
}

List<_CssRule> _parseCssRules(String source) {
  final cleaned = _stripComments(source);
  final rules = <_CssRule>[];
  var index = 0;

  while (index < cleaned.length) {
    index = _skipWhitespace(cleaned, index);
    if (index >= cleaned.length) {
      break;
    }

    if (cleaned[index] == '@') {
      index = _skipAtRule(cleaned, index);
      continue;
    }

    final blockStart = _findNextTopLevel(cleaned, index, '{');
    if (blockStart == -1) {
      break;
    }

    final blockEnd = _findMatchingBrace(cleaned, blockStart);
    if (blockEnd == -1) {
      break;
    }

    final selectorText = cleaned.substring(index, blockStart).trim();
    final bodyText = cleaned.substring(blockStart + 1, blockEnd);
    index = blockEnd + 1;

    if (selectorText.isEmpty) {
      continue;
    }

    final selectors = _splitTopLevel(selectorText, ',')
        .map((String value) => value.trim())
        .where((String value) => value.isNotEmpty)
        .toList();
    final declarations = _parseDeclarations(bodyText);

    if (selectors.isEmpty || declarations.isEmpty) {
      continue;
    }

    rules.add(_CssRule(selectors, declarations));
  }

  return rules;
}

String _stripComments(String source) {
  final buffer = StringBuffer();
  var index = 0;

  while (index < source.length) {
    if (index + 1 < source.length &&
        source[index] == '/' &&
        source[index + 1] == '*') {
      final end = source.indexOf('*/', index + 2);
      if (end == -1) {
        break;
      }
      index = end + 2;
      continue;
    }

    buffer.write(source[index]);
    index++;
  }

  return buffer.toString();
}

int _skipAtRule(String source, int index) {
  final terminator = _findNextTopLevelAny(source, index, <String>['{', ';']);
  if (terminator == -1) {
    return source.length;
  }

  if (source[terminator] == ';') {
    return terminator + 1;
  }

  final blockEnd = _findMatchingBrace(source, terminator);
  if (blockEnd == -1) {
    return source.length;
  }

  return blockEnd + 1;
}

List<_CssDeclaration> _parseDeclarations(String source) {
  final declarations = <_CssDeclaration>[];

  for (final part in _splitTopLevel(source, ';')) {
    final declaration = part.trim();
    if (declaration.isEmpty) {
      continue;
    }

    final colon = _findFirstTopLevel(declaration, ':');
    if (colon == -1) {
      continue;
    }

    final property = declaration.substring(0, colon).trim().toLowerCase();
    final value = declaration.substring(colon + 1).trim();
    if (property.isEmpty || value.isEmpty) {
      continue;
    }

    declarations.add(_CssDeclaration(property, value));
  }

  return declarations;
}

_StyleBuilder? _extractStyle(List<_CssDeclaration> declarations) {
  final style = _StyleBuilder();

  for (final declaration in declarations) {
    switch (declaration.property) {
      case 'color':
        final color = _convertColor(declaration.value);
        if (color != null) {
          style.color = color;
        }
      case 'background':
      case 'background-color':
        final backgroundColor = _convertColor(declaration.value);
        if (backgroundColor != null) {
          style.backgroundColor = backgroundColor;
        }
      case 'font-style':
        final normalized = declaration.value.toLowerCase();
        if (normalized == 'italic') {
          style.italic = true;
        } else if (normalized == 'normal') {
          style.italic = false;
        }
      case 'font-weight':
        final normalized = declaration.value.toLowerCase();
        if (normalized == 'bold' || normalized == 'bolder') {
          style.bold = true;
        } else if (normalized == 'normal') {
          style.bold = false;
        } else {
          final numericWeight = int.tryParse(normalized);
          if (numericWeight != null) {
            style.bold = numericWeight >= 600;
          }
        }
      case 'text-decoration':
        final normalized = declaration.value.toLowerCase();
        if (normalized == 'none') {
          style.underline = false;
          style.strikethrough = false;
          continue;
        }

        final tokens = normalized.split(RegExp(r'\s+'));
        if (tokens.contains('underline')) {
          style.underline = true;
        }
        if (tokens.contains('line-through')) {
          style.strikethrough = true;
        }
    }
  }

  return style.isEmpty ? null : style;
}

String? _normalizeSelector(String selector) {
  final trimmed = selector.trim();
  if (trimmed.isEmpty) {
    return null;
  }

  if (trimmed.contains('>') || trimmed.contains('+') || trimmed.contains('~')) {
    return null;
  }

  final parts = trimmed.split(RegExp(r'\s+'));
  if (parts.length > 2) {
    return null;
  }

  final parsed = parts.map(_parseSelectorPart).toList();
  if (parsed.any((_SelectorPart part) => part == _SelectorPart.unsupported)) {
    return null;
  }

  if (parsed.length == 1) {
    return parsed.single.key;
  }

  final ancestor = parsed[0];
  final descendant = parsed[1];
  if (ancestor.isRoot || descendant.isRoot) {
    return null;
  }

  if (ancestor.scope == 'class' &&
      descendant.scope == 'title' &&
      ancestor.qualifiers.isEmpty &&
      descendant.qualifiers.isEmpty) {
    return 'title.class';
  }

  if (ancestor.scope == 'function' &&
      descendant.scope == 'title' &&
      ancestor.qualifiers.isEmpty &&
      descendant.qualifiers.isEmpty) {
    return 'title.function';
  }

  if (ancestor.scope == 'function' && descendant.scope == 'params') {
    return null;
  }

  return '${ancestor.spaceKey} ${descendant.spaceKey}';
}

_SelectorPart _parseSelectorPart(String compound) {
  final value = compound.trim();
  if (value.isEmpty ||
      value.contains(':') ||
      value.contains('[') ||
      value.contains('#')) {
    return _SelectorPart.unsupported;
  }

  final classMatches = RegExp(r'\.([A-Za-z0-9_-]+)').allMatches(value).toList();
  if (classMatches.isEmpty) {
    return _SelectorPart.unsupported;
  }

  final classes = classMatches
      .map((Match match) => match.group(1)!)
      .toList(growable: false);
  final normalizedValue = value.replaceAll(RegExp(r'\.[A-Za-z0-9_-]+'), '');
  final elementName = normalizedValue.trim();

  if (classes.length == 1 && classes.single == 'hljs') {
    if (elementName.isEmpty ||
        RegExp(r'^[A-Za-z][A-Za-z0-9-]*$').hasMatch(elementName)) {
      return const _SelectorPart.root();
    }
    return _SelectorPart.unsupported;
  }

  final hljsClasses = classes
      .where((String className) => className.startsWith('hljs-'))
      .toList();
  if (hljsClasses.length != 1) {
    return _SelectorPart.unsupported;
  }

  if (elementName.isNotEmpty &&
      !RegExp(r'^[A-Za-z][A-Za-z0-9-]*$').hasMatch(elementName)) {
    return _SelectorPart.unsupported;
  }

  final qualifiers = classes
      .where(
        (String className) =>
            className != 'hljs' && !className.startsWith('hljs-'),
      )
      .map(_normalizeScopeName)
      .where((String className) => className.isNotEmpty)
      .toList(growable: false);

  return _SelectorPart(
    scope: _normalizeScopeName(hljsClasses.single.substring(5)),
    qualifiers: qualifiers,
  );
}

String _normalizeScopeName(String value) {
  return value.replaceAll(RegExp(r'_+$'), '');
}

String? _convertColor(String value) {
  final normalized = value.trim().toLowerCase();
  if (normalized.isEmpty ||
      normalized == 'inherit' ||
      normalized.startsWith('var(') ||
      normalized.startsWith('rgba(') ||
      normalized.startsWith('rgb(')) {
    return null;
  }

  final match = RegExp(
    r'#[0-9a-f]{3,8}\b|\bwhite\b|\bblack\b|\bnavy\b|\bgold\b',
  ).firstMatch(normalized);
  if (match == null) {
    return null;
  }

  final token = match.group(0)!;
  switch (token) {
    case 'white':
      return '#ffffff';
    case 'black':
      return '#000000';
    case 'navy':
      return '#000080';
    case 'gold':
      return '#ffd700';
  }

  var hex = token.substring(1);
  if (hex.length == 4) {
    hex = hex.substring(0, 3);
  } else if (hex.length == 8) {
    hex = hex.substring(0, 6);
  }

  if (hex.length == 3) {
    hex = hex.split('').map((String char) => '$char$char').join();
  }

  if (hex.length != 6) {
    return null;
  }

  return '#${hex.toLowerCase()}';
}

List<String> _splitTopLevel(String source, String delimiter) {
  final parts = <String>[];
  final buffer = StringBuffer();
  var parenDepth = 0;
  String? quote;

  for (var index = 0; index < source.length; index++) {
    final char = source[index];

    if (quote != null) {
      buffer.write(char);
      if (char == quote && source[index - 1] != r'\') {
        quote = null;
      }
      continue;
    }

    if (char == "'" || char == '"') {
      quote = char;
      buffer.write(char);
      continue;
    }

    if (char == '(') {
      parenDepth++;
      buffer.write(char);
      continue;
    }

    if (char == ')' && parenDepth > 0) {
      parenDepth--;
      buffer.write(char);
      continue;
    }

    if (parenDepth == 0 && char == delimiter) {
      parts.add(buffer.toString());
      buffer.clear();
      continue;
    }

    buffer.write(char);
  }

  parts.add(buffer.toString());
  return parts;
}

int _findFirstTopLevel(String source, String target) {
  var parenDepth = 0;
  String? quote;

  for (var index = 0; index < source.length; index++) {
    final char = source[index];

    if (quote != null) {
      if (char == quote && source[index - 1] != r'\') {
        quote = null;
      }
      continue;
    }

    if (char == "'" || char == '"') {
      quote = char;
      continue;
    }

    if (char == '(') {
      parenDepth++;
      continue;
    }

    if (char == ')' && parenDepth > 0) {
      parenDepth--;
      continue;
    }

    if (parenDepth == 0 && char == target) {
      return index;
    }
  }

  return -1;
}

int _findNextTopLevel(String source, int start, String target) {
  var parenDepth = 0;
  String? quote;

  for (var index = start; index < source.length; index++) {
    final char = source[index];

    if (quote != null) {
      if (char == quote && source[index - 1] != r'\') {
        quote = null;
      }
      continue;
    }

    if (char == "'" || char == '"') {
      quote = char;
      continue;
    }

    if (char == '(') {
      parenDepth++;
      continue;
    }

    if (char == ')' && parenDepth > 0) {
      parenDepth--;
      continue;
    }

    if (parenDepth == 0 && char == target) {
      return index;
    }
  }

  return -1;
}

int _findNextTopLevelAny(String source, int start, List<String> targets) {
  var parenDepth = 0;
  String? quote;

  for (var index = start; index < source.length; index++) {
    final char = source[index];

    if (quote != null) {
      if (char == quote && source[index - 1] != r'\') {
        quote = null;
      }
      continue;
    }

    if (char == "'" || char == '"') {
      quote = char;
      continue;
    }

    if (char == '(') {
      parenDepth++;
      continue;
    }

    if (char == ')' && parenDepth > 0) {
      parenDepth--;
      continue;
    }

    if (parenDepth == 0 && targets.contains(char)) {
      return index;
    }
  }

  return -1;
}

int _findMatchingBrace(String source, int openBraceIndex) {
  var depth = 0;
  String? quote;

  for (var index = openBraceIndex; index < source.length; index++) {
    final char = source[index];

    if (quote != null) {
      if (char == quote && source[index - 1] != r'\') {
        quote = null;
      }
      continue;
    }

    if (char == "'" || char == '"') {
      quote = char;
      continue;
    }

    if (char == '{') {
      depth++;
      continue;
    }

    if (char == '}') {
      depth--;
      if (depth == 0) {
        return index;
      }
    }
  }

  return -1;
}

int _skipWhitespace(String source, int index) {
  while (index < source.length && RegExp(r'\s').hasMatch(source[index])) {
    index++;
  }
  return index;
}

String _joinAll(Iterable<String> parts) {
  return parts.join(Platform.pathSeparator);
}

final class _CssRule {
  const _CssRule(this.selectors, this.declarations);

  final List<String> selectors;
  final List<_CssDeclaration> declarations;
}

final class _CssDeclaration {
  const _CssDeclaration(this.property, this.value);

  final String property;
  final String value;
}

final class _SelectorPart {
  const _SelectorPart({
    required this.scope,
    required this.qualifiers,
  });

  const _SelectorPart.root()
      : scope = 'root',
        qualifiers = const <String>[];

  static const _SelectorPart unsupported = _SelectorPart(
    scope: '',
    qualifiers: <String>[],
  );

  final String scope;
  final List<String> qualifiers;

  bool get isRoot => scope == 'root' && qualifiers.isEmpty;

  String get key {
    if (isRoot) {
      return 'root';
    }
    if (qualifiers.isEmpty) {
      return scope;
    }
    return '$scope.${qualifiers.join('.')}';
  }

  String get spaceKey {
    if (qualifiers.isEmpty) {
      return scope;
    }
    return '$scope ${qualifiers.join(' ')}';
  }
}

final class _StyleBuilder {
  String? color;
  String? backgroundColor;
  bool? bold;
  bool? italic;
  bool? underline;
  bool? strikethrough;

  bool get isEmpty =>
      color == null &&
      backgroundColor == null &&
      bold == null &&
      italic == null &&
      underline == null &&
      strikethrough == null;

  void merge(_StyleBuilder other) {
    color = other.color ?? color;
    backgroundColor = other.backgroundColor ?? backgroundColor;
    bold = other.bold ?? bold;
    italic = other.italic ?? italic;
    underline = other.underline ?? underline;
    strikethrough = other.strikethrough ?? strikethrough;
  }

  String toCode() {
    final args = <String>[];
    if (color != null) {
      args.add("color: '$color'");
    }
    if (backgroundColor != null) {
      args.add("backgroundColor: '$backgroundColor'");
    }
    if (bold == true) {
      args.add('bold: true');
    }
    if (italic == true) {
      args.add('italic: true');
    }
    if (underline == true) {
      args.add('underline: true');
    }
    if (strikethrough == true) {
      args.add('strikethrough: true');
    }
    return 'const HljsStyle(${args.join(', ')})';
  }
}
