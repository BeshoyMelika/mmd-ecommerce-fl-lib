// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaByID$Query$Area _$AreaByID$Query$AreaFromJson(Map<String, dynamic> json) {
  return AreaByID$Query$Area()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$AreaByID$Query$AreaToJson(
        AreaByID$Query$Area instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

AreaByID$Query _$AreaByID$QueryFromJson(Map<String, dynamic> json) {
  return AreaByID$Query()
    ..areas = (json['areas'] as List)
        ?.map((e) => e == null
            ? null
            : AreaByID$Query$Area.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AreaByID$QueryToJson(AreaByID$Query instance) =>
    <String, dynamic>{
      'areas': instance.areas?.map((e) => e?.toJson())?.toList(),
    };

Cities$Query$City _$Cities$Query$CityFromJson(Map<String, dynamic> json) {
  return Cities$Query$City()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$Cities$Query$CityToJson(Cities$Query$City instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Cities$Query _$Cities$QueryFromJson(Map<String, dynamic> json) {
  return Cities$Query()
    ..cities = (json['cities'] as List)
        ?.map((e) => e == null
            ? null
            : Cities$Query$City.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Cities$QueryToJson(Cities$Query instance) =>
    <String, dynamic>{
      'cities': instance.cities?.map((e) => e?.toJson())?.toList(),
    };

AreaByIDArguments _$AreaByIDArgumentsFromJson(Map<String, dynamic> json) {
  return AreaByIDArguments(
    cityId: json['cityId'] as String,
  );
}

Map<String, dynamic> _$AreaByIDArgumentsToJson(AreaByIDArguments instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
    };
