import 'package:highlight/highlight.dart' as highlight;

main() {
  var input = '''main() {
  print("Hello, World!");
}
''';

  // Parse input code and returns a highlight [Result] which contains relevance and tree nodes
  var result = highlight.parse(input, language: 'dart');

  // Output HTML string, which has highlight.js style class name, hljs-
  var html = result.toHtml();
  print(html);
}
