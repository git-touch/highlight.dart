# highlight

[![pub](https://img.shields.io/pub/v/highlight)](https://pub.dev/packages/highlight)

Dart Syntax highlighting library.

If you are looking for Flutter widget, see [flutter_highlight](https://github.com/pd4d10/highlight/tree/master/flutter_highlight).

## Usage

```dart
import 'package:highlight/highlight.dart' show highlight;

main() {
  var source = '''main() {
  print("Hello, World!");
}
''';

  var result = highlight.parse(source, language: 'dart');
  var html = result.toHtml();
  print(html); // HTML string
}
```

Notice that **all available languages are registered** in the way above. For those desiring more control over what exactly they need, import `highlight_core.dart` instead and register languages manually:

```dart
import 'package:highlight/highlight_core.dart' show highlight;
import 'package:highlight/languages/dart.dart';

main() {
  var source = '''main() {
  print("Hello, World!");
}
''';

  highlight.registerLanguage('dart', dart);

  var result = highlight.parse(source, language: 'dart');
  var html = result.toHtml();
  print(html); // HTML string
}
```

## References

- [All available languages](https://github.com/pd4d10/highlight/tree/master/highlight/lib/languages)

## License

MIT
