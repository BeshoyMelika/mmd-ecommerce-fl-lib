// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes()
    ..attributes = (json['attributes'] as List)
        ?.map((e) =>
            e == null ? null : Attribute.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'attributes': instance.attributes?.map((e) => e?.toJson())?.toList(),
    };

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return Attribute()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..options = (json['options'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$AttributeToJson(Attribute instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options,
    };

Brands _$BrandsFromJson(Map<String, dynamic> json) {
  return Brands()
    ..brands = (json['brands'] as List)
        ?.map(
            (e) => e == null ? null : Brand.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BrandsToJson(Brands instance) => <String, dynamic>{
      'brands': instance.brands?.map((e) => e?.toJson())?.toList(),
    };

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return Brand()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Slider _$SliderFromJson(Map<String, dynamic> json) {
  return Slider()
    ..sliders = (json['sliders'] as List)
        ?.map((e) =>
            e == null ? null : Slider.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SliderToJson(Slider instance) => <String, dynamic>{
      'sliders': instance.sliders?.map((e) => e?.toJson())?.toList(),
    };

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media()..url = json['url'] as String;
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'url': instance.url,
    };
