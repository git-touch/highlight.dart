import 'package:highlighter/highlight_core.dart' show highlight;
import 'package:highlighter/languages/dart.dart';

void main() {
  var source = '''main() {
  print("Hello, World!");
}
''';

  highlight.registerLanguage('dart', dart);

  var result = highlight.parse(source, language: 'dart');
  var html = result.toHtml();
  print(html); // HTML string
}
