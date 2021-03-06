class Node {
  String? className;
  String? value;
  List<Node>? children;
  bool noPrefix;

  Node({this.className, this.value, this.children, this.noPrefix = false});
}
