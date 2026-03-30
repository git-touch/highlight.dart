import 'dart:convert';
import 'dart:io';

const String _generatedHeader =
    '// GENERATED CODE - DO NOT MODIFY BY HAND.\n'
    '// ignore_for_file: file_names, non_constant_identifier_names\n\n';

const Set<String> _modeDetectionKeys = <String>{
  'beforeMatch',
  'begin',
  'beginKeywords',
  'beginScope',
  'className',
  'compilerExtensions',
  'contains',
  'end',
  'endScope',
  'endsParent',
  'endsWithParent',
  'excludeBegin',
  'excludeEnd',
  'illegal',
  'keywords',
  'match',
  'on:begin',
  'on:end',
  'relevance',
  'scope',
  'skip',
  'starts',
  'subLanguage',
  'variants',
  '__beforeBegin',
  '__emitTokens',
};

final RegExp _requiresHeaderPattern = RegExp(
  r'/\*.*?Requires: (.*?)\r?\n',
  dotAll: true,
);

const String _nodeExtractorScript = r'''
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { pathToFileURL } from 'node:url';

const vendorRoot = process.argv[1];
const languageNames = JSON.parse(process.argv[2]);

function isPlainObject(value) {
  return value != null && typeof value === 'object' && !Array.isArray(value);
}

function collectFunctionKeys(value, keys = new Set(), seen = new Set()) {
  if (value == null) return keys;
  if (typeof value === 'function') return keys;

  if (Array.isArray(value)) {
    for (const item of value) {
      collectFunctionKeys(item, keys, seen);
    }
    return keys;
  }

  if (!isPlainObject(value) || value instanceof RegExp) return keys;
  if (seen.has(value)) return keys;

  seen.add(value);
  for (const [key, child] of Object.entries(value)) {
    if (typeof child === 'function') {
      keys.add(key);
      continue;
    }
    collectFunctionKeys(child, keys, seen);
  }
  seen.delete(value);
  return keys;
}

function encodeValue(value, nodes, seen) {
  if (value == null) return null;
  if (typeof value === 'string' || typeof value === 'number' || typeof value === 'boolean') {
    return value;
  }
  if (value instanceof RegExp) {
    return { $regex: value.source };
  }
  if (typeof value === 'function') {
    return { $function: true };
  }
  if (Array.isArray(value)) {
    return value.map((item) => encodeValue(item, nodes, seen));
  }
  if (!isPlainObject(value)) {
    throw new Error(`Unsupported value type: ${typeof value}`);
  }

  const existingId = seen.get(value);
  if (existingId !== undefined) {
    return { $ref: existingId };
  }

  const id = nodes.length;
  const entries = {};
  nodes.push({ entries });
  seen.set(value, id);

  for (const [key, child] of Object.entries(value)) {
    entries[key] = encodeValue(child, nodes, seen);
  }

  return { $ref: id };
}

function createModuleRoot() {
  const tempRoot = fs.mkdtempSync(path.join(os.tmpdir(), 'highlightjs-src-'));
  fs.writeFileSync(
    path.join(tempRoot, 'package.json'),
    '{"type":"module"}\n'
  );
  fs.cpSync(
    path.join(vendorRoot, 'src'),
    path.join(tempRoot, 'src'),
    { recursive: true }
  );
  return tempRoot;
}

async function loadHelpers(moduleRoot) {
  const [regex, utils, modes] = await Promise.all([
    import(pathToFileURL(path.join(moduleRoot, 'src/lib/regex.js')).href),
    import(pathToFileURL(path.join(moduleRoot, 'src/lib/utils.js')).href),
    import(pathToFileURL(path.join(moduleRoot, 'src/lib/modes.js')).href)
  ]);

  return { regex, utils, modes };
}

function createHljs({ regex, utils, modes }) {
  return {
    regex,
    inherit: utils.inherit,
    ...modes
  };
}

async function main() {
  const moduleRoot = createModuleRoot();
  try {
    const helpers = await loadHelpers(moduleRoot);
    const hljs = createHljs(helpers);
    const results = {};

    for (const languageName of languageNames) {
      try {
        const modulePath = path.join(
          moduleRoot,
          'src',
          'languages',
          `${languageName}.js`
        );
        const languageModule = await import(pathToFileURL(modulePath).href);
        const grammar = languageModule.default(hljs);
        const functionKeys = [...collectFunctionKeys(grammar)].sort();
        const nodes = [];
        const seen = new Map();
        const root = encodeValue(grammar, nodes, seen);

        results[languageName] = {
          functionKeys,
          graph: { root, nodes }
        };
      } catch (error) {
        results[languageName] = {
          loadError: error && error.message ? error.message : String(error)
        };
      }
    }

    process.stdout.write(JSON.stringify(results));
  } catch (error) {
    process.stdout.write(
      JSON.stringify({
        __global: {
          loadError: error && error.message ? error.message : String(error)
        }
      })
    );
  } finally {
    fs.rmSync(moduleRoot, { recursive: true, force: true });
  }
}

await main();
''';

