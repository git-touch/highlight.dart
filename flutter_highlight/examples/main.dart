import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/styles/github.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    var code = '''main() {
  print("Hello, World!");
}
''';

    return Highlighter(
      code,
      language:
          'dart', // Specify language. It is optional, but recommended for performance
      theme: githubTheme, // Specify highlight style
    );
  }
}
