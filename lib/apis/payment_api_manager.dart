import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/payment/graphql_api.dart';

import 'error/api_error_helper.dart';

class PaymentApiManager extends BaseApiManager {
  static Future<void> placeCreditCardOrderApi(String addressId,
      String voucherId, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: PlaceCreditCardOrderMutation().document,
        variables: PlaceCreditCardOrderArguments(
                addressId: addressId, voucherId: voucherId)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(PlaceCreditCardOrder$Mutation.fromJson(result.data)
          .placeCreditCardOrder);
    }
  }
}
