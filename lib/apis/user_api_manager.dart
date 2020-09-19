import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/apis/error/api_error_helper.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/orders/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.dart';

class UserApiManager extends BaseApiManager {
  static Future<void> refreshTokenApi(
      String token, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: RefreshTokenQuery().document,
        variables: RefreshTokenArguments(token: token).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(AuthPayloadRefreshToken(
          RefreshToken.fromJson(result.data).refreshToken));
    }
  }

  static Future<void> updateProfileApi(
      String name, String mobile, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: UpdateProfileQuery().document,
        variables:
            UpdateProfileArguments(name: name, mobile: mobile).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(UpdateProfile.fromJson(result.data).updateProfile);
    }
  }

  static Future<void> myProfileApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProfileQuery().document,
        fetchPolicy: FetchPolicy.noCache));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(UserMyProfile(Profile.fromJson(result.data).profile));
    }
  }

  static Future<void> allOrdersApi(
      int first, int page, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: OrdersQuery().document,
        variables: OrdersArguments(first: first, page: page).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(Orders.fromJson(result.data).orders);
    }
  }
}
