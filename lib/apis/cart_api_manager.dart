import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.dart';

class CartApiManager extends BaseApiManager {
  static Future<void> addToCart(
      String productId, int quantity, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: AddToCartQuery().document,
        variables: AddToCartArguments(productId: productId, quantity: quantity)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(AddToCart.fromJson(result.data).addToCart);
    }
  }

  static Future<void> getCart(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: GetCartQuery().document,
        fetchPolicy: FetchPolicy.noCache));
    if (result.hasException) {
      fail(result);
    } else {
      success(GetCart.fromJson(result.data).cart);
    }
  }

  static Future<void> getVoucherByCode(
      String code, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: GetVoucherByCodeQuery().document,
        variables: GetVoucherByCodeArguments(code: code).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(GetVoucherByCode.fromJson(result.data).getVoucherByCode);
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
      fail(result);
    } else {
      success(ShippingFees.fromJson(result.data).shippingFees);
    }
  }
}
