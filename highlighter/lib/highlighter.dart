import 'package:highlighter/languages/all.dart';
import 'package:highlighter/src/highlight.dart';

export 'package:highlighter/src/highlight.dart';
export 'package:highlighter/src/node.dart';
export 'package:highlighter/src/mode.dart';
export 'package:highlighter/src/result.dart';

final highlight = Highlight()..registerLanguages(allLanguages);
