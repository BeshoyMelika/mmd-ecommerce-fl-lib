import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

categoriesApi() async {
  await GeneralApiManager.categoriesApi(
      (List<Category> list) {}, (ApiErrorModel error) {});
}

productApi() async {
  await ProductApiManager.productsApi(
      10, 1, (ProductPaginatorModel item) {}, (ApiErrorModel error) {});
}

productByCategoryIdApi() async {
  await ProductApiManager.productByCategoryIdApi(
      10, 1, "1", (ProductPaginatorModel item) {}, (ApiErrorModel error) {});
}

newProductApi() async {
  await ProductApiManager.newProductApi(
      10, 1, (NewProductsModel item) {}, (ApiErrorModel error) {});
}

getProductDetailsApi() async {
  await ProductApiManager.productDetailsApi(
      "1", (ProductDetailsModel item) {}, (ApiErrorModel error) {});
}

productByNameApi() async {
  await ProductApiManager.productsByNameApi(
      10, 1, "ad", (ProductPaginatorModel item) {}, (ApiErrorModel error) {});
}

relatedProductByIdApi() async {
  await ProductApiManager.relatedProductsByIdApi(
      "1", (RelatedProductsModel item) {}, (ApiErrorModel error) {});
}

getRatingsForProductApi() async {
  await ProductApiManager.reviewsForProductApi(
      10, 1, "1", (RatingPaginatorModel item) {}, (ApiErrorModel error) {});
}
