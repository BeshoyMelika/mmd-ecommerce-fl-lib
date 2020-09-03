import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.dart';

class CartApiManager extends BaseApiManager {
  static Future<void> addToCart(
      String productId, int quantity, Function success, Function fail) async {
    var result = await BaseApiManager.authClient().query(QueryOptions(
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
    var result = await BaseApiManager.authClient()
        .query(QueryOptions(documentNode: GetCartQuery().document));
    if (result.hasException) {
      fail(result);
    } else {
      success(GetCart.fromJson(result.data).cart);
    }
  }
}
