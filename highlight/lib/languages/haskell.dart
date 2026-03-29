// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode haskell(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  _mode0.begin = r'\(';
  _mode0.end = r'\)';
  _mode0.illegal = r'"';
  _mode0.contains = [_mode1, _mode2, _mode3, _mode4, _mode5];
  _mode1.scope = r'meta';
  _mode1.begin = r'\{-#';
  _mode1.end = r'#-\}';
  _mode2.scope = r'meta';
  _mode2.begin = r'^#';
  _mode2.end = r'$';
  _mode3.scope = r'type';
  _mode3.begin = r'\b[A-Z][\w]*(\((\.\.|,|\w+)\))?';
  _mode4.scope = r'title';
  _mode4.begin = r"[_a-z][\w']*";
  _mode4.relevance = 0;
  _mode5.variants = [_mode6, _mode9];
  _mode6.scope = r'comment';
  _mode6.begin = r'--+';
  _mode6.end = r'$';
  _mode6.contains = [_mode7, _mode8];
  _mode7.scope = r'doctag';
  _mode7.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode7.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode7.excludeBegin = true;
  _mode7.relevance = 0;
  _mode8.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode9.scope = r'comment';
  _mode9.begin = r'\{-';
  _mode9.end = r'-\}';
  _mode9.contains = [r'self', _mode10, _mode11];
  _mode10.scope = r'doctag';
  _mode10.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode10.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode10.excludeBegin = true;
  _mode10.relevance = 0;
  _mode11.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode12.scope = r'type';
  _mode12.begin = r"\b[A-Z][\w']*";
  _mode12.relevance = 0;
  _mode13.scope = r'string';
  _mode13.begin = r'"';
  _mode13.end = r'"';
  _mode13.illegal = r'\n';
  _mode13.contains = [_mode14];
  _mode14.begin = r'\\[\s\S]';
  _mode14.relevance = 0;
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
        contains: [_mode0, _mode5],
        illegal: r'\W\.|;',
      ),
      Mode(
        begin: r'\bimport\b',
        end: r'$',
        keywords: r'import qualified as hiding',
        contains: [_mode0, _mode5],
        illegal: r'\W\.|;',
      ),
      Mode(
        scope: r'class',
        begin: r'^(\s*)?(class|instance)\b',
        end: r'where',
        keywords: r'class family instance where',
        contains: [_mode12, _mode0, _mode5],
      ),
      Mode(
        scope: r'class',
        begin: r'\b(data|(new)?type)\b',
        end: r'$',
        keywords: r'data family type newtype deriving',
        contains: [
          _mode1,
          _mode12,
          _mode0,
          Mode(
            begin: r'\{',
            end: r'\}',
            contains: [_mode1, _mode2, _mode3, _mode4, _mode5],
          ),
          _mode5,
        ],
      ),
      Mode(
        beginKeywords: r'default',
        end: r'$',
        contains: [_mode12, _mode0, _mode5],
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
          _mode5,
        ],
      ),
      Mode(
        begin: r'\bforeign\b',
        end: r'$',
        keywords:
            r'foreign import export ccall stdcall cplusplus jvm dotnet safe unsafe',
        contains: [_mode12, _mode13, _mode5],
      ),
      Mode(scope: r'meta', begin: r'#!\/usr\/bin\/env runhaskell', end: r'$'),
      _mode1,
      _mode2,
      Mode(
        scope: r'string',
        begin: r"'(?=\\?.')",
        end: r"'",
        contains: [Mode(scope: r'char.escape', match: r'\\.')],
      ),
      _mode13,
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
      _mode12,
      Mode(scope: r'title', begin: r"^[_a-z][\w']*", relevance: 0),
      Mode(
        begin:
            '(?!-)([!#\$%&*+.\\/<=>?@\\\\^~-]|(?!([(),;\\[\\]`|{}]|[_:"\']))(\\p{S}|\\p{P}))--+|--+(?!-)([!#\$%&*+.\\/<=>?@\\\\^~-]|(?!([(),;\\[\\]`|{}]|[_:"\']))(\\p{S}|\\p{P}))',
      ),
      _mode5,
      Mode(begin: r'->|<-'),
    ],
  );
}
