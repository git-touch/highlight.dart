import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:highlight/highlight.dart' as highlight;
import 'package:test/test.dart';

void main() {
  var fixturesDir = '../vendor/highlight.js/test';

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

            var actual = highlight.parse(code, language: lang).toHtml().trim();
            expect(actual, expected);
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
            expect(lang, highlight.parse(code, autoDetection: true).language);
          });
        });
      });
    });
  });
}
