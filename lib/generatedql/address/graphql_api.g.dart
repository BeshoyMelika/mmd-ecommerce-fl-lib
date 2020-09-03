// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAddress _$CreateAddressFromJson(Map<String, dynamic> json) {
  return CreateAddress()..createAddress = json['createAddress'] as bool;
}

Map<String, dynamic> _$CreateAddressToJson(CreateAddress instance) =>
    <String, dynamic>{
      'createAddress': instance.createAddress,
    };

CreateAddressArguments _$CreateAddressArgumentsFromJson(
    Map<String, dynamic> json) {
  return CreateAddressArguments(
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    area_id: json['area_id'] as String,
    info: json['info'] as String,
    additional_info: json['additional_info'] as String,
    mobile: json['mobile'] as String,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
  );
}

Map<String, dynamic> _$CreateAddressArgumentsToJson(
        CreateAddressArguments instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'area_id': instance.area_id,
      'info': instance.info,
      'additional_info': instance.additional_info,
      'mobile': instance.mobile,
      'lat': instance.lat,
      'lng': instance.lng,
    };

DeleteAddress _$DeleteAddressFromJson(Map<String, dynamic> json) {
  return DeleteAddress()..deleteAddress = json['deleteAddress'] as bool;
}

Map<String, dynamic> _$DeleteAddressToJson(DeleteAddress instance) =>
    <String, dynamic>{
      'deleteAddress': instance.deleteAddress,
    };

DeleteAddressArguments _$DeleteAddressArgumentsFromJson(
    Map<String, dynamic> json) {
  return DeleteAddressArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$DeleteAddressArgumentsToJson(
        DeleteAddressArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

GetAllAddress _$GetAllAddressFromJson(Map<String, dynamic> json) {
  return GetAllAddress()
    ..addresses = json['addresses'] == null
        ? null
        : UserAddressPaginator.fromJson(
            json['addresses'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetAllAddressToJson(GetAllAddress instance) =>
    <String, dynamic>{
      'addresses': instance.addresses?.toJson(),
    };

UserAddressPaginator _$UserAddressPaginatorFromJson(Map<String, dynamic> json) {
  return UserAddressPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : PaginatorInfo.fromJson(json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) =>
            e == null ? null : UserAddress.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$UserAddressPaginatorToJson(
        UserAddressPaginator instance) =>
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

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return UserAddress()
    ..id = json['id'] as String
    ..first_name = json['first_name'] as String
    ..last_name = json['last_name'] as String
    ..area = json['area'] == null
        ? null
        : Area.fromJson(json['area'] as Map<String, dynamic>)
    ..info = json['info'] as String
    ..additional_info = json['additional_info'] as String
    ..mobile = json['mobile'] as String
    ..lat = json['lat'] as String
    ..lng = json['lng'] as String;
}

Map<String, dynamic> _$UserAddressToJson(UserAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'area': instance.area?.toJson(),
      'info': instance.info,
      'additional_info': instance.additional_info,
      'mobile': instance.mobile,
      'lat': instance.lat,
      'lng': instance.lng,
    };

Area _$AreaFromJson(Map<String, dynamic> json) {
  return Area()
    ..name = json['name'] as String
    ..city = json['city'] == null
        ? null
        : City.fromJson(json['city'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      'name': instance.name,
      'city': instance.city?.toJson(),
    };

City _$CityFromJson(Map<String, dynamic> json) {
  return City()..name = json['name'] as String;
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'name': instance.name,
    };

GetAllAddressArguments _$GetAllAddressArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetAllAddressArguments(
    first: json['first'] as int,
    page: json['page'] as int,
  );
}

Map<String, dynamic> _$GetAllAddressArgumentsToJson(
        GetAllAddressArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'page': instance.page,
    };

UpdateAddress _$UpdateAddressFromJson(Map<String, dynamic> json) {
  return UpdateAddress()..updateAddress = json['updateAddress'] as bool;
}

Map<String, dynamic> _$UpdateAddressToJson(UpdateAddress instance) =>
    <String, dynamic>{
      'updateAddress': instance.updateAddress,
    };

UpdateAddressArguments _$UpdateAddressArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateAddressArguments(
    id: json['id'] as String,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    area_id: json['area_id'] as String,
    info: json['info'] as String,
    additional_info: json['additional_info'] as String,
    mobile: json['mobile'] as String,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
  );
}

Map<String, dynamic> _$UpdateAddressArgumentsToJson(
        UpdateAddressArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'area_id': instance.area_id,
      'info': instance.info,
      'additional_info': instance.additional_info,
      'mobile': instance.mobile,
      'lat': instance.lat,
      'lng': instance.lng,
    };
