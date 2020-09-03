import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.dart';

class CartApiManager extends BaseApiManager {
  static Future<void> addToCArt(
      int productId, int quantity, Function success, Function fail) async {
    var result = await BaseApiManager.client().query(QueryOptions(
        documentNode: AddToCartQuery().document,
        variables: AddToCartArguments(productId: productId, quantity: quantity)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(AddToCart.fromJson(result.data).addToCart);
    }
  }
}
