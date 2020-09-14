import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callRegisterApi() {
  AuthApiManager.registerApi("mmd10", "rovox4067s@rika0525.com", "123456",
      (UserRegister user) {
    print("=========================================");
    print("user email : " + user.user.email + "name :" + user.user.name);
    print("Success register API");
  }, (QueryResult x) {
    print("error");
  });
}

callForgetPasswordApi(String email) {
  AuthApiManager.forgetPasswordApi(email, (bool success) {
    print("=========================================");
    print("Success forget api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail forget api");
  });
}

callResetPasswordApi(String email, String newPass, String code) {
  AuthApiManager.resetPasswordApi(email, newPass, code, (bool success) {
    print("=========================================");
    print("Success Reset pass api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail reset pass api");
    print(error.data);
  });
}

logout() {
  AuthApiManager.logoutApi((bool success) {
    print("=========================================");
    print("Success logout api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail logout api");
  });
}
