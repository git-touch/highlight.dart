import 'dart:io';
import 'package:highlight/languages/all.dart';
import 'package:path/path.dart' as path;
import 'package:highlight/highlight_core.dart' show highlight;
import 'package:test/test.dart';

void main() {
  var fixturesDir = '../vendor/highlight.js/test';
  highlight.registerLanguages(builtinLanguages);

  group('basic', () {
    test('language is null', () {
      expect(() => highlight.parse('abc'), throwsArgumentError);
    });

    test('language not exists', () {
      expect(
        highlight
            .parse('abc', language: 'no-such-lang', autoDetection: true)
            .toHtml(),
        'abc',
      );
    });

    test('auto detection', () {
      expect(() => highlight.parse('abc', autoDetection: true),
          isNot(throwsArgumentError));
    });
  });

  group('markup', () {
    Directory('$fixturesDir/markup').listSync().forEach((entity) {
      if (entity.path.endsWith('.js')) return;
      var lang = path.basename(entity.path);

      group(lang, () {
        Directory('$fixturesDir/markup/$lang').listSync().forEach((entity) {
          if (entity.path.contains('expect')) return;

          test(path.basename(entity.path), () {
            var code = File(entity.path).readAsStringSync();
            var expected =
                File(entity.path.replaceFirst(RegExp(r'\.txt$'), '.expect.txt'))
                    .readAsStringSync()
                    .trim();

            expect(highlight.parse(code, language: lang).toHtml().trim(),
                expected);
          });
        });
      });
    });
  });

  group('detect', () {
    Directory('$fixturesDir/detect').listSync().forEach((entity) {
      if (entity.path.endsWith('.js')) return;
      var lang = path.basename(entity.path);

      group(lang, () {
        Directory('$fixturesDir/detect/$lang').listSync().forEach((entity) {
          test(path.basename(entity.path), () {
            var code = File(entity.path).readAsStringSync();
            expect(highlight.parse(code, autoDetection: true).language, lang);
          });
        });
      });
    });
  });
}
