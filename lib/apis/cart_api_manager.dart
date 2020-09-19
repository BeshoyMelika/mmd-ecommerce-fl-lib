import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.dart';
import 'error/api_error_helper.dart';

class CartApiManager extends BaseApiManager {
  static Future<void> addToCartApi(
      String productId, int quantity, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: AddToCartMutation().document,
        variables: AddToCartArguments(productId: productId, quantity: quantity)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(AddToCart$Mutation.fromJson(result.data).addToCart);
    }
  }

  static Future<void> cartDataApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: GetCartQuery().document,
        fetchPolicy: FetchPolicy.noCache));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(GetCart$Query.fromJson(result.data).cart);
    }
  }

  static Future<void> voucherByCodeApi(
      String code, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: GetVoucherByCodeQuery().document,
        variables: GetVoucherByCodeArguments(code: code).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(GetVoucherByCode$Query.fromJson(result.data).getVoucherByCode);
    }
  }

  static Future<void> shippingFeesApi(String addressId, String voucherId,
      Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ShippingFeesQuery().document,
        variables:
            ShippingFeesArguments(addressId: addressId, voucherId: voucherId)
                .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ShippingFees$Query.fromJson(result.data).shippingFees);
    }
  }
}
