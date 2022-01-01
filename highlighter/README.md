# highlighter

[![pub](https://img.shields.io/pub/v/highlighter)](https://pub.dev/packages/highlighter)

Dart Syntax highlighting library.

If you are looking for Flutter widget, see [flutter_highlighter](https://github.com/predatorx7/highlight/tree/master/flutter_highlighter).

## Usage

```dart
import 'package:highlighter/highlighter.dart' show highlight;

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
import 'package:highlighter/highlight_core.dart' show highlight;
import 'package:highlighter/languages/dart.dart';

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

- [All available languages](https://github.com/predatorx7/highlight/tree/master/highlighter/lib/languages)

## License

MIT
