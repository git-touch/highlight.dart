# highlight

A faithful Dart port of [highlight.js](https://highlightjs.org/) — syntax highlighting with language auto-detection.

## Features

- **192 languages** — All highlight.js language definitions ported to Dart
- **Pure Dart** — No Flutter dependency. Works in CLI tools, servers, and any Dart environment
- **Auto-detection** — Automatically detect the programming language
- **HTML output** — Generate highlighted HTML matching highlight.js format
- **highlight.js test suite** — Verified against the highlight.js markup test suite

## Quick Start

```dart
import 'package:highlight/highlight.dart';

void main() {
  ensureInitialized();

  // Highlight with a specific language
  final result = hljs.highlight(
    'def hello():\n    print("Hello!")',
    language: 'python',
  );
  print(result.toHtml());

  // Auto-detect language
  final auto = hljs.highlightAuto('SELECT * FROM users WHERE id = 1;');
  print('Detected: ${auto.language}'); // sql
  print(auto.toHtml());
}
```

## Selective Language Loading

For smaller bundle sizes, import only the languages you need:

```dart
import 'package:highlight/highlight_core.dart';
import 'package:highlight/languages/dart.dart' as lang_dart;
import 'package:highlight/languages/python.dart' as lang_python;

void main() {
  final h = Highlight();
  h.registerLanguage('dart', lang_dart.dart);
  h.registerLanguage('python', lang_python.python);

  final result = h.highlight('void main() {}', language: 'dart');
  print(result.toHtml());
}
```

## API

### `hljs.highlight(code, language:)`

Highlight code with a specific language. Returns a `HighlightResult`.

### `hljs.highlightAuto(code, languageSubset:)`

Auto-detect language and highlight. Optionally restrict to a subset of languages.

### `hljs.registerLanguage(name, definition)`

Register a language definition.

### `hljs.listLanguages()`

List all registered language names.

### `HighlightResult`

- `value` / `toHtml()` — The highlighted HTML string
- `language` — The language used
- `relevance` — Confidence score

## Flutter

For Flutter apps, use the companion package [`flutter_highlight`](../flutter_highlight/), which provides `HighlightView` and the generated theme maps.

## License

MIT
