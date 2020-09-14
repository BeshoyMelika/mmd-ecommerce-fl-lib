// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return Categories()
    ..categories = (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'categories': instance.categories?.map((e) => e?.toJson())?.toList(),
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..cover = json['cover'] == null
        ? null
        : Media.fromJson(json['cover'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover?.toJson(),
    };

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media()..url = json['url'] as String;
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'url': instance.url,
    };
