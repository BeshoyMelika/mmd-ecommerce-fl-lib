import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.dart';
import 'error/api_error_helper.dart';

class AuthApiManager extends BaseApiManager {
  static Future<void> loginApi(String email, String password,
      String deviceToken, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: SignInQuery().document,
        variables: SignInArguments(
                email: email, password: password, deviceToken: deviceToken)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(AuthPayloadLogin(SignIn.fromJson(result.data).login));
    }
  }

  static Future<void> registerApi(String name, String email, String password,
      Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: SignUpQuery().document,
        variables: SignUpArguments(name: name, email: email, password: password)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(UserRegister(SignUp.fromJson(result.data).register));
    }
  }

  static Future<void> forgetPasswordApi(
      String email, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: ForgetPasswordQuery().document,
        variables: ForgetPasswordArguments(email: email).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ForgetPassword.fromJson(result.data).forgetPassword);
    }
  }

  static Future<void> resetPasswordApi(String email, String newPassword,
      String codeOrToken, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: ResetPasswordQuery().document,
        variables: ResetPasswordArguments(
                email: email, newPassword: newPassword, token: codeOrToken)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ResetPassword.fromJson(result.data).resetPassword);
    }
  }

  static Future<void> logoutApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .mutate(MutationOptions(documentNode: LogoutQuery().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(Logout.fromJson(result.data).logout);
    }
  }
}
