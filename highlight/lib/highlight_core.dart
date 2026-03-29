/// Core highlight.js engine for Dart — no languages registered by default.
///
/// Use this import when you want to register only specific languages:
/// ```dart
/// import 'package:highlight/highlight_core.dart';
/// import 'package:highlight/languages/dart.dart' as lang_dart;
///
/// final highlight = Highlight();
/// highlight.registerLanguage('dart', lang_dart.dartLanguage);
/// ```
library;

export 'src/highlight.dart'
    show Highlight, HighlightResult, LanguageDefinitionFn, hljs;
export 'src/token_tree.dart' show DataNode, TokenTreeEmitter;
export 'src/regex.dart'
    show
        concat,
        lookahead,
        either,
        eitherList,
        optional,
        anyNumberOfTimes,
        source;
export 'src/utils.dart' show inherit;
export 'src/mode.dart' show Mode, CallbackResponse, ModeCallback;
export 'src/hljs_style.dart' show HljsStyle, HljsTheme;
