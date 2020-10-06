// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUp$Mutation$User _$SignUp$Mutation$UserFromJson(Map<String, dynamic> json) {
  return SignUp$Mutation$User()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..mobile = json['mobile'] as String;
}

Map<String, dynamic> _$SignUp$Mutation$UserToJson(
        SignUp$Mutation$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
    };

SignUp$Mutation _$SignUp$MutationFromJson(Map<String, dynamic> json) {
  return SignUp$Mutation()
    ..register = json['register'] == null
        ? null
        : SignUp$Mutation$User.fromJson(
            json['register'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignUp$MutationToJson(SignUp$Mutation instance) =>
    <String, dynamic>{
      'register': instance.register?.toJson(),
    };

ResetPassword$Mutation _$ResetPassword$MutationFromJson(
    Map<String, dynamic> json) {
  return ResetPassword$Mutation()
    ..resetPassword = json['resetPassword'] as bool;
}

Map<String, dynamic> _$ResetPassword$MutationToJson(
        ResetPassword$Mutation instance) =>
    <String, dynamic>{
      'resetPassword': instance.resetPassword,
    };

Logout$Mutation _$Logout$MutationFromJson(Map<String, dynamic> json) {
  return Logout$Mutation()..logout = json['logout'] as bool;
}

Map<String, dynamic> _$Logout$MutationToJson(Logout$Mutation instance) =>
    <String, dynamic>{
      'logout': instance.logout,
    };

ForgetPassword$Mutation _$ForgetPassword$MutationFromJson(
    Map<String, dynamic> json) {
  return ForgetPassword$Mutation()
    ..forgetPassword = json['forgetPassword'] as bool;
}

Map<String, dynamic> _$ForgetPassword$MutationToJson(
        ForgetPassword$Mutation instance) =>
    <String, dynamic>{
      'forgetPassword': instance.forgetPassword,
    };

SignIn$Mutation$AuthPayload _$SignIn$Mutation$AuthPayloadFromJson(
    Map<String, dynamic> json) {
  return SignIn$Mutation$AuthPayload()
    ..accessToken = json['access_token'] as String
    ..refreshToken = json['refresh_token'] as String
    ..expiresIn = json['expires_in'] as int
    ..tokenType = json['token_type'] as String;
}

Map<String, dynamic> _$SignIn$Mutation$AuthPayloadToJson(
        SignIn$Mutation$AuthPayload instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
    };

SignIn$Mutation _$SignIn$MutationFromJson(Map<String, dynamic> json) {
  return SignIn$Mutation()
    ..login = json['login'] == null
        ? null
        : SignIn$Mutation$AuthPayload.fromJson(
            json['login'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignIn$MutationToJson(SignIn$Mutation instance) =>
    <String, dynamic>{
      'login': instance.login?.toJson(),
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
