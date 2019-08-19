import 'common.dart';
import '../highlight.dart';

var erb = Mode(refs: {}, subLanguage: [
  "xml"
], contains: [
  Mode(className: "comment", begin: "<%#", end: "%>", contains: [
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ]),
  Mode(
      begin: "<%[%=-]?",
      end: "[%-]?%>",
      subLanguage: ["ruby"],
      excludeBegin: true,
      excludeEnd: true)
]);