const _unsupportedFunctionValue = _UnsupportedFunctionValue();

Future<void> main(List<String> args) async {
  final requestedLanguages = <String>{};
  var includeUnsupported = false;
  var formatOutput = true;

  for (final arg in args) {
    if (arg == '--include-unsupported') {
      includeUnsupported = true;
      continue;
    }
    if (arg == '--no-format') {
      formatOutput = false;
      continue;
    }

    if (!arg.startsWith('--')) {
      requestedLanguages.add(arg);
    }
  }

  final toolRoot = File.fromUri(Platform.script).parent.path;
  final repoRoot = Directory(toolRoot).parent.path;
  final outputDir = Directory(
    _joinAll(<String>[repoRoot, 'highlight', 'lib', 'languages']),
  );
  final vendorRoot = _joinAll(<String>[repoRoot, 'vendor', 'highlight.js']);

  if (!Directory(vendorRoot).existsSync()) {
    stderr.writeln(
      'highlight.js was not found at $vendorRoot.\n'
      'Run `git submodule update --init --recursive` from the repo root.',
    );
    exitCode = 1;
    return;
  }

  final targets =
      _existingLanguageNames(outputDir)
          .where(
            (String name) =>
                requestedLanguages.isEmpty || requestedLanguages.contains(name),
          )
          .toList()
        ..sort();

  if (targets.isEmpty) {
    stderr.writeln('No matching languages to generate.');
    exitCode = 1;
    return;
  }

  final generated = <String>[];
  final skipped = <String>[];
  final writtenFiles = <String>[];
  final loadResults = await _loadLanguageGraphs(vendorRoot, targets);

  for (final languageName in targets) {
    final loadResult =
        loadResults[languageName] ??
        const _LanguageGraphLoadResult(
          loadError: 'Language result missing from Node extractor',
        );
    if (loadResult.loadError case final String message?) {
      skipped.add('$languageName: load failed ($message)');
      continue;
    }

    if (loadResult.functionKeys.isNotEmpty && !includeUnsupported) {
      skipped.add(
        '$languageName: unsupported callbacks '
        '(${loadResult.functionKeys.join(', ')})',
      );
      continue;
    }

    try {
      final rootMode = _decodeGraph(loadResult.graph!);
      final source = _buildLanguageSource(languageName, rootMode);
      final outputPath = _joinAll(<String>[
        outputDir.path,
        '${_sanitizeFileStem(languageName)}.dart',
      ]);
      File(outputPath).writeAsStringSync(source);
      writtenFiles.add(outputPath);
      generated.add(languageName);
    } catch (error) {
      skipped.add('$languageName: generation failed ($error)');
    }
  }

  final allLanguagesFile = File(
    _joinAll(<String>[outputDir.path, '_all.dart']),
  );
  final allLanguageNames = _orderedLanguageNames(
    vendorRoot,
    _existingLanguageNames(outputDir),
  );
  allLanguagesFile.writeAsStringSync(_renderAllLanguagesFile(allLanguageNames));
  writtenFiles.add(allLanguagesFile.path);

  if (formatOutput && writtenFiles.isNotEmpty) {
    final formatResult = Process.runSync(Platform.resolvedExecutable, <String>[
      'format',
      ...writtenFiles,
    ]);
    if (formatResult.exitCode != 0) {
      stderr.write(formatResult.stderr);
      exitCode = formatResult.exitCode;
      return;
    }
  }

  stdout.writeln('Generated ${generated.length} language files.');
  if (generated.isNotEmpty) {
    stdout.writeln(generated.join(', '));
  }
  if (skipped.isNotEmpty) {
    stdout.writeln('\nSkipped:');
    for (final entry in skipped) {
      stdout.writeln('- $entry');
    }
  }
}

