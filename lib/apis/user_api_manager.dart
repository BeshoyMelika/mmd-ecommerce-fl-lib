import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
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
}
