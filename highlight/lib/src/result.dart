import 'node.dart';
import 'mode.dart';

class Result {
  int relevance;
  List<Node> value;
  String language;
  Mode top;
  Result second_best;

  Result({
    this.relevance,
    this.value,
    this.language,
    this.top,
    this.second_best,
  });

  String _escape(String value) {
    return value
        .replaceAll(RegExp(r'&'), '&amp;')
        .replaceAll(RegExp(r'<'), '&lt;')
        .replaceAll(RegExp(r'>'), '&gt;');
  }

  String toHtml() {
    var str = '';

    _traverse(Node node) {
      if (node.className != null) {
        var prefix = node.noPrefix ? '' : 'hljs-';
        str += '<span class="${prefix + node.className}">';
      }

      if (node.value != null) {
        str += _escape(node.value);
      } else if (node.children != null) {
        node.children.forEach(_traverse);
      }

      if (node.className != null) {
        str += '</span>';
      }
    }

    value.forEach(_traverse);
    return str;
  }
}
