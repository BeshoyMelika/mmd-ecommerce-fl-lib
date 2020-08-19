// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageBySlug _$PageBySlugFromJson(Map<String, dynamic> json) {
  return PageBySlug()
    ..pageBySlug = json['pageBySlug'] == null
        ? null
        : Page.fromJson(json['pageBySlug'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PageBySlugToJson(PageBySlug instance) =>
    <String, dynamic>{
      'pageBySlug': instance.pageBySlug?.toJson(),
    };

Page _$PageFromJson(Map<String, dynamic> json) {
  return Page()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..slug = json['slug'] as String
    ..content = json['content'] as String;
}

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'content': instance.content,
    };

PageBySlugArguments _$PageBySlugArgumentsFromJson(Map<String, dynamic> json) {
  return PageBySlugArguments(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PageBySlugArgumentsToJson(
        PageBySlugArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
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
