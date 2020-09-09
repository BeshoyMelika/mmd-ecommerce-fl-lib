import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

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
  var token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5IiwianRpIjoiMDU2MTM0NTc5MjU3MGUyMDRjNTI0NjZmYmY3OTVlNmFhNjJmZTJhZjdhNDg2MWE1MDQ3Y2JlZTBkY2U3ZWU2NDAzMjk5NDFjZDdiMzEwNWYiLCJpYXQiOjE1OTk1OTI1NDYsIm5iZiI6MTU5OTU5MjU0NiwiZXhwIjoxNjMxMTI4NTQ2LCJzdWIiOiI2Iiwic2NvcGVzIjpbIioiXX0.klDKrtTsMeNH4-4n-CG7cLJedCwYeeSqd7ZbZe6t0-V3ZHjznhidmLaH5wUBqT54ClixOO6qVLnSvckc_QNrci1UcZy6XJQ_aMxX2ytllLqhhMBp8zp3V_lMJmutDN6txhEWqmACwQFz_-mKzyilKznquQYo0WD2HtBLkPQOy4Uf90T0VMdL684TRG2h8bJqNXB6wQ-jEtE4P8ibCEXVIUckM5SGmMJbdWDOS6I3jsR0rrehuVuHD0CTApbTy-3VqlCl85tHcNhs8IA_B6MdDgrNNc3_wo0HmF9wINuG9Mmyx85kbpjoKmXj3TJSMT4usc9Hcn7MDLTEn_McDh5QgZeY9RIpqxvvbNhRK6mII7WGG6R9fNfnnGoEMmLqNXZKy5fnug7bxmSXbNEt5WXKICgV2EMXZ4voRSEcFmZOezi6pvzwp8vR2xbRMaqegIG_QGo98VIZe8l9r6or4R02tFGr1jwpa0p6F3ksn-pIAEjAvCJotusj5sNdmNC-sYPML4WKdZJFUOflqXzJ2lm6iCbuk6AQGKOd3-EL5W1G3xUJhGosw3is7lBs3Xtp1fQBWBzwwuxcaMixXDTnSTwAwfu3J-i-pRmDqOzuy2-1aqz04pSQ6fTA9NRMJvcT76HyAC-aWOFpew6uEhoMFJsfGBuo1Fcj430uHKqwc3Gsb0E";
  MmdECommerceFlLib.submitTokeAndTokenType("$token", "Bearer");

  UserApiManager.myProfile((UserMyProfile user) {
    print("=========================================");
    print("Success get my profile");
    print(user.user.id);
    print(user.user.name);
    print(user.user.mobile);
  }, (ApiErrorModel error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print(error.errorCode);
    print(error.errorMessage);
    print("Fail get my profile");
  });
}

callRefreshTokenApi(String refreshToken) {
  // var token = "def50200ff07466059c5bfbf0689902c06002bb5990e9c4ea0d8750c51e07b42ae1e86072c400ae807c7e06e9cac45864abb0c7a910ce9eb2ad629e495a73caca9fd32c3ee756580f62b883008ef03eb5dc91d48724ec4ffe595c4a72d832d8420eac5cced2a6e000ebd7bf2db21534970a8eca26121e760b7dfdda3652416d2c4f756f5eaa46605a7b6377238257f3b3fee3dff2763e227b2c8657fb46c549e76a6e825af62db5d5c77813eac04162a7118145890ec2182d4603dcce28e24d910a148dc50345ed199ab851e59f939c0d27205458fb823e949d1af4af461922c1bf75cccc8f680c740680e50d7242f50128f2cc1b184ae6a06da2f17ea7a7eb8203d37fff5aab86abaab64e9ea9d661985fd015cc393872bea47f633ce6baf91e4be0c439df984452c74359619b2e764bf4e7d073bfd120fca3b5bda6b3777a4f4fddb0b72590dacf9f7ea661c415b724da74ddc0113f48c6ff1ecd6de4567c6a077f0e6";
  UserApiManager.refreshTokenApi(refreshToken,
      (AuthPayloadRefreshToken authPayload) {
    print("=========================================");
    print("Success Refresh Token");
    print(authPayload.authPayload.access_token);
    print("\n ========================================= \n");
    print(authPayload.authPayload.refresh_token);
    print("\n ========================================= \n");
  }, () {
    print("\n ========================================= \n");
    print("Fail 9999999999999999999");
    print("\n ========================================= \n");
  });
}
