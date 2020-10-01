// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAddress$Mutation _$CreateAddress$MutationFromJson(
    Map<String, dynamic> json) {
  return CreateAddress$Mutation()
    ..createAddress = json['createAddress'] as bool;
}

Map<String, dynamic> _$CreateAddress$MutationToJson(
        CreateAddress$Mutation instance) =>
    <String, dynamic>{
      'createAddress': instance.createAddress,
    };

DeleteAddress$Mutation _$DeleteAddress$MutationFromJson(
    Map<String, dynamic> json) {
  return DeleteAddress$Mutation()
    ..deleteAddress = json['deleteAddress'] as bool;
}

Map<String, dynamic> _$DeleteAddress$MutationToJson(
        DeleteAddress$Mutation instance) =>
    <String, dynamic>{
      'deleteAddress': instance.deleteAddress,
    };

GetAllAddress$Query$UserAddressPaginator$PaginatorInfo
    _$GetAllAddress$Query$UserAddressPaginator$PaginatorInfoFromJson(
        Map<String, dynamic> json) {
  return GetAllAddress$Query$UserAddressPaginator$PaginatorInfo()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..firstItem = json['firstItem'] as int
    ..lastItem = json['lastItem'] as int
    ..hasMorePages = json['hasMorePages'] as bool
    ..lastPage = json['lastPage'] as int
    ..perPage = json['perPage'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic>
    _$GetAllAddress$Query$UserAddressPaginator$PaginatorInfoToJson(
            GetAllAddress$Query$UserAddressPaginator$PaginatorInfo instance) =>
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

GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City
    _$GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$CityFromJson(
        Map<String, dynamic> json) {
  return GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City()
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$CityToJson(
            GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City
                instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

GetAllAddress$Query$UserAddressPaginator$UserAddress$Area
    _$GetAllAddress$Query$UserAddressPaginator$UserAddress$AreaFromJson(
        Map<String, dynamic> json) {
  return GetAllAddress$Query$UserAddressPaginator$UserAddress$Area()
    ..name = json['name'] as String
    ..city = json['city'] == null
        ? null
        : GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City
            .fromJson(json['city'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$GetAllAddress$Query$UserAddressPaginator$UserAddress$AreaToJson(
        GetAllAddress$Query$UserAddressPaginator$UserAddress$Area instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city?.toJson(),
    };

GetAllAddress$Query$UserAddressPaginator$UserAddress
    _$GetAllAddress$Query$UserAddressPaginator$UserAddressFromJson(
        Map<String, dynamic> json) {
  return GetAllAddress$Query$UserAddressPaginator$UserAddress()
    ..id = json['id'] as String
    ..firstName = json['first_name'] as String
    ..lastName = json['last_name'] as String
    ..area = json['area'] == null
        ? null
        : GetAllAddress$Query$UserAddressPaginator$UserAddress$Area.fromJson(
            json['area'] as Map<String, dynamic>)
    ..info = json['info'] as String
    ..additionalInfo = json['additional_info'] as String
    ..mobile = json['mobile'] as String
    ..lat = json['lat'] as String
    ..lng = json['lng'] as String
    ..isDefault = json['isDefault'] as bool;
}

Map<String, dynamic>
    _$GetAllAddress$Query$UserAddressPaginator$UserAddressToJson(
            GetAllAddress$Query$UserAddressPaginator$UserAddress instance) =>
        <String, dynamic>{
          'id': instance.id,
          'first_name': instance.firstName,
          'last_name': instance.lastName,
          'area': instance.area?.toJson(),
          'info': instance.info,
          'additional_info': instance.additionalInfo,
          'mobile': instance.mobile,
          'lat': instance.lat,
          'lng': instance.lng,
          'isDefault': instance.isDefault,
        };

GetAllAddress$Query$UserAddressPaginator
    _$GetAllAddress$Query$UserAddressPaginatorFromJson(
        Map<String, dynamic> json) {
  return GetAllAddress$Query$UserAddressPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : GetAllAddress$Query$UserAddressPaginator$PaginatorInfo.fromJson(
            json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : GetAllAddress$Query$UserAddressPaginator$UserAddress.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetAllAddress$Query$UserAddressPaginatorToJson(
        GetAllAddress$Query$UserAddressPaginator instance) =>
    <String, dynamic>{
      'paginatorInfo': instance.paginatorInfo?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

GetAllAddress$Query _$GetAllAddress$QueryFromJson(Map<String, dynamic> json) {
  return GetAllAddress$Query()
    ..addresses = json['addresses'] == null
        ? null
        : GetAllAddress$Query$UserAddressPaginator.fromJson(
            json['addresses'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetAllAddress$QueryToJson(
        GetAllAddress$Query instance) =>
    <String, dynamic>{
      'addresses': instance.addresses?.toJson(),
    };

UpdateAddress$Mutation _$UpdateAddress$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateAddress$Mutation()
    ..updateAddress = json['updateAddress'] as bool;
}

Map<String, dynamic> _$UpdateAddress$MutationToJson(
        UpdateAddress$Mutation instance) =>
    <String, dynamic>{
      'updateAddress': instance.updateAddress,
    };

CreateAddressArguments _$CreateAddressArgumentsFromJson(
    Map<String, dynamic> json) {
  return CreateAddressArguments(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    areaId: json['areaId'] as String,
    info: json['info'] as String,
    additionalInfo: json['additionalInfo'] as String,
    mobile: json['mobile'] as String,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
    isDefault: json['isDefault'] as bool,
  );
}

Map<String, dynamic> _$CreateAddressArgumentsToJson(
        CreateAddressArguments instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'areaId': instance.areaId,
      'info': instance.info,
      'additionalInfo': instance.additionalInfo,
      'mobile': instance.mobile,
      'lat': instance.lat,
      'lng': instance.lng,
      'isDefault': instance.isDefault,
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

UpdateAddressArguments _$UpdateAddressArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateAddressArguments(
    id: json['id'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    areaId: json['areaId'] as String,
    info: json['info'] as String,
    additionalInfo: json['additionalInfo'] as String,
    mobile: json['mobile'] as String,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
    isDefault: json['isDefault'] as bool,
  );
}

Map<String, dynamic> _$UpdateAddressArgumentsToJson(
        UpdateAddressArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'areaId': instance.areaId,
      'info': instance.info,
      'additionalInfo': instance.additionalInfo,
      'mobile': instance.mobile,
      'lat': instance.lat,
      'lng': instance.lng,
      'isDefault': instance.isDefault,
    };
