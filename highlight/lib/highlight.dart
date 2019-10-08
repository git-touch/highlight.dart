import 'package:highlight/languages/all.dart';
import 'src/highlight.dart' as src_highlight;

export 'src/node.dart';
export 'src/mode.dart';
export 'src/result.dart';

class Highlight extends src_highlight.Highlight {
  factory Highlight() {
    final h = Highlight._();
    all.forEach(h.registerLanguage);
    return h;
  }

  Highlight._();
}

final highlight = Highlight();
