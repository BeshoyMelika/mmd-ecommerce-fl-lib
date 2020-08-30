import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.dart';

class UserApiManager extends BaseApiManager {
  static Future<void> refreshTokenApi(
      String token, Function success, Function fail) async {
    var result = await BaseApiManager.client().mutate(MutationOptions(
        documentNode: RefreshTokenQuery().document,
        variables: RefreshTokenArguments(token: token).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(RefreshToken.fromJson(result.data).refreshToken);
    }
  }

  static Future<void> updateProfile(
      String name, String mobile, Function success, Function fail) async {
    var result = await BaseApiManager.authClient().mutate(MutationOptions(
        documentNode: UpdateProfileQuery().document,
        variables:
            UpdateProfileArguments(name: name, mobile: mobile).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(UpdateProfile.fromJson(result.data).updateProfile);
    }
  }

  static Future<void> myProfile(Function success, Function fail) async {
    var result = await BaseApiManager.authClient()
        .query(QueryOptions(documentNode: ProfileQuery().document));
    if (result.hasException) {
      fail(result);
    } else {
      success(UserMyProfile(Profile.fromJson(result.data).profile));
    }
  }
}
