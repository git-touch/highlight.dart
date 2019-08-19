import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:highlight/highlight.dart';
import 'package:highlight/languages/all.dart';
import 'package:test/test.dart';

void main() {
  group('markup', () {
    setUp(() {
      //
    });

    Directory('test/markup').listSync().forEach((entity) {
      var lang = path.basename(entity.path);
      if (lang.contains('index.js')) return;

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
            // h.registerLanguage('http', all['http']);
            // h.registerLanguage('json', all['json']);

            var highlighted = h.highlight(lang, code).value.trim();
            expect(highlighted, expected);
          });
        });
      });
    });
  });
}
