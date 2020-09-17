import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callRegisterApi() {
  AuthApiManager.registerApi("mmd10", "rovox4067s@rika0525.com", "123456",
      (UserRegister user) {}, (QueryResult x) {});
}

callForgetPasswordApi(String email) {
  AuthApiManager.forgetPasswordApi(
      email, (bool success) {}, (QueryResult error) {});
}

callResetPasswordApi(String email, String newPass, String code) {
  AuthApiManager.resetPasswordApi(
      email, newPass, code, (bool success) {}, (QueryResult error) {});
}

logout() {
  AuthApiManager.logoutApi((bool success) {}, (QueryResult error) {});
}
