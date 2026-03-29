String escapeHTML(String value) {
  return value
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;')
      .replaceAll('"', '&quot;')
      .replaceAll("'", '&#x27;');
}

Map<String, dynamic> inherit(
  Map<String, dynamic> original, [
  Map<String, dynamic>? obj1,
  Map<String, dynamic>? obj2,
  Map<String, dynamic>? obj3,
]) {
  final result = <String, dynamic>{};
  original.forEach((key, value) {
    result[key] = value;
  });
  if (obj1 != null) {
    obj1.forEach((key, value) {
      result[key] = value;
    });
  }
  if (obj2 != null) {
    obj2.forEach((key, value) {
      result[key] = value;
    });
  }
  if (obj3 != null) {
    obj3.forEach((key, value) {
      result[key] = value;
    });
  }
  return result;
}
