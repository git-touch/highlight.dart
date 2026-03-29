import 'dart:io';

import 'package:test/test.dart';
import 'package:path/path.dart' as p;
import 'package:highlight/highlight.dart';

import '_vendor_fixtures.dart';

const _upstreamExpectedLanguageOverrides = <String, String>{
  'csp': 'gml',
  'elixir': 'ruby',
  'gcode': 'tp',
  'plaintext': 'asciidoc',
  'properties': 'livescript',
  'smalltalk': 'nix',
  'sql': 'pgsql',
  'vala': 'csharp',
};

void main() {
  ensureInitialized();

  final fixturesDir = vendorFixtureDirectory('detect');
  final langDirs = fixturesDir.listSync().whereType<Directory>().toList()
    ..sort((a, b) => p.basename(a.path).compareTo(p.basename(b.path)));
  for (final langDir in langDirs) {
    final fixtureLanguage = p.basename(langDir.path);
    final expectedLanguage =
        _upstreamExpectedLanguageOverrides[fixtureLanguage] ?? fixtureLanguage;

    if (!hljs.hasLanguage(fixtureLanguage)) continue;

    for (final inputFile in langDir.listSync().whereType<File>().where(
      (File file) => file.path.endsWith('.txt'),
    )) {
      final fixtureName = p.basenameWithoutExtension(inputFile.path);
      test('detect/$fixtureLanguage/$fixtureName', () {
        final input = inputFile.readAsStringSync();
        final result = hljs.highlightAuto(input);
        expect(result.language, equals(expectedLanguage));
      });
    }
  }
}
