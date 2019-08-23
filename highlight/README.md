# highlight

Syntax highlighter for Dart developers.

## Usage

```dart
import 'package:highlight/highlight.dart';

main() {
  var input = '''main() {
  print("Hello, World!");
}
''';
  var h = Highlight();
  var result = h.parse(input);

  result.toHtml();
}

```

## License

MIT
