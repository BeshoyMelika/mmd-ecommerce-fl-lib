import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
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
      success(PlaceCreditCardOrderModel(
          PlaceCreditCardOrder$Mutation.fromJson(result.data)
              .placeCreditCardOrder));
    }
  }

  static Future<void> placeCashOrderApi(String addressId, String voucherId,
      Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: PlaceCashOnDeliveryOrderMutation().document,
        variables: PlaceCashOnDeliveryOrderArguments(
                addressId: addressId, voucherId: voucherId)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(PlaceCashOnDeliveryOrder$Mutation.fromJson(result.data)
          .placeCashOnDeliveryOrder);
    }
  }

  static Future<void> orderBillingStatusApi(
      String merchantReference, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: GetOrderBillingStatusQuery().document,
        variables:
            GetOrderBillingStatusArguments(merchantReference: merchantReference)
                .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(GetOrderBillingStatus$Query.fromJson(result.data)
          .getOrderBillingStatus);
    }
  }

  static Future<void> savedCardsApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .query(QueryOptions(documentNode: SavedCardsApiQuery().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(SavedCardList(SavedCardsApi$Query.fromJson(result.data).getSavedCards));
    }
  }
}