Future<Map<String, _LanguageGraphLoadResult>> _loadLanguageGraphs(
  String vendorRoot,
  List<String> languageNames,
) async {
  final result = await Process.run('node', <String>[
    '--input-type=module',
    '-e',
    _nodeExtractorScript,
    vendorRoot,
    jsonEncode(languageNames),
  ]);

  if (result.exitCode != 0) {
    final stderrOutput = '${result.stderr}'.trim();
    final message = stderrOutput.isEmpty
        ? 'Node exited with ${result.exitCode}'
        : stderrOutput;
    return <String, _LanguageGraphLoadResult>{
      for (final languageName in languageNames)
        languageName: _LanguageGraphLoadResult(loadError: message),
    };
  }

  final stdoutOutput = '${result.stdout}'.trim();
  if (stdoutOutput.isEmpty) {
    return <String, _LanguageGraphLoadResult>{
      for (final languageName in languageNames)
        languageName: const _LanguageGraphLoadResult(
          loadError: 'Node extractor returned no output',
        ),
    };
  }

  final decoded = jsonDecode(stdoutOutput);
  if (decoded is! Map<String, dynamic>) {
    return <String, _LanguageGraphLoadResult>{
      for (final languageName in languageNames)
        languageName: const _LanguageGraphLoadResult(
          loadError: 'Unexpected extractor output',
        ),
    };
  }

  if (decoded['__global'] case final Map<String, dynamic> globalError) {
    final message = globalError['loadError'] as String?;
    return <String, _LanguageGraphLoadResult>{
      for (final languageName in languageNames)
        languageName: _LanguageGraphLoadResult(
          loadError: message ?? 'Unknown extractor failure',
        ),
    };
  }

  final results = <String, _LanguageGraphLoadResult>{};
  for (final languageName in languageNames) {
    final entry = decoded[languageName];
    if (entry is! Map<String, dynamic>) {
      results[languageName] = const _LanguageGraphLoadResult(
        loadError: 'Language result missing from extractor output',
      );
      continue;
    }

    if (entry['loadError'] case final String message?) {
      results[languageName] = _LanguageGraphLoadResult(loadError: message);
      continue;
    }

    final functionKeys = (entry['functionKeys'] as List<dynamic>)
        .map((dynamic value) => value as String)
        .toList(growable: false);
    final graph = entry['graph'] as Map<String, dynamic>;

    results[languageName] = _LanguageGraphLoadResult(
      functionKeys: functionKeys,
      graph: graph,
    );
  }

  return results;
}

JsObject _decodeGraph(Map<String, dynamic> graph) {
  final rawNodes = (graph['nodes'] as List<dynamic>)
      .map((dynamic value) => Map<String, dynamic>.from(value as Map))
      .toList(growable: false);
  final nodes = List<JsObject>.generate(rawNodes.length, (_) => JsObject());

  for (var index = 0; index < rawNodes.length; index++) {
    final entries = Map<String, dynamic>.from(
      rawNodes[index]['entries'] as Map<dynamic, dynamic>,
    );
    for (final MapEntry<String, dynamic> entry in entries.entries) {
      nodes[index].entries[entry.key] = _decodeValue(entry.value, nodes);
    }
  }

  final root = _decodeValue(graph['root'], nodes);
  if (root is! JsObject) {
    throw const FormatException('Grammar root is not an object');
  }

  return root;
}

Object? _decodeValue(dynamic value, List<JsObject> nodes) {
  if (value == null || value is String || value is num || value is bool) {
    return value;
  }

  if (value is List<dynamic>) {
    return value
        .map((dynamic item) => _decodeValue(item, nodes))
        .toList(growable: false);
  }

  final map = Map<String, dynamic>.from(value as Map<dynamic, dynamic>);
  if (map.length == 1 && map.containsKey(r'$ref')) {
    return nodes[map[r'$ref'] as int];
  }
  if (map.length == 1 && map.containsKey(r'$regex')) {
    return JsRegex(map[r'$regex'] as String);
  }
  if (map.length == 1 && map.containsKey(r'$function')) {
    return _unsupportedFunctionValue;
  }

  throw FormatException('Unexpected graph value: $map');
}

