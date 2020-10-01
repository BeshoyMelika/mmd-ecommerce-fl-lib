// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProducts$Query$ProductPaginator$PaginatorInfo
    _$OrderProducts$Query$ProductPaginator$PaginatorInfoFromJson(
        Map<String, dynamic> json) {
  return OrderProducts$Query$ProductPaginator$PaginatorInfo()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..firstItem = json['firstItem'] as int
    ..lastItem = json['lastItem'] as int
    ..hasMorePages = json['hasMorePages'] as bool
    ..lastPage = json['lastPage'] as int
    ..perPage = json['perPage'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$OrderProducts$Query$ProductPaginator$PaginatorInfoToJson(
        OrderProducts$Query$ProductPaginator$PaginatorInfo instance) =>
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

OrderProducts$Query$ProductPaginator$Product
    _$OrderProducts$Query$ProductPaginator$ProductFromJson(
        Map<String, dynamic> json) {
  return OrderProducts$Query$ProductPaginator$Product()
    ..id = json['id'] as String
    ..averageRating = json['averageRating'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..minQuantity = json['min_quantity'] as String
    ..maxQuantity = json['max_quantity'] as String
    ..step = json['step'] as String
    ..details = json['details'] == null
        ? null
        : ProductMixin$ProductData.fromJson(
            json['details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OrderProducts$Query$ProductPaginator$ProductToJson(
        OrderProducts$Query$ProductPaginator$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'averageRating': instance.averageRating,
      'price': instance.price,
      'available': instance.available,
      'min_quantity': instance.minQuantity,
      'max_quantity': instance.maxQuantity,
      'step': instance.step,
      'details': instance.details?.toJson(),
    };

OrderProducts$Query$ProductPaginator
    _$OrderProducts$Query$ProductPaginatorFromJson(Map<String, dynamic> json) {
  return OrderProducts$Query$ProductPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : OrderProducts$Query$ProductPaginator$PaginatorInfo.fromJson(
            json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : OrderProducts$Query$ProductPaginator$Product.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OrderProducts$Query$ProductPaginatorToJson(
        OrderProducts$Query$ProductPaginator instance) =>
    <String, dynamic>{
      'paginatorInfo': instance.paginatorInfo?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

OrderProducts$Query _$OrderProducts$QueryFromJson(Map<String, dynamic> json) {
  return OrderProducts$Query()
    ..products = json['products'] == null
        ? null
        : OrderProducts$Query$ProductPaginator.fromJson(
            json['products'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OrderProducts$QueryToJson(
        OrderProducts$Query instance) =>
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

RelatedProducts$Query$Product _$RelatedProducts$Query$ProductFromJson(
    Map<String, dynamic> json) {
  return RelatedProducts$Query$Product()
    ..id = json['id'] as String
    ..averageRating = json['averageRating'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..minQuantity = json['min_quantity'] as String
    ..maxQuantity = json['max_quantity'] as String
    ..step = json['step'] as String
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
      'min_quantity': instance.minQuantity,
      'max_quantity': instance.maxQuantity,
      'step': instance.step,
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
    ..minQuantity = json['min_quantity'] as String
    ..maxQuantity = json['max_quantity'] as String
    ..step = json['step'] as String
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
      'min_quantity': instance.minQuantity,
      'max_quantity': instance.maxQuantity,
      'step': instance.step,
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

OrderProductsArguments _$OrderProductsArgumentsFromJson(
    Map<String, dynamic> json) {
  return OrderProductsArguments(
    first: json['first'] as int,
    page: json['page'] as int,
    productsId: json['productsId'] as String,
    catId: (json['catId'] as List)?.map((e) => e as String)?.toList(),
    name: json['name'] as String,
    fieldOfOrder: _$enumDecodeNullable(
        _$ProductsOrderByColumnEnumMap, json['fieldOfOrder'],
        unknownValue: ProductsOrderByColumn.artemisUnknown),
    orderType: _$enumDecodeNullable(_$SortOrderEnumMap, json['orderType'],
        unknownValue: SortOrder.artemisUnknown),
  );
}

Map<String, dynamic> _$OrderProductsArgumentsToJson(
        OrderProductsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'page': instance.page,
      'productsId': instance.productsId,
      'catId': instance.catId,
      'name': instance.name,
      'fieldOfOrder': _$ProductsOrderByColumnEnumMap[instance.fieldOfOrder],
      'orderType': _$SortOrderEnumMap[instance.orderType],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ProductsOrderByColumnEnumMap = {
  ProductsOrderByColumn.id: 'ID',
  ProductsOrderByColumn.name: 'NAME',
  ProductsOrderByColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$SortOrderEnumMap = {
  SortOrder.asc: 'ASC',
  SortOrder.desc: 'DESC',
  SortOrder.artemisUnknown: 'ARTEMIS_UNKNOWN',
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
