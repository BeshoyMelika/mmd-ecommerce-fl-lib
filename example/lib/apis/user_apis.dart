import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callUpdateProfileApi(String name, String mobile) {
  UserApiManager.updateProfileApi(
      name, mobile, (bool isUpdated) {}, (ApiErrorModel error) {});
}

callMyProfileApi() {
  UserApiManager.myProfileApi((UserMyProfile user) {
    //

    //
    //
    //
  }, (ApiErrorModel error) {
    //
    //
    //
  });
}

callRefreshTokenApi(String refreshToken) {
  // var token = "def50200ff07466059c5bfbf0689902c06002bb5990e9c4ea0d8750c51e07b42ae1e86072c400ae807c7e06e9cac45864abb0c7a910ce9eb2ad629e495a73caca9fd32c3ee756580f62b883008ef03eb5dc91d48724ec4ffe595c4a72d832d8420eac5cced2a6e000ebd7bf2db21534970a8eca26121e760b7dfdda3652416d2c4f756f5eaa46605a7b6377238257f3b3fee3dff2763e227b2c8657fb46c549e76a6e825af62db5d5c77813eac04162a7118145890ec2182d4603dcce28e24d910a148dc50345ed199ab851e59f939c0d27205458fb823e949d1af4af461922c1bf75cccc8f680c740680e50d7242f50128f2cc1b184ae6a06da2f17ea7a7eb8203d37fff5aab86abaab64e9ea9d661985fd015cc393872bea47f633ce6baf91e4be0c439df984452c74359619b2e764bf4e7d073bfd120fca3b5bda6b3777a4f4fddb0b72590dacf9f7ea661c415b724da74ddc0113f48c6ff1ecd6de4567c6a077f0e6";
  UserApiManager.refreshTokenApi(refreshToken,
      (AuthPayloadRefreshToken authPayload) {}, (ApiErrorModel error) {});
}

getAllOrdersApi() {
  UserApiManager.allOrdersApi(
      20, 1, (OrderPaginator orders) {}, (ApiErrorModel error) {});
}