String _buildLanguageSource(String languageName, JsObject grammar) {
  final counts = <JsObject, int>{};
  _countModeRefs(grammar, counts);

  final serializer = _Serializer(grammar, counts);
  final functionName = _sanitizeFunctionName(languageName);

  final buffer = StringBuffer()
    ..write(_generatedHeader)
    ..writeln("import '../highlight_core.dart';")
    ..writeln()
    ..writeln(
      "/// Highlight.js language definition for `${_escapeDocText(languageName)}`.",
    )
    ..writeln('Mode $functionName(Highlight hljs) {');

  for (final declaration in serializer.declarations()) {
    buffer.writeln(declaration);
  }
  for (final assignment in serializer.assignments()) {
    buffer.writeln(assignment);
  }

  buffer
    ..writeln('  return ${serializer.root()};')
    ..writeln('}')
    ..writeln();

  return buffer.toString();
}

void _countModeRefs(
  Object? value,
  Map<JsObject, int> counts, [
  Set<JsObject>? path,
]) {
  final currentPath = path ?? <JsObject>{};

  if (value == null) return;

  if (value is List<Object?>) {
    for (final item in value) {
      _countModeRefs(item, counts, currentPath);
    }
    return;
  }

  if (value is! JsObject) return;

  if (_isModeObject(value)) {
    counts[value] = (counts[value] ?? 0) + 1;
    if (!currentPath.add(value)) return;
    for (final child in value.entries.values) {
      _countModeRefs(child, counts, currentPath);
    }
    currentPath.remove(value);
    return;
  }

  for (final child in value.entries.values) {
    _countModeRefs(child, counts, currentPath);
  }
}

bool _isModeObject(Object? value) =>
    value is JsObject &&
    value.entries.keys.any((String key) => _modeDetectionKeys.contains(key));

Iterable<String> _existingLanguageNames(Directory outputDir) sync* {
  for (final entity in outputDir.listSync()) {
    if (entity is! File) continue;
    final basename = _basename(entity.path);
    if (!basename.endsWith('.dart') || basename == '_all.dart') continue;
    yield basename.substring(0, basename.length - 5).replaceAll('_', '-');
  }
}

List<String> _orderedLanguageNames(
  String vendorRoot,
  Iterable<String> availableLanguages,
) {
  final available = availableLanguages.toSet();
  final sourceDir = Directory(
    _joinAll(<String>[vendorRoot, 'src', 'languages']),
  );
  final sourceFiles =
      sourceDir
          .listSync()
          .whereType<File>()
          .where((File file) => file.path.endsWith('.js'))
          .toList()
        ..sort((File a, File b) => a.path.compareTo(b.path));

  final dependencies = <String, List<String>>{};
  final orderedSourceNames = <String>[];

  for (final file in sourceFiles) {
    final languageName = _basename(file.path).replaceFirst('.js', '');
    if (!available.contains(languageName)) continue;

    orderedSourceNames.add(languageName);
    dependencies[languageName] = _requiredLanguages(
      file,
    ).where(available.contains).toList(growable: false);
  }

  final ordered = <String>[];
  final visiting = <String>{};
  final visited = <String>{};

  void visit(String languageName) {
    if (!available.contains(languageName) || visited.contains(languageName)) {
      return;
    }
    if (!visiting.add(languageName)) {
      throw StateError('Circular language dependency involving $languageName');
    }

    for (final dependency in dependencies[languageName] ?? const <String>[]) {
      visit(dependency);
    }

    visiting.remove(languageName);
    visited.add(languageName);
    ordered.add(languageName);
  }

  for (final languageName in orderedSourceNames) {
    visit(languageName);
  }

  final remaining = available.difference(visited).toList()..sort();
  for (final languageName in remaining) {
    visit(languageName);
  }

  return ordered;
}

Iterable<String> _requiredLanguages(File file) sync* {
  final match = _requiresHeaderPattern.firstMatch(file.readAsStringSync());
  final rawDependencies = match?.group(1);
  if (rawDependencies == null || rawDependencies.trim().isEmpty) return;

  for (final dependency in rawDependencies.split(',')) {
    final normalized = dependency.trim().replaceAll('.js', '');
    if (normalized.isNotEmpty) {
      yield normalized;
    }
  }
}

bool _isNumericKey(String key) => RegExp(r'^\d+$').hasMatch(key);

String _sanitizeFileStem(String name) => name.replaceAll('-', '_');

String _sanitizeFunctionName(String name) {
  final normalized = _sanitizeFileStem(name);
  return RegExp(r'^\d').hasMatch(normalized) ? 'lang_$normalized' : normalized;
}

