import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:highlight/highlight.dart';
import 'package:highlight/languages.dart';
import 'package:test/test.dart';

void main() {
  group('markup', () {
    setUp(() {
      //
    });

    Directory('test/markup').listSync().forEach((entity) {
      var lang = path.basename(entity.path);

      if (all[lang] == null) {
        print('lang not found: $lang');
        return;
      }
      if (lang.contains('index.js')) return;

      group('language: $lang', () {
        Directory('test/markup/$lang').listSync().forEach((entity) {
          if (entity.path.contains('expect')) return;

          test(path.basename(entity.path), () {
            var code = File(entity.path).readAsStringSync();
            var expected =
                File(entity.path.replaceFirst(RegExp(r'\.txt$'), '.expect.txt'))
                    .readAsStringSync();

            var highlighted =
                Highlight(Mode.fromJson(all[lang])).highlight(lang, code);

            expect(highlighted, expected);
          });
        });
      });
    });
  });
}
