// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mode _$ModeFromJson(Map<String, dynamic> json) {
  return Mode()
    ..aliases = (json['aliases'] as List)?.map((e) => e as String)?.toList()
    ..keywords = json['keywords']
    ..illegal = json['illegal'] as String
    ..case_insensitive = json['case_insensitive'] as bool ?? false
    ..contains = (json['contains'] as List)
        ?.map((e) => e == null ? null : Mode.fromJson(e))
        ?.toList()
    ..variants = (json['variants'] as List)
        ?.map((e) => e == null ? null : Mode.fromJson(e))
        ?.toList()
    ..starts = json['starts'] == null ? null : Mode.fromJson(json['starts'])
    ..className = json['className'] as String
    ..begin = json['begin'] as String
    ..beginKeywords = json['beginKeywords'] as String
    ..end = json['end'] as String
    ..lexemes = json['lexemes'] as String
    ..endSameAsBegin = json['endSameAsBegin'] as bool ?? false
    ..endsParent = json['endsParent'] as bool ?? false
    ..endsWithParent = json['endsWithParent'] as bool ?? false
    ..relevance = json['relevance'] as int
    ..subLanguage = json['subLanguage'] as String
    ..excludeBegin = json['excludeBegin'] as bool ?? false
    ..excludeEnd = json['excludeEnd'] as bool ?? false
    ..skip = json['skip'] as bool ?? false
    ..returnBegin = json['returnBegin'] as bool ?? false
    ..returnEnd = json['returnEnd'] as bool ?? false;
}

Map<String, dynamic> _$ModeToJson(Mode instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('aliases', instance.aliases);
  writeNotNull('keywords', instance.keywords);
  writeNotNull('illegal', instance.illegal);
  writeNotNull('case_insensitive', instance.case_insensitive);
  writeNotNull(
      'contains', instance.contains?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'variants', instance.variants?.map((e) => e?.toJson())?.toList());
  writeNotNull('starts', instance.starts?.toJson());
  writeNotNull('className', instance.className);
  writeNotNull('begin', instance.begin);
  writeNotNull('beginKeywords', instance.beginKeywords);
  writeNotNull('end', instance.end);
  writeNotNull('lexemes', instance.lexemes);
  writeNotNull('endSameAsBegin', instance.endSameAsBegin);
  writeNotNull('endsParent', instance.endsParent);
  writeNotNull('endsWithParent', instance.endsWithParent);
  writeNotNull('relevance', instance.relevance);
  writeNotNull('subLanguage', instance.subLanguage);
  writeNotNull('excludeBegin', instance.excludeBegin);
  writeNotNull('excludeEnd', instance.excludeEnd);
  writeNotNull('skip', instance.skip);
  writeNotNull('returnBegin', instance.returnBegin);
  writeNotNull('returnEnd', instance.returnEnd);
  return val;
}
