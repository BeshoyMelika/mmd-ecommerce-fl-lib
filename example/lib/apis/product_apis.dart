import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

categoriesApi() async {
  await GeneralApiManager.categoriesApi(
      (CategoriesList categoriesModel) {}, (ApiErrorModel error) {});
}

productApi() async {
  await ProductApiManager.productsApi(
      10, 1, (ProductsPaginatorWrapper item) {}, (ApiErrorModel error) {});
}

productByCategoryIdApi() async {
  await ProductApiManager.productByCategoryIdApi(
      10, 1, "1", (ProductsPaginatorWrapper item) {}, (ApiErrorModel error) {});
}

newProductApi() async {
  await ProductApiManager.newProductApi(
      10,
      1,
      SortOrder.desc,
      ProductsOrderByColumn.id,
      (OrderProductsWrapper item) {},
      (ApiErrorModel error) {});
}

getProductDetailsApi() async {
  await ProductApiManager.productDetailsApi(
      "1", (ProductModel item) {}, (ApiErrorModel error) {});
}

productByNameApi() async {
  await ProductApiManager.productsByNameApi(10, 1, "ad",
      (ProductsPaginatorWrapper item) {}, (ApiErrorModel error) {});
}

relatedProductByIdApi() async {
  await ProductApiManager.relatedProductsByIdApi(
      "1", (RelatedProductsList items) {}, (ApiErrorModel error) {});
}

getRatingsForProductApi() async {
  await ProductApiManager.reviewsForProductApi(
      10, 1, "1", (RatingPaginatorWrapper item) {}, (ApiErrorModel error) {});
}
