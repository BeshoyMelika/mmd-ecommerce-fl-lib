// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUp _$SignUpFromJson(Map<String, dynamic> json) {
  return SignUp()
    ..register = json['register'] == null
        ? null
        : User.fromJson(json['register'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignUpToJson(SignUp instance) => <String, dynamic>{
      'register': instance.register?.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..name = json['name'] as String
    ..email = json['email'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

SignUpArguments _$SignUpArgumentsFromJson(Map<String, dynamic> json) {
  return SignUpArguments(
    name: json['name'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$SignUpArgumentsToJson(SignUpArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes()
    ..attributes = (json['attributes'] as List)
        ?.map((e) =>
            e == null ? null : Attribute.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'attributes': instance.attributes?.map((e) => e?.toJson())?.toList(),
    };

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return Attribute()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..options = (json['options'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$AttributeToJson(Attribute instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options,
    };

SignIn _$SignInFromJson(Map<String, dynamic> json) {
  return SignIn()
    ..login = json['login'] == null
        ? null
        : AuthPayload.fromJson(json['login'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignInToJson(SignIn instance) => <String, dynamic>{
      'login': instance.login?.toJson(),
    };

AuthPayload _$AuthPayloadFromJson(Map<String, dynamic> json) {
  return AuthPayload()
    ..access_token = json['access_token'] as String
    ..refresh_token = json['refresh_token'] as String
    ..expires_in = json['expires_in'] as int
    ..token_type = json['token_type'] as String;
}

Map<String, dynamic> _$AuthPayloadToJson(AuthPayload instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'expires_in': instance.expires_in,
      'token_type': instance.token_type,
    };

SignInArguments _$SignInArgumentsFromJson(Map<String, dynamic> json) {
  return SignInArguments(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$SignInArgumentsToJson(SignInArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

Brands _$BrandsFromJson(Map<String, dynamic> json) {
  return Brands()
    ..brands = (json['brands'] as List)
        ?.map(
            (e) => e == null ? null : Brand.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BrandsToJson(Brands instance) => <String, dynamic>{
      'brands': instance.brands?.map((e) => e?.toJson())?.toList(),
    };

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return Brand()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
