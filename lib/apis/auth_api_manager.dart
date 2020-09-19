import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.dart';
import '../mmd_ecommerce.dart';
import 'error/api_error_helper.dart';

class AuthApiManager extends BaseApiManager {
  static Future<void> loginApi(String email, String password,
      String deviceToken, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: SignInMutation().document,
        variables: SignInArguments(
                email: email, password: password, deviceToken: deviceToken)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(SignIn$Mutation.fromJson(result.data).login);
    }
  }

  static Future<void> registerApi(String name, String email, String password,
      Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: SignUpMutation().document,
        variables: SignUpArguments(name: name, email: email, password: password)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(SignUp$Mutation.fromJson(result.data).register);
    }
  }

  static Future<void> forgetPasswordApi(
      String email, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: ForgetPasswordMutation().document,
        variables: ForgetPasswordArguments(email: email).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ForgetPassword$Mutation.fromJson(result.data).forgetPassword);
    }
  }

  static Future<void> resetPasswordApi(String email, String newPassword,
      String codeOrToken, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: ResetPasswordMutation().document,
        variables: ResetPasswordArguments(
                email: email, newPassword: newPassword, token: codeOrToken)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ResetPassword$Mutation.fromJson(result.data).resetPassword);
    }
  }

  static Future<void> logoutApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .mutate(MutationOptions(documentNode: LogoutMutation().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(Logout$Mutation.fromJson(result.data).logout);
    }
  }
}
