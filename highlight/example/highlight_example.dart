import 'package:highlight/highlight.dart' as highlight;

main() {
  var source = '''main() {
  print("Hello, World!");
}
''';

  // Parse source code and returns a highlight [Result] which contains relevance and tree nodes
  var result = highlight.parse(source, language: 'dart');

  // Output HTML string, which has highlight.js style class name, hljs-
  var html = result.toHtml();
  print(html);
}
