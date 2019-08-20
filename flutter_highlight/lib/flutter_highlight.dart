import 'package:flutter/widgets.dart';
import 'package:highlight/highlight.dart';
import 'package:highlight/languages/all.dart';

class Highlighter extends StatelessWidget {
  static final _h = Highlight();

  final String code;

  Highlighter(this.code);

  List<TextSpan> convert(List<Node> nodes) {
    List<TextSpan> spans = [];

    traverse(Node node) {
      if (node.value != null) {
        if (node.className != null) {
          spans.add(TextSpan(
              text: node.value,
              style: TextStyle(
                color: Color(0xff122345),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              )));
        } else {
          spans.add(TextSpan(text: node.value));
        }
      } else if (node.children != null) {
        node.children.forEach(traverse);
      }
    }

    nodes.forEach(traverse);
    return spans;
  }

  @override
  Widget build(BuildContext context) {
    all.forEach(_h.registerLanguage);
    var nodes = _h.highlight(code).value;
    return RichText(text: TextSpan(children: convert(nodes)));
  }
}
