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

ResetPassword _$ResetPasswordFromJson(Map<String, dynamic> json) {
  return ResetPassword()..resetPassword = json['resetPassword'] as bool;
}

Map<String, dynamic> _$ResetPasswordToJson(ResetPassword instance) =>
    <String, dynamic>{
      'resetPassword': instance.resetPassword,
    };

ResetPasswordArguments _$ResetPasswordArgumentsFromJson(
    Map<String, dynamic> json) {
  return ResetPasswordArguments(
    email: json['email'] as String,
    newPassword: json['newPassword'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$ResetPasswordArgumentsToJson(
        ResetPasswordArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
      'token': instance.token,
    };

ForgetPassword _$ForgetPasswordFromJson(Map<String, dynamic> json) {
  return ForgetPassword()..forgetPassword = json['forgetPassword'] as bool;
}

Map<String, dynamic> _$ForgetPasswordToJson(ForgetPassword instance) =>
    <String, dynamic>{
      'forgetPassword': instance.forgetPassword,
    };

ForgetPasswordArguments _$ForgetPasswordArgumentsFromJson(
    Map<String, dynamic> json) {
  return ForgetPasswordArguments(
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$ForgetPasswordArgumentsToJson(
        ForgetPasswordArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
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
    ..token_type = json['token_type'] as String
    ..device_token = json['device_token'] as String;
}

Map<String, dynamic> _$AuthPayloadToJson(AuthPayload instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'expires_in': instance.expires_in,
      'token_type': instance.token_type,
      'device_token': instance.device_token,
    };

SignInArguments _$SignInArgumentsFromJson(Map<String, dynamic> json) {
  return SignInArguments(
    email: json['email'] as String,
    password: json['password'] as String,
    deviceToken: json['deviceToken'] as String,
  );
}

Map<String, dynamic> _$SignInArgumentsToJson(SignInArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'deviceToken': instance.deviceToken,
    };
