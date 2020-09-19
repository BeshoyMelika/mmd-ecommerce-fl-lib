import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

categoriesApi() async {
  await GeneralApiManager.categoriesApi(
      (List<Categories$Query$Category> list) {}, (ApiErrorModel error) {});
}

productApi() async {
  await ProductApiManager.productsApi(10, 1,
      (Products$Query$ProductPaginator item) {}, (ApiErrorModel error) {});
}

productByCategoryIdApi() async {
  await ProductApiManager.productByCategoryIdApi(10, 1, "1",
      (Products$Query$ProductPaginator item) {}, (ApiErrorModel error) {});
}

newProductApi() async {
  await ProductApiManager.newProductApi(
      10,
      1,
      SortOrder.desc,
      ProductsOrderByColumn.id,
      (OrderProducts$Query$ProductPaginator item) {},
      (ApiErrorModel error) {});
}

getProductDetailsApi() async {
  await ProductApiManager.productDetailsApi(
      "1",
      (Products$Query$ProductPaginator$Product item) {},
      (ApiErrorModel error) {});
}

productByNameApi() async {
  await ProductApiManager.productsByNameApi(10, 1, "ad",
      (Products$Query$ProductPaginator item) {}, (ApiErrorModel error) {});
}

relatedProductByIdApi() async {
  await ProductApiManager.relatedProductsByIdApi("1",
      (List<RelatedProducts$Query$Product> items) {}, (ApiErrorModel error) {});
}

getRatingsForProductApi() async {
  await ProductApiManager.reviewsForProductApi(10, 1, "1",
      (Ratings$Query$RatingPaginator item) {}, (ApiErrorModel error) {});
}
