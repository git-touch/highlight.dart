import 'dart:io';

import 'package:test/test.dart';
import 'package:path/path.dart' as p;
import 'package:highlight/highlight.dart';

import '_vendor_fixtures.dart';

// These are known auto-detect misses in vendored highlight.js 11.11.1.
const _upstreamAutodetectMisses = <String, String>{
  'gcode/default': 'tp',
  'plaintext/default': 'asciidoc',
  'properties/default': 'livescript',
  'sql/default': 'pgsql',
};

void main() {
  ensureInitialized();

  final fixturesDir = vendorFixtureDirectory('detect');
  final langDirs = fixturesDir.listSync().whereType<Directory>().toList()
    ..sort((a, b) => p.basename(a.path).compareTo(p.basename(b.path)));
  for (final langDir in langDirs) {
    final fixtureLanguage = p.basename(langDir.path);

    if (!hljs.hasLanguage(fixtureLanguage)) continue;

    for (final inputFile in langDir.listSync().whereType<File>().where(
      (File file) => file.path.endsWith('.txt'),
    )) {
      final fixtureName = p.basenameWithoutExtension(inputFile.path);
      test('detect/$fixtureLanguage/$fixtureName', () {
        final input = inputFile.readAsStringSync();
        final result = hljs.highlightAuto(input);
        final fixtureKey = '$fixtureLanguage/$fixtureName';
        final expectedBestLanguage = _upstreamAutodetectMisses[fixtureKey];
        if (expectedBestLanguage != null) {
          expect(result.language, equals(expectedBestLanguage));
          return;
        }

        final secondBestLanguage = result.secondBest?.language;
        final matchesExpectation =
            result.language == fixtureLanguage ||
            secondBestLanguage == fixtureLanguage;
        expect(
          matchesExpectation,
          isTrue,
          reason:
              'expected $fixtureLanguage, got best=${result.language} '
              'second=$secondBestLanguage',
        );
      });
    }
  }
}
