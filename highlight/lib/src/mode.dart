import 'mode_compiler.dart';

typedef ModeCallback =
    void Function(RegExpMatch match, CallbackResponse response);

class CallbackResponse {
  final Map<String, dynamic> data;
  bool isMatchIgnored = false;

  CallbackResponse(this.data);

  void ignoreMatch() {
    isMatchIgnored = true;
  }
}

class Mode {
  // --- User-defined fields (set in language definitions) ---

  String? name;
  String? label;
  List<String>? aliases;
  dynamic scope; // String or Map<int, String> (for multi-class)
  dynamic begin; // String, RegExp, or List<dynamic> (for multi-class)
  dynamic end; // String, RegExp, or List<dynamic>
  dynamic match; // String, RegExp, or List<dynamic> (for multi-class)
  dynamic beginScope; // String or Map<dynamic, dynamic>
  dynamic endScope; // String or Map<dynamic, dynamic>
  List<dynamic>? contains; // List<Mode | String('self')>
  dynamic keywords; // String, List<String>, or Map<String, dynamic>
  dynamic illegal; // String, RegExp, or List<dynamic>
  num? relevance;
  dynamic subLanguage; // String or List<String>
  bool? endsWithParent;
  bool? endsParent;
  bool? excludeBegin;
  bool? excludeEnd;
  bool? returnBegin;
  bool? returnEnd;
  bool? skip;
  Mode? starts;
  List<Mode>? variants;
  String? beginKeywords;
  String? beforeMatch;
  dynamic exports;
  dynamic preprocessor;
  bool? caseInsensitive;
  bool? unicodeRegex;
  bool? disableAutodetect;
  Map<String, String>? classNameAliases;
  String? supersetOf;
  List<dynamic>? compilerExtensions;
  String? binary;
  ModeCallback? onBegin;
  ModeCallback? onEnd;
  ModeCallback? beforeBeginCallback;
  void Function(String, dynamic)? emitTokens;

  // --- Compiler-internal fields ---

  RegExp? beginRe;
  RegExp? endRe;
  RegExp? illegalRe;
  RegExp? keywordPatternRe;
  ResumableMultiRegex? matcher;
  String? terminatorEnd;
  bool isCompiled = false;
  List<Mode>? cachedVariants;
  Mode? parent;
  dynamic rawDefinition; // LanguageDefinitionFn
  int? modeId;
  Map<String, dynamic>? data;

  /// Compiled keywords map where value is `[scope, relevance]`.
  Map<String, List<dynamic>>? compiledKeywords;

  Mode({
    this.name,
    this.label,
    this.aliases,
    this.scope,
    this.begin,
    this.end,
    this.match,
    this.beginScope,
    this.endScope,
    this.contains,
    this.keywords,
    this.illegal,
    this.relevance,
    this.subLanguage,
    this.endsWithParent,
    this.endsParent,
    this.excludeBegin,
    this.excludeEnd,
    this.returnBegin,
    this.returnEnd,
    this.skip,
    this.starts,
    this.variants,
    this.beginKeywords,
    this.beforeMatch,
    this.exports,
    this.preprocessor,
    this.caseInsensitive,
    this.unicodeRegex,
    this.disableAutodetect,
    this.classNameAliases,
    this.supersetOf,
    this.compilerExtensions,
    this.binary,
    this.onBegin,
    this.onEnd,
    this.beforeBeginCallback,
    this.emitTokens,
  });

  Mode copyWith({
    String? name,
    String? label,
    dynamic scope,
    dynamic begin,
    dynamic end,
    dynamic beginScope,
    dynamic endScope,
    List<dynamic>? contains,
    dynamic keywords,
    dynamic illegal,
    num? relevance,
    dynamic subLanguage,
    bool? endsWithParent,
    bool? endsParent,
    bool? excludeBegin,
    bool? excludeEnd,
    bool? returnBegin,
    bool? returnEnd,
    bool? skip,
    Mode? starts,
    List<Mode>? variants,
    bool clearVariants = false,
  }) {
    final copy = Mode(
      name: name ?? this.name,
      label: label ?? this.label,
      aliases: aliases != null ? List.from(aliases!) : null,
      scope: scope ?? this.scope,
      begin: begin ?? this.begin,
      end: end ?? this.end,
      match: match,
      beginScope: beginScope ?? this.beginScope,
      endScope: endScope ?? this.endScope,
      contains:
          contains ??
          (this.contains != null ? List.from(this.contains!) : null),
      keywords: keywords ?? this.keywords,
      illegal: illegal ?? this.illegal,
      relevance: relevance ?? this.relevance,
      subLanguage: subLanguage ?? this.subLanguage,
      endsWithParent: endsWithParent ?? this.endsWithParent,
      endsParent: endsParent ?? this.endsParent,
      excludeBegin: excludeBegin ?? this.excludeBegin,
      excludeEnd: excludeEnd ?? this.excludeEnd,
      returnBegin: returnBegin ?? this.returnBegin,
      returnEnd: returnEnd ?? this.returnEnd,
      skip: skip ?? this.skip,
      starts: starts ?? this.starts?.shallowCopy(),
      variants: clearVariants ? null : (variants ?? this.variants),
      beginKeywords: beginKeywords,
      beforeMatch: beforeMatch,
      exports: exports,
      preprocessor: preprocessor,
      caseInsensitive: caseInsensitive,
      unicodeRegex: unicodeRegex,
      disableAutodetect: disableAutodetect,
      classNameAliases: classNameAliases != null
          ? Map.from(classNameAliases!)
          : null,
      supersetOf: supersetOf,
      compilerExtensions: compilerExtensions,
      binary: binary,
      onBegin: onBegin,
      onEnd: onEnd,
      beforeBeginCallback: beforeBeginCallback,
      emitTokens: emitTokens,
    );
    return copy;
  }

