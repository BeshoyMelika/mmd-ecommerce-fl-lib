// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Orders$Query$OrderPaginator$PaginatorInfo
    _$Orders$Query$OrderPaginator$PaginatorInfoFromJson(
        Map<String, dynamic> json) {
  return Orders$Query$OrderPaginator$PaginatorInfo()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..firstItem = json['firstItem'] as int
    ..lastItem = json['lastItem'] as int
    ..hasMorePages = json['hasMorePages'] as bool
    ..lastPage = json['lastPage'] as int
    ..perPage = json['perPage'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$Orders$Query$OrderPaginator$PaginatorInfoToJson(
        Orders$Query$OrderPaginator$PaginatorInfo instance) =>
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

Orders$Query$OrderPaginator$Order _$Orders$Query$OrderPaginator$OrderFromJson(
    Map<String, dynamic> json) {
  return Orders$Query$OrderPaginator$Order()
    ..id = json['id'] as String
    ..total = json['total'] as String
    ..paymentType = json['payment_type'] as String;
}

Map<String, dynamic> _$Orders$Query$OrderPaginator$OrderToJson(
        Orders$Query$OrderPaginator$Order instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'payment_type': instance.paymentType,
    };

Orders$Query$OrderPaginator _$Orders$Query$OrderPaginatorFromJson(
    Map<String, dynamic> json) {
  return Orders$Query$OrderPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : Orders$Query$OrderPaginator$PaginatorInfo.fromJson(
            json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : Orders$Query$OrderPaginator$Order.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Orders$Query$OrderPaginatorToJson(
        Orders$Query$OrderPaginator instance) =>
    <String, dynamic>{
      'paginatorInfo': instance.paginatorInfo?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

Orders$Query _$Orders$QueryFromJson(Map<String, dynamic> json) {
  return Orders$Query()
    ..orders = json['orders'] == null
        ? null
        : Orders$Query$OrderPaginator.fromJson(
            json['orders'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Orders$QueryToJson(Orders$Query instance) =>
    <String, dynamic>{
      'orders': instance.orders?.toJson(),
    };

OrdersArguments _$OrdersArgumentsFromJson(Map<String, dynamic> json) {
  return OrdersArguments(
    first: json['first'] as int,
    page: json['page'] as int,
  );
}

Map<String, dynamic> _$OrdersArgumentsToJson(OrdersArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'page': instance.page,
    };
