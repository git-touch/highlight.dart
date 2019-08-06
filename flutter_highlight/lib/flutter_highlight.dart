library flutter_highlight;

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class Language {
  bool caseInsensitive;
  List<String> aliases;
  List<String> keywords;

  Language({this.caseInsensitive = false, this.aliases, this.keywords});
}
