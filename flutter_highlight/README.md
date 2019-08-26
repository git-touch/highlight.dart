# flutter_highlight

Syntax highlighter for Flutter.

View gallery built with Flutter web: https://pd4d10.github.io/highlight/

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    var code = '''main() {
  print("Hello, World!");
}
''';

    return Highlight(
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

- [All available languages](https://github.com/pd4d10/highlight/tree/master/highlight/lib/languages)
- [All available themes](https://github.com/pd4d10/highlight/blob/master/flutter_highlight/lib/themes)

## License

MIT
