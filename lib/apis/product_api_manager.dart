import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/products/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/ratings/graphql_api.dart';

import 'error/api_error_helper.dart';

class ProductApiManager extends BaseApiManager {
  static Future<void> productsApi(
      int first, int page, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables: ProductsArguments(first: first, page: page).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ProductsPaginatorWrapper(
          Products$Query.fromJson(result.data).products));
    }
  }

  static Future<void> productByCategoryIdApi(int first, int page,
      String categoryId, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables:
            ProductsArguments(first: first, page: page, catId: [categoryId])
                .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ProductsPaginatorWrapper(
          Products$Query.fromJson(result.data).products));
    }
  }

  static Future<void> productDetailsApi(
      String productId, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables: ProductsArguments(first: 1, page: 1, productsId: productId)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ProductModel(
          Products$Query.fromJson(result.data).products.data.first));
    }
  }

  static Future<void> productsByNameApi(
      int first, int page, String name, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables:
            ProductsArguments(first: first, page: page, name: name).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ProductsPaginatorWrapper(
          Products$Query.fromJson(result.data).products));
    }
  }

  static Future<void> productsByOfferApi(
      int first, int page, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables:
            ProductsArguments(first: first, page: page, offer: true).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(ProductsPaginatorWrapper(
          Products$Query.fromJson(result.data).products));
    }
  }

  static Future<void> relatedProductsByIdApi(
      String id, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: RelatedProductsQuery().document,
        variables: RelatedProductsArguments(id: id).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(RelatedProductsList(
          RelatedProducts$Query.fromJson(result.data).relatedProducts));
    }
  }

  static Future<void> reviewsForProductApi(int first, int page,
      String productsId, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: RatingsQuery().document,
        variables:
            RatingsArguments(first: first, page: page, productsId: productsId)
                .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(
          RatingPaginatorWrapper(Ratings$Query.fromJson(result.data).ratings));
    }
  }

  static Future<void> newProductApi(
      int first,
      int page,
      SortOrder order,
      ProductsOrderByColumn productsOrderByColumn,
      Function success,
      Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: OrderProductsQuery().document,
        variables: OrderProductsArguments(
          first: first,
          page: page,
          orderType: order,
          fieldOfOrder: productsOrderByColumn,
        ).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(OrderProductsWrapper(
          OrderProducts$Query.fromJson(result.data).products));
    }
  }
}
