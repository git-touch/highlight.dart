import 'html_renderer.dart';

class DataNode {
  String? scope;
  String? language;
  final List<dynamic> children; // List<String | DataNode>

  DataNode({this.scope, this.language, List<dynamic>? children})
    : children = children ?? [];

  void add(dynamic child) => children.add(child);
}

DataNode newNode({String? scope, String? language}) {
  return DataNode(scope: scope, language: language);
}

class TokenTree {
  final DataNode rootNode = newNode();
  final List<DataNode> stack = [];

  TokenTree() {
    stack.add(rootNode);
  }

  DataNode get top => stack.last;
  DataNode get root => rootNode;

  void add(dynamic node) {
    top.children.add(node);
  }

  void openNode(String scope) {
    final node = newNode(scope: scope);
    add(node);
    stack.add(node);
  }

  DataNode? closeNode() {
    if (stack.length > 1) {
      return stack.removeLast();
    }
    return null;
  }

  void closeAllNodes() {
    while (closeNode() != null) {}
  }

  void walk(HTMLRendererInterface builder) {
    _walk(builder, rootNode);
  }

  static void _walk(HTMLRendererInterface builder, dynamic node) {
    if (node is String) {
      builder.addText(node);
    } else if (node is DataNode) {
      builder.openNode(node);
      for (final child in node.children) {
        _walk(builder, child);
      }
      builder.closeNode(node);
    }
  }

  static void collapse(DataNode node) {
    if (node.children.every((el) => el is String)) {
      node.children.replaceRange(0, node.children.length, [
        node.children.cast<String>().join(''),
      ]);
    } else {
      for (final child in node.children) {
        if (child is DataNode) {
          collapse(child);
        }
      }
    }
  }
}

class TokenTreeEmitter extends TokenTree {
  final Map<String, dynamic> options;

  TokenTreeEmitter(this.options);

  void addText(String text) {
    if (text.isEmpty) return;
    add(text);
  }

  void startScope(String scope) {
    openNode(scope);
  }

  void endScope() {
    closeNode();
  }

  void addSublanguage(TokenTreeEmitter emitter, String? name) {
    final node = emitter.root;
    if (name != null && name.isNotEmpty) node.scope = 'language:$name';
    add(node);
  }

  String toHTML() {
    final renderer = HTMLRenderer(this, options);
    return renderer.value();
  }

  void finalize() {
    closeAllNodes();
  }
}
