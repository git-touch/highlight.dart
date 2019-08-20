import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:highlight/highlight.dart';
import 'package:highlight/languages/all.dart';
import 'package:test/test.dart';

void main() {
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

            var h = Highlight();
            all.forEach(h.registerLanguage);

            var highlighted = h.highlight(code, language: lang);
            expect(highlighted.toHtml().trim(), expected);
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

            var h = Highlight();
            all.forEach(h.registerLanguage);

            expect(lang, h.highlight(code, language: lang).language);
          });
        });
      });
    });
  });
}
