// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) {
  return RefreshToken()
    ..refreshToken = json['refreshToken'] == null
        ? null
        : AuthPayload.fromJson(json['refreshToken'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken?.toJson(),
    };

AuthPayload _$AuthPayloadFromJson(Map<String, dynamic> json) {
  return AuthPayload()
    ..accessToken = json['access_token'] as String
    ..refreshToken = json['refresh_token'] as String
    ..expiresIn = json['expires_in'] as int
    ..tokenType = json['token_type'] as String;
}

Map<String, dynamic> _$AuthPayloadToJson(AuthPayload instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
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

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile()
    ..profile = json['profile'] == null
        ? null
        : User.fromJson(json['profile'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'profile': instance.profile?.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..mobile = json['mobile'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
    };

UpdateProfile _$UpdateProfileFromJson(Map<String, dynamic> json) {
  return UpdateProfile()..updateProfile = json['updateProfile'] as bool;
}

Map<String, dynamic> _$UpdateProfileToJson(UpdateProfile instance) =>
    <String, dynamic>{
      'updateProfile': instance.updateProfile,
    };

UpdateProfileArguments _$UpdateProfileArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpdateProfileArguments(
    name: json['name'] as String,
    mobile: json['mobile'] as String,
  );
}

Map<String, dynamic> _$UpdateProfileArgumentsToJson(
        UpdateProfileArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
    };
