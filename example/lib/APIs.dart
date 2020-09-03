import 'package:mmd_ecommerce_fl_lib/generatedql/address/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((List<Brand> brands) {
    print("=========================================");
    print("Success Brand API");
    print(brands);
  }, () {});
}

callRegisterApi() {
  AuthApiManager.registerApi("mmd10", "rovox40676@rika0525.com", "123456",
      (UserRegister user) {
    print("=========================================");
    print("user email : " + user.user.email + "name :" + user.user.name);
    print("Success register API");
  }, (QueryResult x) {
    print("error");
  });
}

callUpdateProfileApi(String name, String mobile) {
  UserApiManager.updateProfile(name, mobile, (bool isUpdated) {
    print("=========================================");
    print("Success update profile $isUpdated");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail update profile");
  });
}

callMyProfileApi() {
  UserApiManager.myProfile((UserMyProfile user) {
    print("=========================================");
    print("Success get my profile");
    print(user.user.id);
    print(user.user.name);
    print(user.user.mobile);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get my profile");
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

callRefreshTokenApi(String refreshToken) {
  // var token = "def50200ff07466059c5bfbf0689902c06002bb5990e9c4ea0d8750c51e07b42ae1e86072c400ae807c7e06e9cac45864abb0c7a910ce9eb2ad629e495a73caca9fd32c3ee756580f62b883008ef03eb5dc91d48724ec4ffe595c4a72d832d8420eac5cced2a6e000ebd7bf2db21534970a8eca26121e760b7dfdda3652416d2c4f756f5eaa46605a7b6377238257f3b3fee3dff2763e227b2c8657fb46c549e76a6e825af62db5d5c77813eac04162a7118145890ec2182d4603dcce28e24d910a148dc50345ed199ab851e59f939c0d27205458fb823e949d1af4af461922c1bf75cccc8f680c740680e50d7242f50128f2cc1b184ae6a06da2f17ea7a7eb8203d37fff5aab86abaab64e9ea9d661985fd015cc393872bea47f633ce6baf91e4be0c439df984452c74359619b2e764bf4e7d073bfd120fca3b5bda6b3777a4f4fddb0b72590dacf9f7ea661c415b724da74ddc0113f48c6ff1ecd6de4567c6a077f0e6";
  UserApiManager.refreshTokenApi(refreshToken,
      (AuthPayloadRefreshToken authPayload) {
    print("=========================================");
    print("Success Refresh Token");
    print(authPayload.authPayload.accessToken);
    print("\n ========================================= \n");
    print(authPayload.authPayload.refreshToken);
    print("\n ========================================= \n");
  }, () {
    print("\n ========================================= \n");
    print("Fail 9999999999999999999");
    print("\n ========================================= \n");
  });
}

getAllAddress() async {
  await UserApiManager.getAllAddress(5, 1,
      (UserAddressPaginator addressPaginator) {
    print("=========================================");
    print("Success get my Address");
    print(addressPaginator.data.length);
    print(addressPaginator.data[0].id);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get my Address");
  });
}

createAddress() async {
  await UserApiManager.createAddress("beshoy", "melika", "1", "test info",
      "addition info test", "012", "30.4", "27.3", (bool success) {
    print("=========================================");
    print("Success Create Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Create Address api");
    print(error.exception);
  });
}

updateAddress() async {
  await UserApiManager.updateAddress("8", "beshoy", "melika", "1", "test info",
      "addition info test", "012", "30.4", "27.3", (bool success) {
    print("=========================================");
    print("Success Update Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Update Address api");
    print(error.exception);
  });
}

deleteAddress() async {
  await UserApiManager.deletaAddress("8", (bool success) {
    print("=========================================");
    print("Success Delete Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Delete Address api");
    print(error.exception);
  });
}

sliderApi() async {
  await GeneralApiManager.sliders((List<Slider> list) {
    print("=========================================");
    print("Success sliders api ");
    print(list.length);
    print(list[0].title);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail sliders api");
    print(error.exception);
  });
}

addToCard() async {
  await CartApiManager.addToCart("2", 2, (bool success) {
    print("=========================================");
    print("Success addTocard api  $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail addTocard api");
    print(error.exception);
  });
}

getCard() async {
  await CartApiManager.getCart((Cart cart) {
    print("=========================================");
    print("Success getCart api  $cart");
    print(cart.items.length);
    print(cart.total);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail getCart api");
    print(error.exception);
  });
}

categoriesApi() async {
  await GeneralApiManager.getAllCategoriesApi((List<Category> list) {
    print("=========================================");
    print("Success sliders api ");
    print(list.length);
    print(list[0].name);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail sliders api");
    print(error.exception);
  });
}
