// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return Products()
    ..products = json['products'] == null
        ? null
        : ProductPaginator.fromJson(json['products'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'products': instance.products?.toJson(),
    };

ProductPaginator _$ProductPaginatorFromJson(Map<String, dynamic> json) {
  return ProductPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : PaginatorInfo.fromJson(json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ProductPaginatorToJson(ProductPaginator instance) =>
    <String, dynamic>{
      'paginatorInfo': instance.paginatorInfo?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

PaginatorInfo _$PaginatorInfoFromJson(Map<String, dynamic> json) {
  return PaginatorInfo()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..firstItem = json['firstItem'] as int
    ..lastItem = json['lastItem'] as int
    ..hasMorePages = json['hasMorePages'] as bool
    ..lastPage = json['lastPage'] as int
    ..perPage = json['perPage'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$PaginatorInfoToJson(PaginatorInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'currentPage': instance.currentPage,
      'firstItem': instance.firstItem,
      'lastItem': instance.lastItem,
      'hasMorePages': instance.hasMorePages,
      'lastPage': instance.lastPage,
      'perPage': instance.perPage,
      'total': instance.total,
    };

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product()
    ..id = json['id'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..details = json['details'] == null
        ? null
        : ProductData.fromJson(json['details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
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

ProductsArguments _$ProductsArgumentsFromJson(Map<String, dynamic> json) {
  return ProductsArguments(
    first: json['first'] as int,
    page: json['page'] as int,
    productsId: json['productsId'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$ProductsArgumentsToJson(ProductsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'page': instance.page,
      'productsId': instance.productsId,
      'name': instance.name,
    };
