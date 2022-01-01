# flutter_highlighter

[![pub](https://img.shields.io/pub/v/flutter_highlighter)](https://pub.dev/packages/flutter_highlighter)

Syntax highlighter for Flutter. <!-- https://git-touch.github.io/highlighter/ -->

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/github.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code = '''main() {
  print("Hello, World!");
}
''';

    return HighlightView(
      // The original code to be highlighted
      code,

      // Specify language
      // It is recommended to give it a value for performance
      language: 'dart',

      // Specify highlight theme
      // All available themes are listed in `themes` folder
      theme: githubTheme,

      // Specify padding
      padding: EdgeInsets.all(12),

      // Specify text style
      textStyle: TextStyle(
        fontFamily: 'My awesome monospace font',
        fontSize: 16,
      ),
    );
  }
}
```

## References

- [All available languages](https://github.com/predatorx7/highlight/tree/master/highlighter/lib/languages)
- [All available themes](https://github.com/predatorx7/highlight/blob/master/flutter_highlighter/lib/themes)

## License

MIT
