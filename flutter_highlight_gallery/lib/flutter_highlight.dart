import 'package:flutter_web/widgets.dart';
import 'package:highlight/highlight.dart';

class Highlighter extends StatelessWidget {
  static final _hl = Highlight();

  final String code;
  final String language;
  final Map<String, TextStyle> style;

  Highlighter(this.code, {this.language, this.style = const {}});

  List<TextSpan> _convert(List<Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    _traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(node.className == null
            ? TextSpan(text: node.value)
            : TextSpan(text: node.value, style: style[node.className]));
      } else if (node.children != null) {
        List<TextSpan> tmp = [];
        currentSpans.add(TextSpan(children: tmp, style: style[node.className]));
        stack.add(currentSpans);
        currentSpans = tmp;

        node.children.forEach((n) {
          _traverse(n);
          if (n == node.children.last) {
            currentSpans = stack.isEmpty ? spans : stack.removeLast();
          }
        });
      }
    }

    for (var node in nodes) {
      _traverse(node);
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    var nodes = _hl.highlight(code, language: language).value;
    return RichText(
      text: TextSpan(
        children: _convert(nodes),
        style: TextStyle(color: Color(0xff000000), fontFamily: 'Menlo'),
      ),
    );
  }
}
