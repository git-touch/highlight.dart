import 'token_tree.dart';
import 'utils.dart';

abstract class HTMLRendererInterface {
  void addText(String text);
  void openNode(DataNode node);
  void closeNode(DataNode node);
  String value();
}

const _spanClose = '</span>';

bool _emitsWrappingTags(DataNode node) {
  return node.scope != null && node.scope!.isNotEmpty;
}

String scopeToCSSClass(String name, {required String prefix}) {
  if (name.startsWith('language:')) {
    return name.replaceFirst('language:', 'language-');
  }
  if (name.contains('.')) {
    final pieces = name.split('.');
    final first = pieces.removeAt(0);
    return [
      '$prefix$first',
      ...pieces.asMap().entries.map((e) => '${e.value}${"_" * (e.key + 1)}'),
    ].join(' ');
  }
  return '$prefix$name';
}

class HTMLRenderer implements HTMLRendererInterface {
  final StringBuffer _buffer = StringBuffer();
  final String classPrefix;

  HTMLRenderer(TokenTree parseTree, Map<String, dynamic> options)
    : classPrefix = (options['classPrefix'] as String?) ?? 'hljs-' {
    parseTree.walk(this);
  }

  @override
  void addText(String text) {
    _buffer.write(escapeHTML(text));
  }

  @override
  void openNode(DataNode node) {
    if (!_emitsWrappingTags(node)) return;
    final className = scopeToCSSClass(node.scope!, prefix: classPrefix);
    _span(className);
  }

  @override
  void closeNode(DataNode node) {
    if (!_emitsWrappingTags(node)) return;
    _buffer.write(_spanClose);
  }

  @override
  String value() => _buffer.toString();

  void _span(String className) {
    final safeClass = className
        .replaceAll('&', '&amp;')
        .replaceAll('"', '&quot;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;');
    _buffer.write('<span class="$safeClass">');
  }
}
