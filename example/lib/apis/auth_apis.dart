import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callLoginApi() async {
  await AuthApiManager.loginApi("test@mail.com", "123456789", "123",
      (AuthPayloadLoginModel userRegisterModel) async {
    MmdECommerceFlLib.submitTokeAndTokenType(
        userRegisterModel.authPayload.accessToken,
        userRegisterModel.authPayload.tokenType);
  }, (ApiErrorModel error) {});
}

callRegisterApi() {
  AuthApiManager.registerApi("mmd10", "rovox4067sri@ka0525.com", "123456",
      (UserRegisterModel register) {}, (ApiErrorModel error) {});
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
