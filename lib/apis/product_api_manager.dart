import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/custom_scalars_model.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/order_products/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/related_product/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

class ProductApiManager extends BaseApiManager {
  static Future<void> productsApi(
      int first, int page, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables: ProductsArguments(first: first, page: page).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(ProductPaginatorModel(Products.fromJson(result.data).products));
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
      fail(result);
    } else {
      success(ProductPaginatorModel(Products.fromJson(result.data).products));
    }
  }

  static Future<void> productDetailsApi(
      String productId, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables: ProductsArguments(first: 1, page: 1, productsId: productId)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(ProductDetailsModel(
          ProductPaginatorModel(Products.fromJson(result.data).products)
              .productPaginator
              .data
              .first));
    }
  }

  static Future<void> productsByNameApi(
      int first, int page, String name, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProductsQuery().document,
        variables:
            ProductsArguments(first: first, page: page, name: name).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(ProductPaginatorModel(Products.fromJson(result.data).products));
    }
  }

  static Future<void> relatedProductsByIdApi(
      String id, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: RelatedProductsQuery().document,
        variables: RelatedProductsArguments(id: id).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(RelatedProductsModel(
          RelatedProducts.fromJson(result.data).relatedProducts));
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
      fail(result);
    } else {
      success(RatingPaginatorModel(Ratings.fromJson(result.data).ratings));
    }
  }

  static Future<void> newProductApi(
      int first,
      int page,
      SortOrder orderType,
      ProductsOrderByColumn fieldOfOrder,
      Function success,
      Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: OrderProductsQuery().document,
        variables: OrderProductsArguments(
          first: first,
          page: page,
          orderType: orderType.toString(),
          fieldOfOrder: fieldOfOrder.toString(),
        ).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(NewProductsModel(OrderProducts.fromJson(result.data).products));
    }
  }
}
