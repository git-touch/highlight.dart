import 'common.dart';
import '../highlight.dart';

var mojolicious = Mode(refs: {}, subLanguage: [
  "xml"
], contains: [
  Mode(className: "meta", begin: "^__(END|DATA)__\$"),
  Mode(begin: "^\\s*%{1,2}={0,2}", end: "\$", subLanguage: ["perl"]),
  Mode(
      begin: "<%{1,2}={0,2}",
      end: "={0,1}%>",
      subLanguage: ["perl"],
      excludeBegin: true,
      excludeEnd: true)
]);
