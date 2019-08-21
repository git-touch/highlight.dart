import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:highlight/highlight.dart';
import 'package:test/test.dart';

void main() {
  var hl = Highlight();

  group('markup', () {
    Directory('test/markup').listSync().forEach((entity) {
      var lang = path.basename(entity.path);

      group(lang, () {
        Directory('test/markup/$lang').listSync().forEach((entity) {
          if (entity.path.contains('expect')) return;

          test(path.basename(entity.path), () {
            var code = File(entity.path).readAsStringSync();
            var expected =
                File(entity.path.replaceFirst(RegExp(r'\.txt$'), '.expect.txt'))
                    .readAsStringSync()
                    .trim();

            var actual = hl.highlight(code, language: lang).toHtml().trim();
            expect(actual, expected);
          });
        });
      });
    });
  });

  group('detect', () {
    Directory('test/detect').listSync().forEach((entity) {
      var lang = path.basename(entity.path);

      group(lang, () {
        Directory('test/detect/$lang').listSync().forEach((entity) {
          test(path.basename(entity.path), () {
            var code = File(entity.path).readAsStringSync();
            expect(lang, hl.highlight(code, language: lang).language);
          });
        });
      });
    });
  });
}
