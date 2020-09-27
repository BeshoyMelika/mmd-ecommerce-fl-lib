import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callLoginApi() async {
  await AuthApiManager.loginApi("test@mail.com", "123456789", "123",
      (SignIn$Mutation$AuthPayload authPayload) async {
    MmdECommerceFlLib.submitTokeAndTokenType(
        authPayload.accessToken, authPayload.tokenType);
  }, (ApiErrorModel error) {});
}

callRegisterApi() {
  AuthApiManager.registerApi("mmd10", "rovox4067sri@ka0525.com", "123456",
      (SignUp$Mutation$User register) {}, (ApiErrorModel error) {});
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
