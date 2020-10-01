import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/categories/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/general/graphql_api.dart';

import 'error/api_error_helper.dart';

class GeneralApiManager extends BaseApiManager {
  static Future<void> brandsApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .query(QueryOptions(documentNode: BrandsQuery().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(BrandList(Brands$Query.fromJson(result.data).brands));
    }
  }

  static Future<void> sliderApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .query(QueryOptions(documentNode: SlidersQuery().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(SliderList(Sliders$Query.fromJson(result.data).sliders));
    }
  }

  static Future<void> categoriesApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .query(QueryOptions(documentNode: CategoriesQuery().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(
          CategoriesList(Categories$Query.fromJson(result.data).categories));
    }
  }
}
