// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `haskell`.
Mode haskell(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  mode0.begin = r'\(';
  mode0.end = r'\)';
  mode0.illegal = r'"';
  mode0.contains = [mode1, mode2, mode3, mode4, mode5];
  mode1.scope = r'meta';
  mode1.begin = r'\{-#';
  mode1.end = r'#-\}';
  mode2.scope = r'meta';
  mode2.begin = r'^#';
  mode2.end = r'$';
  mode3.scope = r'type';
  mode3.begin = r'\b[A-Z][\w]*(\((\.\.|,|\w+)\))?';
  mode4.scope = r'title';
  mode4.begin = r"[_a-z][\w']*";
  mode4.relevance = 0;
  mode5.variants = [mode6, mode9];
  mode6.scope = r'comment';
  mode6.begin = r'--+';
  mode6.end = r'$';
  mode6.contains = [mode7, mode8];
  mode7.scope = r'doctag';
  mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode7.excludeBegin = true;
  mode7.relevance = 0;
  mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode9.scope = r'comment';
  mode9.begin = r'\{-';
  mode9.end = r'-\}';
  mode9.contains = [r'self', mode10, mode11];
  mode10.scope = r'doctag';
  mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode10.excludeBegin = true;
  mode10.relevance = 0;
  mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode12.scope = r'type';
  mode12.begin = r"\b[A-Z][\w']*";
  mode12.relevance = 0;
  mode13.scope = r'string';
  mode13.begin = r'"';
  mode13.end = r'"';
  mode13.illegal = r'\n';
  mode13.contains = [mode14];
  mode14.begin = r'\\[\s\S]';
  mode14.relevance = 0;
  return Mode(
    name: r'Haskell',
    aliases: [r'hs'],
    keywords:
        r'let in if then else case of where do module import hiding qualified type data newtype deriving class instance as default infix infixl infixr foreign export ccall stdcall cplusplus jvm dotnet safe unsafe family forall mdo proc rec',
    unicodeRegex: true,
    contains: [
      Mode(
        beginKeywords: r'module',
        end: r'where',
        keywords: r'module where',
        contains: [mode0, mode5],
        illegal: r'\W\.|;',
      ),
      Mode(
        begin: r'\bimport\b',
        end: r'$',
        keywords: r'import qualified as hiding',
        contains: [mode0, mode5],
        illegal: r'\W\.|;',
      ),
      Mode(
        scope: r'class',
        begin: r'^(\s*)?(class|instance)\b',
        end: r'where',
        keywords: r'class family instance where',
        contains: [mode12, mode0, mode5],
      ),
      Mode(
        scope: r'class',
        begin: r'\b(data|(new)?type)\b',
        end: r'$',
        keywords: r'data family type newtype deriving',
        contains: [
          mode1,
          mode12,
          mode0,
          Mode(
            begin: r'\{',
            end: r'\}',
            contains: [mode1, mode2, mode3, mode4, mode5],
          ),
          mode5,
        ],
      ),
      Mode(
        beginKeywords: r'default',
        end: r'$',
        contains: [mode12, mode0, mode5],
      ),
      Mode(
        beginKeywords: r'infix infixl infixr',
        end: r'$',
        contains: [
          Mode(
            scope: r'number',
            begin:
                r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)',
            relevance: 0,
          ),
          mode5,
        ],
      ),
      Mode(
        begin: r'\bforeign\b',
        end: r'$',
        keywords:
            r'foreign import export ccall stdcall cplusplus jvm dotnet safe unsafe',
        contains: [mode12, mode13, mode5],
      ),
      Mode(scope: r'meta', begin: r'#!\/usr\/bin\/env runhaskell', end: r'$'),
      mode1,
      mode2,
      Mode(
        scope: r'string',
        begin: r"'(?=\\?.')",
        end: r"'",
        contains: [Mode(scope: r'char.escape', match: r'\\.')],
      ),
      mode13,
      Mode(
        scope: r'number',
        relevance: 0,
        variants: [
          Mode(
            match: r'\b(([0-9]_*)+)(\.(([0-9]_*)+))?([eE][+-]?(([0-9]_*)+))?\b',
          ),
          Mode(
            match:
                r'\b0[xX]_*(([0-9a-fA-F]_*)+)(\.(([0-9a-fA-F]_*)+))?([pP][+-]?(([0-9]_*)+))?\b',
          ),
          Mode(match: r'\b0[oO](([0-7]_*)+)\b'),
          Mode(match: r'\b0[bB](([01]_*)+)\b'),
        ],
      ),
      mode12,
      Mode(scope: r'title', begin: r"^[_a-z][\w']*", relevance: 0),
      Mode(
        begin:
            '(?!-)([!#\$%&*+.\\/<=>?@\\\\^~-]|(?!([(),;\\[\\]`|{}]|[_:"\']))(\\p{S}|\\p{P}))--+|--+(?!-)([!#\$%&*+.\\/<=>?@\\\\^~-]|(?!([(),;\\[\\]`|{}]|[_:"\']))(\\p{S}|\\p{P}))',
      ),
      mode5,
      Mode(begin: r'->|<-'),
    ],
  );
}
