import 'package:highlight/highlight.dart' show Highlight;

main() {
  var input = '''main() {
  print("Hello, World!");
}
''';

  // Create a syntax highlight instance
  var hl = Highlight();

  // Parse input code and returns a highlight [Result] which contains relevance and tree nodes
  var result = hl.parse(input, language: 'dart');

  // Output HTML string, which has highlight.js style class name, hljs-
  var html = result.toHtml();
  print(html);
}
