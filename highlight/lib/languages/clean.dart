import 'common.dart';
import '../highlight.dart';

var clean = Mode(refs: {}, aliases: [
  "clean",
  "icl",
  "dcl"
], keywords: {
  "keyword":
      "if let in with where case of class instance otherwise implementation definition system module from import qualified as special code inline foreign export ccall stdcall generic derive infix infixl infixr",
  "built_in": "Int Real Char Bool",
  "literal": "True False"
}, contains: [
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE,
  APOS_STRING_MODE,
  QUOTE_STRING_MODE,
  C_NUMBER_MODE,
  Mode(begin: "->|<-[|:]?|#!?|>>=|\\{\\||\\|\\}|:==|=:|<>")
]);
