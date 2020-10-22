import 'dart:convert';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/payment/graphql_api.dart';

import 'base/api_keys.dart';
import 'error/api_error_helper.dart';
import 'package:http/http.dart' as http; // to avoid crashing with names ..

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
        fetchPolicy: FetchPolicy.noCache,
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
        .query(QueryOptions(documentNode: SavedCardsQuery().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(
          SavedCardList(SavedCards$Query.fromJson(result.data).getSavedCards));
    }
  }

  static Future<void> placeSavedCreditCardOrderApi(
      String addressId,
      String voucherId,
      String savedCardId,
      String cvv,
      Function success,
      Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: PlaceSavedCreditCardOrderMutation().document,
        variables: PlaceSavedCreditCardOrderArguments(
          addressId: addressId,
          voucherId: voucherId,
          savedCardId: savedCardId,
          cardSecurityCode: cvv,
        ).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(PlaceSavedCreditCardOrderModel(
          PlaceSavedCreditCardOrder$Mutation.fromJson(result.data)
              .placeSavedCreditCardOrder));
    }
  }

  static Future<void> payFortOperationsApi(Map<String, dynamic> data,
      Function(Map) success, Function(String, String) fail) async {
    List<String> codeSuccess = ["14", "20"];

    await http
        .post(OPERATION_URL,
            headers: {
              "Accept": "application/json",
              "Content-Type": "application/json",
            },
            body: json.encode(data))
        .then((response) {
      Map extractedData = json.decode(response.body);
      if (response.statusCode == 200) {
        if (codeSuccess.contains(extractedData["status"])) {
          success(extractedData);
        } else {
          fail(extractedData["response_message"], extractedData["status"]);
        }
      } else {
        fail(response.body, response.statusCode.toString());
      }
    }).catchError((onError) {
      fail(onError.toString(), "500");
    });
  }
}
