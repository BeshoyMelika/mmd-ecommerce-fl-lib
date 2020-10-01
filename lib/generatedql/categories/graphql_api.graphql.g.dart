// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories$Query$Category$Media _$Categories$Query$Category$MediaFromJson(
    Map<String, dynamic> json) {
  return Categories$Query$Category$Media()..url = json['url'] as String;
}

Map<String, dynamic> _$Categories$Query$Category$MediaToJson(
        Categories$Query$Category$Media instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

Categories$Query$Category _$Categories$Query$CategoryFromJson(
    Map<String, dynamic> json) {
  return Categories$Query$Category()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..cover = json['cover'] == null
        ? null
        : Categories$Query$Category$Media.fromJson(
            json['cover'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Categories$Query$CategoryToJson(
        Categories$Query$Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover?.toJson(),
    };

Categories$Query _$Categories$QueryFromJson(Map<String, dynamic> json) {
  return Categories$Query()
    ..categories = (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : Categories$Query$Category.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Categories$QueryToJson(Categories$Query instance) =>
    <String, dynamic>{
      'categories': instance.categories?.map((e) => e?.toJson())?.toList(),
    };
