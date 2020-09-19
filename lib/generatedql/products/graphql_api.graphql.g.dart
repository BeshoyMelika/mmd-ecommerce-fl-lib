// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products$Query$ProductPaginator$PaginatorInfo
    _$Products$Query$ProductPaginator$PaginatorInfoFromJson(
        Map<String, dynamic> json) {
  return Products$Query$ProductPaginator$PaginatorInfo()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..firstItem = json['firstItem'] as int
    ..lastItem = json['lastItem'] as int
    ..hasMorePages = json['hasMorePages'] as bool
    ..lastPage = json['lastPage'] as int
    ..perPage = json['perPage'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$Products$Query$ProductPaginator$PaginatorInfoToJson(
        Products$Query$ProductPaginator$PaginatorInfo instance) =>
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

Products$Query$ProductPaginator$Product
    _$Products$Query$ProductPaginator$ProductFromJson(
        Map<String, dynamic> json) {
  return Products$Query$ProductPaginator$Product()
    ..id = json['id'] as String
    ..averageRating = json['averageRating'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..details = json['details'] == null
        ? null
        : ProductMixin$ProductData.fromJson(
            json['details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Products$Query$ProductPaginator$ProductToJson(
        Products$Query$ProductPaginator$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'averageRating': instance.averageRating,
      'price': instance.price,
      'available': instance.available,
      'details': instance.details?.toJson(),
    };

Products$Query$ProductPaginator _$Products$Query$ProductPaginatorFromJson(
    Map<String, dynamic> json) {
  return Products$Query$ProductPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : Products$Query$ProductPaginator$PaginatorInfo.fromJson(
            json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : Products$Query$ProductPaginator$Product.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Products$Query$ProductPaginatorToJson(
        Products$Query$ProductPaginator instance) =>
    <String, dynamic>{
      'paginatorInfo': instance.paginatorInfo?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

Products$Query _$Products$QueryFromJson(Map<String, dynamic> json) {
  return Products$Query()
    ..products = json['products'] == null
        ? null
        : Products$Query$ProductPaginator.fromJson(
            json['products'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Products$QueryToJson(Products$Query instance) =>
    <String, dynamic>{
      'products': instance.products?.toJson(),
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

ProductsArguments _$ProductsArgumentsFromJson(Map<String, dynamic> json) {
  return ProductsArguments(
    first: json['first'] as int,
    page: json['page'] as int,
    productsId: json['productsId'] as String,
    catId: (json['catId'] as List)?.map((e) => e as String)?.toList(),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$ProductsArgumentsToJson(ProductsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'page': instance.page,
      'productsId': instance.productsId,
      'catId': instance.catId,
      'name': instance.name,
    };
