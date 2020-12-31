// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshToken$Mutation$AuthPayload _$RefreshToken$Mutation$AuthPayloadFromJson(
    Map<String, dynamic> json) {
  return RefreshToken$Mutation$AuthPayload()
    ..accessToken = json['access_token'] as String
    ..refreshToken = json['refresh_token'] as String
    ..expiresIn = json['expires_in'] as int
    ..tokenType = json['token_type'] as String;
}

Map<String, dynamic> _$RefreshToken$Mutation$AuthPayloadToJson(
        RefreshToken$Mutation$AuthPayload instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
    };

RefreshToken$Mutation _$RefreshToken$MutationFromJson(
    Map<String, dynamic> json) {
  return RefreshToken$Mutation()
    ..refreshToken = json['refreshToken'] == null
        ? null
        : RefreshToken$Mutation$AuthPayload.fromJson(
            json['refreshToken'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RefreshToken$MutationToJson(
        RefreshToken$Mutation instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken?.toJson(),
    };

Profile$Query$User _$Profile$Query$UserFromJson(Map<String, dynamic> json) {
  return Profile$Query$User()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..mobile = json['mobile'] as String
    ..isNotifiable = json['is_notifiable'] as bool;
}

Map<String, dynamic> _$Profile$Query$UserToJson(Profile$Query$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'is_notifiable': instance.isNotifiable,
    };

Profile$Query _$Profile$QueryFromJson(Map<String, dynamic> json) {
  return Profile$Query()
    ..profile = json['profile'] == null
        ? null
        : Profile$Query$User.fromJson(json['profile'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Profile$QueryToJson(Profile$Query instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
    };

UpdateProfile$Mutation _$UpdateProfile$MutationFromJson(
    Map<String, dynamic> json) {
  return UpdateProfile$Mutation()
    ..updateProfile = json['updateProfile'] as bool;
}

Map<String, dynamic> _$UpdateProfile$MutationToJson(
        UpdateProfile$Mutation instance) =>
    <String, dynamic>{
      'updateProfile': instance.updateProfile,
    };

RefreshTokenArguments _$RefreshTokenArgumentsFromJson(
    Map<String, dynamic> json) {
  return RefreshTokenArguments(
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$RefreshTokenArgumentsToJson(
        RefreshTokenArguments instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

UpdateProfileArguments _$UpdateProfileArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateProfileArguments(
    name: json['name'] as String,
    mobile: json['mobile'] as String,
    isNotifiable: json['isNotifiable'] as bool,
  );
}

Map<String, dynamic> _$UpdateProfileArgumentsToJson(
        UpdateProfileArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'isNotifiable': instance.isNotifiable,
    };
