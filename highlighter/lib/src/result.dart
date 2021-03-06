import 'node.dart';
import 'mode.dart';

class Result {
  int? relevance;
  List<Node>? nodes;
  String? language;
  Mode? top;
  Result? secondBest;

  Result({
    this.relevance,
    this.nodes,
    this.language,
    this.top,
    this.secondBest,
  });

  String _escape(String value) {
    return value
        .replaceAll(RegExp(r'&'), '&amp;')
        .replaceAll(RegExp(r'<'), '&lt;')
        .replaceAll(RegExp(r'>'), '&gt;');
  }

  String toHtml() {
    var str = '';

    void _traverse(Node node) {
      final shouldAddSpan = node.className != null &&
          ((node.value != null && node.value!.isNotEmpty) ||
              (node.children != null && node.children!.isNotEmpty));

      if (shouldAddSpan) {
        var prefix = node.noPrefix ? '' : 'hljs-';
        str += '<span class="${prefix + node.className!}">';
      }

      if (node.value != null) {
        str += _escape(node.value!);
      } else if (node.children != null) {
        node.children!.forEach(_traverse);
      }

      if (shouldAddSpan) {
        str += '</span>';
      }
    }

    nodes!.forEach(_traverse);
    return str;
  }
}
