class Mode {
  String? ref;
  Map<String, Mode>? refs;

  List<String>? aliases;

  /// `String | Map<String, [String, int]>`
  dynamic keywords;
  String? illegal;
  bool? case_insensitive;
  List<Mode?>? contains;
  List<Mode?>? variants;
  Mode? starts;
  String? className;
  String? begin;
  String? beginKeywords;
  String? end;
  String? lexemes;
  bool? endSameAsBegin;
  bool? endsParent;
  bool? endsWithParent;
  int? relevance;

  List<String>? subLanguage;
  bool? excludeBegin;
  bool? excludeEnd;
  bool? skip;
  bool? returnBegin;
  bool? returnEnd;

  bool? compiled;
  Mode? parent;
  RegExp? lexemesRe;
  RegExp? beginRe;
  RegExp? endRe;
  RegExp? illegalRe;
  String? terminator_end;
  List<Mode>? cached_variants;
  RegExp? terminators;

  bool? self;
  bool? disableAutodetect;

  Mode({
    this.ref,
    this.refs,
    //
    this.aliases,
    this.keywords,
    this.illegal,
    this.case_insensitive,
    this.contains,
    this.variants,
    this.starts,
    this.className,
    this.begin,
    this.beginKeywords,
    this.end,
    this.lexemes,
    this.endSameAsBegin,
    this.endsParent,
    this.endsWithParent,
    this.relevance,
    this.subLanguage,
    this.excludeBegin,
    this.excludeEnd,
    this.skip,
    this.returnBegin,
    this.returnEnd,
    //
    this.self,
    this.disableAutodetect,
  });

  static Mode inherit(Mode a, [Mode? b]) {
    b ??= Mode();
    return Mode()
      ..aliases = b.aliases ?? a.aliases
      ..keywords = b.keywords ?? a.keywords
      ..illegal = b.illegal ?? a.illegal
      ..case_insensitive = b.case_insensitive ?? a.case_insensitive
      ..contains = b.contains ?? a.contains
      ..variants = b.variants ?? a.variants
      ..starts = b.starts ?? a.starts
      ..className = b.className ?? a.className
      ..begin = b.begin ?? a.begin
      ..beginKeywords = b.beginKeywords ?? a.beginKeywords
      ..end = b.end ?? a.end
      ..lexemes = b.lexemes ?? a.lexemes
      ..endSameAsBegin = b.endSameAsBegin ?? a.endSameAsBegin
      ..endsParent = b.endsParent ?? a.endsParent
      ..endsWithParent = b.endsWithParent ?? a.endsWithParent
      ..relevance = b.relevance ?? a.relevance
      ..subLanguage = b.subLanguage ?? a.subLanguage
      ..excludeBegin = b.excludeBegin ?? a.excludeBegin
      ..excludeEnd = b.excludeEnd ?? a.excludeEnd
      ..skip = b.skip ?? a.skip
      ..returnBegin = b.returnBegin ?? a.returnBegin
      ..returnEnd = b.returnEnd ?? a.returnEnd

      //
      ..compiled = b.compiled ?? a.compiled
      ..parent = b.parent ?? a.parent
      ..lexemesRe = b.lexemesRe ?? a.lexemesRe
      ..beginRe = b.beginRe ?? a.beginRe
      ..endRe = b.endRe ?? a.endRe
      ..illegalRe = b.illegalRe ?? a.illegalRe
      ..terminator_end = b.terminator_end ?? a.terminator_end
      ..cached_variants = b.cached_variants ?? a.cached_variants
      ..terminators = b.terminators ?? a.terminators;
  }
}
