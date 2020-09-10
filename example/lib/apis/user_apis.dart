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
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5IiwianRpIjoiZTFlMmZlZjE4Mjg1ZjA3MmFiOGYwOWQwMTAzZjEyMWZmNzNjNWQ2NzczMzM4YmUxNWFjYTI3MGUxNDgwYmI0OGZmZmRjZTE2NjcxOTZhMTYiLCJpYXQiOjE1OTk2ODgzNDcsIm5iZiI6MTU5OTY4ODM0NywiZXhwIjoxNjMxMjI0MzQ3LCJzdWIiOiI2Iiwic2NvcGVzIjpbIioiXX0.a-9qXWaRNSsSiB09sCZV9TkTmEgcvbLXpP5dqtrqUkD1mbY_KTT8v8-Id2QuWlG5gytZSwKydS0R6JnL2I1LIEIBmXgOWG7I8VgS--NL6-cMW6mQobJn0B92YHKJhjMRKwW5pnQ_doVmRrwhZuZ9XNAvXHIzBdGnVUYr6kp4wmRh4KU8F3D5ojrDAOL6xlbwc9RSPyoBllEuzzRBqZJ_snel2o18nN2NX3TCQHboIgZgPD5PoC2nQ883o-zfLPxhwkExewzg6-eaJlFX0BeZXjmHumVoFCyNGn0Bbw_M8dH6p9sS3Xf8-r0l6BNmG3UpwhBWrvV9xZCPZ0nVsT8sOfvnTD30ZQqqIkbJu25F99W6r2jvWpLJPrN-gaxG2afuskubdeaCC2rQ4jmPi0m8nA9zTHjJvfCQzkOU90R3fvGFo73GSR78QYAVbEF0pLmMXP4-R0GhNjYQaUqOlxwZFe4wlYLzRC3TIbImoCsVkitZWUuQzgNJAtj9nTEAzw_pUzeE_qnqeA670Ivbn6vpCB-JYcYk7qPpps7gYyMMFfswQYZS55Kp-SsY-1r0sUQkNsxYnSMzwFUQ6-glC4WlZ0qXmF6vvUX8YBfrYkl_eV5y4BmL_nBz1auiebORIO4xrSr99JYzBBOrjfF7t6pAur8PaYaBmBG22eVuYi7WBX0";
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
    print(authPayload.authPayload.device_token);
    print("\n ========================================= \n");
    print(authPayload.authPayload.refresh_token);
    print("\n ========================================= \n");
  }, () {
    print("\n ========================================= \n");
    print("Fail 9999999999999999999");
    print("\n ========================================= \n");
  });
}