String _renderAllLanguagesFile(List<String> languageNames) {
  final buffer = StringBuffer()
    ..writeln("import '../highlight_core.dart';")
    ..writeln();

  for (final languageName in languageNames) {
    final fileStem = _sanitizeFileStem(languageName);
    final identifier = _sanitizeFunctionName(languageName);
    buffer.writeln("import '$fileStem.dart' as $identifier;");
  }

  buffer
    ..writeln()
    ..writeln('/// Registers every generated language on [hljs].')
    ..writeln('void registerAllLanguages(Highlight hljs) {');

  for (final languageName in languageNames) {
    final identifier = _sanitizeFunctionName(languageName);
    buffer.writeln(
      "  hljs.registerLanguage('$languageName', $identifier.$identifier);",
    );
  }

  buffer
    ..writeln('}')
    ..writeln();

  return buffer.toString();
}

String _dartString(String value) {
  final canUseRawSingle =
      !value.contains('\n') && !value.contains('\r') && !value.contains("'");
  if (canUseRawSingle) {
    return "r'$value'";
  }

  final canUseRawDouble =
      !value.contains('\n') && !value.contains('\r') && !value.contains('"');
  if (canUseRawDouble) {
    return 'r"$value"';
  }

  final singleEscaped = _escapeDartString(value, "'");
  final doubleEscaped = _escapeDartString(value, '"');
  if (singleEscaped.length <= doubleEscaped.length) {
    return "'$singleEscaped'";
  }
  return '"$doubleEscaped"';
}

String _escapeDartString(String value, String quote) {
  final buffer = StringBuffer();
  for (final rune in value.runes) {
    final char = String.fromCharCode(rune);
    switch (char) {
      case r'\':
        buffer.write(r'\\');
      case r'$':
        buffer.write(r'\$');
      case '\r':
        buffer.write(r'\r');
      case '\n':
        buffer.write(r'\n');
      case '\t':
        buffer.write(r'\t');
      default:
        if (char == quote) {
          buffer.write('\\$quote');
        } else {
          buffer.write(char);
        }
    }
  }
  return buffer.toString();
}

