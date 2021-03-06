import 'package:highlighter/highlighter.dart' show highlight;

void main() {
  var source = '''main() {
  print("Hello, World!");
}
''';

  var result = highlight.parse(source, language: 'dart');
  var html = result.toHtml();
  print(html); // HTML string
}
