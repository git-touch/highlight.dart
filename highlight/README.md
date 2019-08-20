# highlight

Syntax highlighter for Dart developers.

If you are looking for syntax highlighter works with Flutter, try [flutter-highlight](https://github.com/pd4d10/flutter-highlight).

## Usage

```dart
import 'package:highlight/highlight.dart';

main() {
  var input = '''main() {
  print("Hello, World!");
}
''';
  var h = Highlight();
  var result = h.highlight(input);

  result.toHtml();
}

```

## License

MIT
