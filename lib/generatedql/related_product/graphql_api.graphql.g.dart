// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedProducts$Query$Product _$RelatedProducts$Query$ProductFromJson(
    Map<String, dynamic> json) {
  return RelatedProducts$Query$Product()
    ..id = json['id'] as String
    ..averageRating = json['averageRating'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..details = json['details'] == null
        ? null
        : ProductMixin$ProductData.fromJson(
            json['details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RelatedProducts$Query$ProductToJson(
        RelatedProducts$Query$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'averageRating': instance.averageRating,
      'price': instance.price,
      'available': instance.available,
      'details': instance.details?.toJson(),
    };

RelatedProducts$Query _$RelatedProducts$QueryFromJson(
    Map<String, dynamic> json) {
  return RelatedProducts$Query()
    ..relatedProducts = (json['relatedProducts'] as List)
        ?.map((e) => e == null
            ? null
            : RelatedProducts$Query$Product.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RelatedProducts$QueryToJson(
        RelatedProducts$Query instance) =>
    <String, dynamic>{
      'relatedProducts':
          instance.relatedProducts?.map((e) => e?.toJson())?.toList(),
    };

ProductMixin$ProductData$Media _$ProductMixin$ProductData$MediaFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData$Media()..url = json['url'] as String;
}

Map<String, dynamic> _$ProductMixin$ProductData$MediaToJson(
        ProductMixin$ProductData$Media instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

ProductMixin$ProductData$Unit _$ProductMixin$ProductData$UnitFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData$Unit()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$ProductMixin$ProductData$UnitToJson(
        ProductMixin$ProductData$Unit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ProductMixin$ProductData$Category _$ProductMixin$ProductData$CategoryFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData$Category()..id = json['id'] as String;
}

Map<String, dynamic> _$ProductMixin$ProductData$CategoryToJson(
        ProductMixin$ProductData$Category instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ProductMixin$ProductData _$ProductMixin$ProductDataFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData()
    ..name = json['name'] as String
    ..sku = json['sku'] as String
    ..description = json['description'] as String
    ..cover = json['cover'] == null
        ? null
        : ProductMixin$ProductData$Media.fromJson(
            json['cover'] as Map<String, dynamic>)
    ..unit = json['unit'] == null
        ? null
        : ProductMixin$ProductData$Unit.fromJson(
            json['unit'] as Map<String, dynamic>)
    ..media = (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : ProductMixin$ProductData$Media.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..category = json['category'] == null
        ? null
        : ProductMixin$ProductData$Category.fromJson(
            json['category'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductMixin$ProductDataToJson(
        ProductMixin$ProductData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'description': instance.description,
      'cover': instance.cover?.toJson(),
      'unit': instance.unit?.toJson(),
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
    };

RelatedProductsArguments _$RelatedProductsArgumentsFromJson(
    Map<String, dynamic> json) {
  return RelatedProductsArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$RelatedProductsArgumentsToJson(
        RelatedProductsArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
