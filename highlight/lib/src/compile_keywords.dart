const _commonKeywords = [
  'of',
  'and',
  'for',
  'in',
  'not',
  'or',
  'if',
  'then',
  'parent',
  'list',
  'value',
];

const _defaultKeywordScope = 'keyword';

Map<String, List<dynamic>> compileKeywords(
  dynamic rawKeywords,
  bool caseInsensitive, [
  String scopeName = _defaultKeywordScope,
]) {
  final compiledKeywords = <String, List<dynamic>>{};

  if (rawKeywords is String) {
    _compileList(
      compiledKeywords,
      scopeName,
      rawKeywords.split(' '),
      caseInsensitive,
    );
  } else if (rawKeywords is List) {
    _compileList(
      compiledKeywords,
      scopeName,
      rawKeywords.map((e) => e.toString()).toList(),
      caseInsensitive,
    );
  } else if (rawKeywords is Map) {
    for (final entry in rawKeywords.entries) {
      final key = entry.key.toString();
      if (key == r'$pattern') continue;
      final sub = compileKeywords(entry.value, caseInsensitive, key);
      compiledKeywords.addAll(sub);
    }
  }

  return compiledKeywords;
}

void _compileList(
  Map<String, List<dynamic>> compiled,
  String scopeName,
  List<String> keywordList,
  bool caseInsensitive,
) {
  if (caseInsensitive) {
    keywordList = keywordList.map((x) => x.toLowerCase()).toList();
  }
  for (final keyword in keywordList) {
    if (keyword.isEmpty) continue;
    final pair = keyword.split('|');
    compiled[pair[0]] = [
      scopeName,
      _scoreForKeyword(pair[0], pair.length > 1 ? pair[1] : null),
    ];
  }
}

num _scoreForKeyword(String keyword, String? providedScore) {
  if (providedScore != null && providedScore.isNotEmpty) {
    return num.tryParse(providedScore) ??
        (_commonKeywords.contains(keyword.toLowerCase()) ? 0 : 1);
  }
  return _commonKeywords.contains(keyword.toLowerCase()) ? 0 : 1;
}
