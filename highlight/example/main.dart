import 'package:highlight/highlight.dart';

void main() {
  ensureInitialized();

  final result = hljs.highlight(
    'void main() {\n  print("Hello, World!");\n}',
    language: 'dart',
  );

  print(result.toHtml());
}