  /// Creates a new Mode with [other]'s non-null fields taking priority.
  Mode mergeWith(Mode other) {
    return Mode(
      name: other.name ?? name,
      label: other.label ?? label,
      aliases: other.aliases ?? aliases,
      scope: other.scope ?? scope,
      begin: other.begin ?? begin,
      end: other.end ?? end,
      match: other.match ?? match,
      beginScope: other.beginScope ?? beginScope,
      endScope: other.endScope ?? endScope,
      contains: other.contains ?? contains,
      keywords: other.keywords ?? keywords,
      illegal: other.illegal ?? illegal,
      relevance: other.relevance ?? relevance,
      subLanguage: other.subLanguage ?? subLanguage,
      endsWithParent: other.endsWithParent ?? endsWithParent,
      endsParent: other.endsParent ?? endsParent,
      excludeBegin: other.excludeBegin ?? excludeBegin,
      excludeEnd: other.excludeEnd ?? excludeEnd,
      returnBegin: other.returnBegin ?? returnBegin,
      returnEnd: other.returnEnd ?? returnEnd,
      skip: other.skip ?? skip,
      starts: other.starts ?? starts,
      variants: other.variants ?? variants,
      beginKeywords: other.beginKeywords ?? beginKeywords,
      beforeMatch: other.beforeMatch ?? beforeMatch,
      exports: other.exports ?? exports,
      preprocessor: other.preprocessor ?? preprocessor,
      caseInsensitive: other.caseInsensitive ?? caseInsensitive,
      unicodeRegex: other.unicodeRegex ?? unicodeRegex,
      disableAutodetect: other.disableAutodetect ?? disableAutodetect,
      classNameAliases: other.classNameAliases ?? classNameAliases,
      supersetOf: other.supersetOf ?? supersetOf,
      compilerExtensions: other.compilerExtensions ?? compilerExtensions,
      binary: other.binary ?? binary,
      onBegin: other.onBegin ?? onBegin,
      onEnd: other.onEnd ?? onEnd,
      beforeBeginCallback: other.beforeBeginCallback ?? beforeBeginCallback,
      emitTokens: other.emitTokens ?? emitTokens,
    );
  }

  Mode shallowCopy() {
    final copy = Mode(
      name: name,
      label: label,
      aliases: aliases,
      scope: scope,
      begin: begin,
      end: end,
      match: match,
      beginScope: beginScope,
      endScope: endScope,
      contains: contains,
      keywords: keywords,
      illegal: illegal,
      relevance: relevance,
      subLanguage: subLanguage,
      endsWithParent: endsWithParent,
      endsParent: endsParent,
      excludeBegin: excludeBegin,
      excludeEnd: excludeEnd,
      returnBegin: returnBegin,
      returnEnd: returnEnd,
      skip: skip,
      starts: starts,
      variants: variants,
      beginKeywords: beginKeywords,
      beforeMatch: beforeMatch,
      exports: exports,
      preprocessor: preprocessor,
      caseInsensitive: caseInsensitive,
      unicodeRegex: unicodeRegex,
      disableAutodetect: disableAutodetect,
      classNameAliases: classNameAliases,
      supersetOf: supersetOf,
      compilerExtensions: compilerExtensions,
      binary: binary,
      onBegin: onBegin,
      onEnd: onEnd,
      beforeBeginCallback: beforeBeginCallback,
      emitTokens: emitTokens,
    );
    copy.beginRe = beginRe;
    copy.endRe = endRe;
    copy.illegalRe = illegalRe;
    copy.keywordPatternRe = keywordPatternRe;
    copy.matcher = matcher;
    copy.terminatorEnd = terminatorEnd;
    copy.isCompiled = isCompiled;
    copy.cachedVariants = cachedVariants;
    copy.compiledKeywords = compiledKeywords;
    copy.rawDefinition = rawDefinition;
    copy.data = data != null ? Map<String, dynamic>.from(data!) : null;
    return copy;
  }
}
