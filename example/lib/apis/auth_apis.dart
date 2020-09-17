import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callRegisterApi() {
  AuthApiManager.registerApi("mmd10", "rovox4067sri@ka0525.com", "123456",
      (UserRegister user) {}, (ApiErrorModel error) {});
}

callForgetPasswordApi(String email) {
  AuthApiManager.forgetPasswordApi(
      email, (bool success) {}, (ApiErrorModel error) {});
}

callResetPasswordApi(String email, String newPass, String code) {
  AuthApiManager.resetPasswordApi(
      email, newPass, code, (bool success) {}, (ApiErrorModel error) {});
}

logout() {
  AuthApiManager.logoutApi((bool success) {}, (ApiErrorModel error) {});
}
