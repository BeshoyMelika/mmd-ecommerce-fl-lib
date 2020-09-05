// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cities _$CitiesFromJson(Map<String, dynamic> json) {
  return Cities()
    ..cities = (json['cities'] as List)
        ?.map(
            (e) => e == null ? null : City.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CitiesToJson(Cities instance) => <String, dynamic>{
      'cities': instance.cities?.map((e) => e?.toJson())?.toList(),
    };

City _$CityFromJson(Map<String, dynamic> json) {
  return City()..name = json['name'] as String;
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'name': instance.name,
    };
