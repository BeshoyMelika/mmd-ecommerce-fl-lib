import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.dart';

class AuthApiManager extends BaseApiManager {
  static Future<void> loginApi(
      String email, String password, Function success, Function fail) async {
    var result = await BaseApiManager.client().mutate(MutationOptions(
        documentNode: SignInQuery().document,
        variables: SignInArguments(email: email, password: password).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(SignIn.fromJson(result.data).login);
    }
  }

  static Future<void> registerApi(String name, String email, String password,
      Function success, Function fail) async {
    var result = await BaseApiManager.client().mutate(MutationOptions(
        documentNode: SignUpQuery().document,
        variables: SignUpArguments(name: name, email: email, password: password)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(UserRegister(SignUp.fromJson(result.data).register));
    }
  }

  static Future<void> forgetPasswordApi(
      String email, Function success, Function fail) async {
    var result = await BaseApiManager.client().mutate(MutationOptions(
        documentNode: ForgetPasswordQuery().document,
        variables: ForgetPasswordArguments(email: email).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(ForgetPassword.fromJson(result.data).forgetPassword);
    }
  }

  static Future<void> resetPasswordApi(String email, String newPassword,
      String codeOrToken, Function success, Function fail) async {
    var result = await BaseApiManager.client().mutate(MutationOptions(
        documentNode: ResetPasswordQuery().document,
        variables: ResetPasswordArguments(
                email: email, newPassword: newPassword, token: codeOrToken)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(ResetPassword.fromJson(result.data).resetPassword);
    }
  }
}
