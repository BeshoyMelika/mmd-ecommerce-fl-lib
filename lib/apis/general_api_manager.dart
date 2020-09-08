import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/general/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/products/graphql_api.dart';

class GeneralApiManager extends BaseApiManager {
  static Future<void> brandsApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .query(QueryOptions(documentNode: BrandsQuery().document));
    if (result.hasException) {
      fail(result);
    } else {
      success(Brands.fromJson(result.data).brands);
    }
  }

  static Future<void> sliders(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .query(QueryOptions(documentNode: SlidersQuery().document));
    if (result.hasException) {
      fail(result);
    } else {
      success(Sliders.fromJson(result.data).sliders);
    }
  }

  static Future<void> getAllCategoriesApi(
      Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .query(QueryOptions(documentNode: CategoriesQuery().document));
    if (result.hasException) {
      fail(result);
    } else {
      success(Categories.fromJson(result.data).categories);
    }
  }
}
