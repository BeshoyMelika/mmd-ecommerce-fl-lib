import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

class ProductApiManager extends BaseApiManager {
  static Future<void> getAllProductApi(
      int first, int page, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables: ProductsArguments(first: first, page: page).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(Products.fromJson(result.data).products);
    }
  }

  // static Future<void> getProductByCategoryIdApi(
  //     int first, int page, categoryId, Function success, Function fail) async {
  //   var result = await BaseApiManager.mainClient().query(QueryOptions(
  //       documentNode: ProductsQuery().document,
  //       variables:
  //           ProductsArguments(first: first, page: page, categoryId: categoryId)
  //               .toJson()));
  //   if (result.hasException) {
  //     fail(result);
  //   } else {
  //     success(Products.fromJson(result.data).products);
  //   }
  // }

  static Future<void> getProductByNameApi(
      int first, int page, String name, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables:
            ProductsArguments(first: first, page: page, name: name).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(Products.fromJson(result.data).products);
    }
  }
}
