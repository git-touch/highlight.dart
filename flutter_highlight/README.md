# flutter_highlight

A Flutter widget for syntax highlighting, powered by the [highlight](../highlight/) package (a Dart port of [highlight.js](https://highlightjs.org/)).

## Features

- **HighlightView widget** — Drop-in widget for displaying syntax-highlighted code
- **192 languages** — All highlight.js languages supported
- **257 themes** — All highlight.js themes available
- **Line numbers** — Optional line number gutter
- **Text selection** — Code is selectable by default
- **Horizontal scroll** — Long lines scroll horizontally

## Quick Start

```dart
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:highlight/highlight.dart';

class CodeViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ensureInitialized();
    return HighlightView(
      'def hello():\n    print("Hello, World!")',
      language: 'python',
      theme: githubTheme,
      padding: EdgeInsets.all(16),
      textStyle: TextStyle(
        fontFamily: 'JetBrains Mono',
        fontSize: 14,
      ),
    );
  }
}
```

## With Line Numbers

```dart
HighlightView(
  sourceCode,
  language: 'dart',
  theme: githubTheme,
  showLineNumbers: true,
  firstLineNumber: 1,
  lineNumberStyle: TextStyle(color: Colors.grey),
)
```

## Auto-Detection

Omit the `language` parameter to auto-detect:

```dart
HighlightView(
  unknownCode,
  theme: githubTheme,
)
```

## License

MIT