String _escapeDocText(String value) =>
    value.replaceAll(r'\', r'\\').replaceAll('`', r'\`');

String _basename(String path) => path.replaceAll(r'\', '/').split('/').last;

String _joinAll(List<String> segments) {
  final normalizedSegments = segments.where(
    (String segment) => segment.isNotEmpty,
  );
  return normalizedSegments.join(Platform.pathSeparator);
}

class JsObject {
  final Map<String, Object?> entries = <String, Object?>{};
}

class JsRegex {
  const JsRegex(this.source);

  final String source;
}

class _UnsupportedFunctionValue {
  const _UnsupportedFunctionValue();
}

class _LanguageGraphLoadResult {
  const _LanguageGraphLoadResult({
    this.functionKeys = const <String>[],
    this.graph,
    this.loadError,
  });

  final List<String> functionKeys;
  final Map<String, dynamic>? graph;
  final String? loadError;
}

class _Serializer {
  _Serializer(this.rootMode, this.counts) {
    _collectSharedModes(
      rootMode,
      rootMode,
      sharedModes,
      <JsObject>{},
      <JsObject>{},
    );
    for (var index = 0; index < sharedModes.length; index++) {
      modeNames[sharedModes[index]] = 'mode$index';
    }
  }

  final JsObject rootMode;
  final Map<JsObject, int> counts;
  final List<JsObject> sharedModes = <JsObject>[];
  final Map<JsObject, String> modeNames = <JsObject, String>{};

  List<String> declarations() {
    if (sharedModes.isEmpty) return const <String>[];
    return sharedModes
        .map((JsObject mode) => '  final Mode ${modeNames[mode]} = Mode();')
        .toList(growable: false);
  }

  List<String> assignments() {
    if (sharedModes.isEmpty) return const <String>[];

    final lines = <String>[];
    for (final mode in sharedModes) {
      final name = modeNames[mode]!;
      for (final entry in _normalizeModeEntries(mode.entries.entries)) {
        final renderedValue = entry.key == 'exports'
            ? _serializeMap(entry.value as JsObject, mode, '  ')
            : _serializeValue(entry.value, mode, '  ');
        lines.add('  $name.${entry.key} = $renderedValue;');
      }
    }
    return lines;
  }

  String root() => _serializeMode(rootMode, '  ');

  void _collectSharedModes(
    Object? value,
    JsObject root,
    List<JsObject> ordered,
    Set<JsObject> seen,
    Set<JsObject> path,
  ) {
    if (value == null) return;

    if (value is List<Object?>) {
      for (final item in value) {
        _collectSharedModes(item, root, ordered, seen, path);
      }
      return;
    }

    if (value is! JsObject) return;

    if (_isModeObject(value)) {
      if (!identical(value, root) &&
          (counts[value] ?? 0) > 1 &&
          seen.add(value)) {
        ordered.add(value);
      }
      if (!path.add(value)) return;
      for (final child in value.entries.values) {
        _collectSharedModes(child, root, ordered, seen, path);
      }
      path.remove(value);
      return;
    }

    for (final child in value.entries.values) {
      _collectSharedModes(child, root, ordered, seen, path);
    }
  }

  bool _shouldReferenceMode(JsObject mode) =>
      !identical(mode, rootMode) && modeNames.containsKey(mode);

  String _serializeMap(JsObject map, JsObject currentMode, String indent) {
    final entries = map.entries.entries
        .where((entry) => entry.value != null)
        .toList();
    if (entries.isEmpty) return '{}';

    final childIndent = '$indent  ';
    final parts = entries
        .map((entry) {
          final renderedKey = _isNumericKey(entry.key)
              ? entry.key
              : _dartString(entry.key);
          return '$childIndent$renderedKey: ${_serializeValue(entry.value, currentMode, childIndent)},';
        })
        .join('\n');

    return '{\n$parts\n$indent}';
  }

  String _serializeArray(
    List<Object?> values,
    JsObject currentMode,
    String indent,
  ) {
    if (values.isEmpty) return '[]';

    final childIndent = '$indent  ';
    final parts = values
        .map(
          (Object? value) =>
              '$childIndent${_serializeValue(value, currentMode, childIndent)},',
        )
        .join('\n');
    return '[\n$parts\n$indent]';
  }

  String _serializeMode(
    JsObject mode,
    String indent, {
    bool allowReference = true,
  }) {
    if (allowReference && _shouldReferenceMode(mode)) {
      return modeNames[mode]!;
    }

    final entries = _normalizeModeEntries(mode.entries.entries);
    if (entries.isEmpty) return 'Mode()';

    final childIndent = '$indent  ';
    final parts = entries
        .map((entry) {
          final renderedValue = entry.key == 'exports'
              ? _serializeMap(entry.value as JsObject, mode, childIndent)
              : _serializeValue(entry.value, mode, childIndent);
          return '$childIndent${entry.key}: $renderedValue,';
        })
        .join('\n');

    return 'Mode(\n$parts\n$indent)';
  }

  String _serializeValue(Object? value, JsObject currentMode, String indent) {
    if (identical(value, currentMode)) {
      return _dartString('self');
    }

    if (value == null) return 'null';
    if (value is String) return _dartString(value);
    if (value is num || value is bool) return '$value';
    if (value is JsRegex) return _dartString(value.source);
    if (value is _UnsupportedFunctionValue) {
      throw UnsupportedError('Unsupported function value');
    }
    if (value is List<Object?>) {
      return _serializeArray(value, currentMode, indent);
    }
    if (value is JsObject) {
      if (_isModeObject(value)) {
        return _serializeMode(value, indent);
      }
      return _serializeMap(value, currentMode, indent);
    }

    throw UnsupportedError('Unsupported value type: ${value.runtimeType}');
  }
}

List<MapEntry<String, Object?>> _normalizeModeEntries(
  Iterable<MapEntry<String, Object?>> entries,
) {
  final normalized = <MapEntry<String, Object?>>[];
  var scopeIndex = -1;

  for (final entry in entries) {
    final value = entry.value;
    if (value == null) continue;

    if (entry.key == 'scope' || entry.key == 'className') {
      final normalizedEntry = MapEntry<String, Object?>('scope', value);
      if (scopeIndex == -1) {
        scopeIndex = normalized.length;
        normalized.add(normalizedEntry);
      } else {
        normalized[scopeIndex] = normalizedEntry;
      }
      continue;
    }

    if (entry.key == 'case_insensitive') {
      normalized.add(MapEntry<String, Object?>('caseInsensitive', value));
      continue;
    }

    if (entry.key == 'disable_autodetect') {
      normalized.add(MapEntry<String, Object?>('disableAutodetect', value));
      continue;
    }

    if (entry.key == 'on:begin' ||
        entry.key == 'on:end' ||
        entry.key == '__beforeBegin' ||
        entry.key == '__emitTokens') {
      continue;
    }

    normalized.add(MapEntry<String, Object?>(entry.key, value));
  }

  return normalized;
}
