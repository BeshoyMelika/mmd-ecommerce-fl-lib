// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return Orders()
    ..orders = json['orders'] == null
        ? null
        : OrderPaginator.fromJson(json['orders'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
      'orders': instance.orders?.toJson(),
    };

OrderPaginator _$OrderPaginatorFromJson(Map<String, dynamic> json) {
  return OrderPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : PaginatorInfo.fromJson(json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Order.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OrderPaginatorToJson(OrderPaginator instance) =>
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

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order()
    ..id = json['id'] as String
    ..total = json['total'] as String
    ..payment_type = json['payment_type'] as String;
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'payment_type': instance.payment_type,
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
