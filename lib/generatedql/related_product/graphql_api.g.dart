// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedProducts _$RelatedProductsFromJson(Map<String, dynamic> json) {
  return RelatedProducts()
    ..relatedProducts = (json['relatedProducts'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RelatedProductsToJson(RelatedProducts instance) =>
    <String, dynamic>{
      'relatedProducts':
          instance.relatedProducts?.map((e) => e?.toJson())?.toList(),
    };

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product()
    ..id = json['id'] as String
    ..averageRating = json['averageRating'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..details = json['details'] == null
        ? null
        : ProductData.fromJson(json['details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'averageRating': instance.averageRating,
      'price': instance.price,
      'available': instance.available,
      'details': instance.details?.toJson(),
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return ProductData()
    ..name = json['name'] as String
    ..sku = json['sku'] as String
    ..description = json['description'] as String
    ..cover = json['cover'] == null
        ? null
        : Media.fromJson(json['cover'] as Map<String, dynamic>)
    ..unit = json['unit'] == null
        ? null
        : Unit.fromJson(json['unit'] as Map<String, dynamic>)
    ..media = (json['media'] as List)
        ?.map(
            (e) => e == null ? null : Media.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..category = json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'description': instance.description,
      'cover': instance.cover?.toJson(),
      'unit': instance.unit?.toJson(),
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
    };

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media()..url = json['url'] as String;
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'url': instance.url,
    };

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return Unit()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category()..id = json['id'] as String;
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
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
