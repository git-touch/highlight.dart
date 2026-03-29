# highlight.dart

A faithful Dart port of [highlight.js](https://highlightjs.org/) — syntax highlighting for 192 languages with 257 themes.

## Packages

| Package | Description |
|---------|-------------|
| [`highlight`](highlight/) | Core Dart package — parsing engine, 192 languages, HTML output |
| [`flutter_highlight`](flutter_highlight/) | Flutter widget — `HighlightView` with 257 themes and line numbers |

## Quick Start

### Dart

```dart
import 'package:highlight/highlight.dart';

void main() {
  ensureInitialized();
  final result = hljs.highlight('print("hello")', language: 'python');
  print(result.toHtml());
}
```

### Flutter

```dart
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:highlight/highlight.dart';

HighlightView(
  sourceCode,
  language: 'python',
  theme: githubTheme,
  showLineNumbers: true,
)
```
