import 'package:highlight/highlight.dart';

main() {
  var input = '''main() {
  print("Hello, World!");
}  
''';
  var h = Highlight();
  var result = h.highlight(input);

  result.toHtml();
}
