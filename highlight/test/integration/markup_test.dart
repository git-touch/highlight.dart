import 'dart:io';

import 'package:test/test.dart';
import 'package:path/path.dart' as p;
import 'package:highlight/highlight.dart';

import '_vendor_fixtures.dart';

void main() {
  ensureInitialized();

  final fixturesDir = vendorFixtureDirectory('markup');
  final langDirs = fixturesDir.listSync().whereType<Directory>().toList()
    ..sort((a, b) => p.basename(a.path).compareTo(p.basename(b.path)));
  for (final langDir in langDirs) {
    final language = p.basename(langDir.path);

    if (!hljs.hasLanguage(language)) continue;

    for (final inputFile in langDir.listSync().whereType<File>().where(
      (f) => f.path.endsWith('.txt') && !f.path.endsWith('.expect.txt'),
    )) {
      final name = p.basenameWithoutExtension(inputFile.path);
      final expectFile = File('${langDir.path}/$name.expect.txt');
      if (!expectFile.existsSync()) continue;

      test('markup/$language/$name', () {
        final input = inputFile.readAsStringSync();
        final expected = expectFile.readAsStringSync().trim();
        final result = hljs.highlight(input, language: language);
        expect(result.value.trim(), equals(expected));
      });
    }
  }
}
