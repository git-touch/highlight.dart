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

## Changelog Generation

This repo uses conventional-commit style subjects, so changelog sections can be
generated from git history per package:

```bash
dart run tool/generate_changelog.dart \
  --package highlight \
  --version 0.7.1 \
  --from v0.7.0
```

Add `--write` to update the package `CHANGELOG.md` in place:

```bash
dart run tool/generate_changelog.dart \
  --package flutter_highlight \
  --version 0.7.1 \
  --from v0.7.0 \
  --write
```

## Pub Score Checks

CI validates the publishable package quality gates with `pana` plus `pub publish --dry-run`.
Run the same score checks locally with:

```bash
dart pub global activate pana 0.23.12
dart run tool/check_pub_score.dart
```
