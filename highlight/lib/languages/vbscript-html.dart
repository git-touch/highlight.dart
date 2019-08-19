import 'common.dart';
import '../highlight.dart';

var vbscriptHtml = Mode(refs: {}, subLanguage: [
  "xml"
], contains: [
  Mode(begin: "<%", end: "%>", subLanguage: ["vbscript"])
]);
