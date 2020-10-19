// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sliders$Query$Slider$Media _$Sliders$Query$Slider$MediaFromJson(
    Map<String, dynamic> json) {
  return Sliders$Query$Slider$Media()..url = json['url'] as String;
}

Map<String, dynamic> _$Sliders$Query$Slider$MediaToJson(
        Sliders$Query$Slider$Media instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

Sliders$Query$Slider _$Sliders$Query$SliderFromJson(Map<String, dynamic> json) {
  return Sliders$Query$Slider()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..link = json['link'] as String
    ..cover = json['cover'] == null
        ? null
        : Sliders$Query$Slider$Media.fromJson(
            json['cover'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Sliders$Query$SliderToJson(
        Sliders$Query$Slider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
      'cover': instance.cover?.toJson(),
    };

Sliders$Query _$Sliders$QueryFromJson(Map<String, dynamic> json) {
  return Sliders$Query()
    ..sliders = (json['sliders'] as List)
        ?.map((e) => e == null
            ? null
            : Sliders$Query$Slider.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Sliders$QueryToJson(Sliders$Query instance) =>
    <String, dynamic>{
      'sliders': instance.sliders?.map((e) => e?.toJson())?.toList(),
    };

Attributes$Query$Attribute _$Attributes$Query$AttributeFromJson(
    Map<String, dynamic> json) {
  return Attributes$Query$Attribute()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..options = (json['options'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$Attributes$Query$AttributeToJson(
        Attributes$Query$Attribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options,
    };

Attributes$Query _$Attributes$QueryFromJson(Map<String, dynamic> json) {
  return Attributes$Query()
    ..attributes = (json['attributes'] as List)
        ?.map((e) => e == null
            ? null
            : Attributes$Query$Attribute.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Attributes$QueryToJson(Attributes$Query instance) =>
    <String, dynamic>{
      'attributes': instance.attributes?.map((e) => e?.toJson())?.toList(),
    };

Brands$Query$Brand _$Brands$Query$BrandFromJson(Map<String, dynamic> json) {
  return Brands$Query$Brand()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$Brands$Query$BrandToJson(Brands$Query$Brand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Brands$Query _$Brands$QueryFromJson(Map<String, dynamic> json) {
  return Brands$Query()
    ..brands = (json['brands'] as List)
        ?.map((e) => e == null
            ? null
            : Brands$Query$Brand.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Brands$QueryToJson(Brands$Query instance) =>
    <String, dynamic>{
      'brands': instance.brands?.map((e) => e?.toJson())?.toList(),
    };
