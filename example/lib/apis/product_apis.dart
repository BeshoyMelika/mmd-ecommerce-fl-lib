import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

categoriesApi() async {
  await GeneralApiManager.categoriesApi((List<Category> list) {
    print("=========================================");
    print("Success get all categories api ");
    print(list.length);
    print(list[0].name);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get all categories api");
    print(error.exception);
  });
}

productApi() async {
  await ProductApiManager.productsApi(10, 1, (ProductPaginatorModel item) {
    print("=========================================");
    print("Success get all products api ");
    print(item.productPaginator.data[0].details.category.id);
    print(item.productPaginator.data.length);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get all products api");
    print(error.exception);
  });
}

productByCategoryIdApi() async {
  await ProductApiManager.productByCategoryIdApi(10, 1, "1",
      (ProductPaginatorModel item) {
    print("=========================================");
    print("Success get products by categories id api ");
    print(item.productPaginator.data[0].details.category.id);
    print(item.productPaginator.data.length);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get products by categories id api");
    print(error.exception);
  });
}

newProductApi() async {
  await ProductApiManager.newProductApi(10, 1, (NewProductsModel item) {
    print("=========================================");
    print("Success get new products api ");
    print(item.productPaginator.data[0].details.category.id);
    print(item.productPaginator.data.length);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get new products api ");
    print(error.exception);
  });
}

getProductDetailsApi() async {
  await ProductApiManager.productDetailsApi("1", (ProductDetailsModel item) {
    print("=========================================");
    print("Success get products details api ");
    print(item.productDetails.id);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get products details api");
    print(error.exception);
  });
}

productByNameApi() async {
  await ProductApiManager.productsByNameApi(10, 1, "ad",
      (ProductPaginatorModel item) {
    print("=========================================");
    print("Success get products by categories name api ");
    print(item.productPaginator.data.length);
    print(item.productPaginator.data[0].details.category.id);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get products by categories name api");
    print(error.exception);
  });
}

relatedProductByIdApi() async {
  await ProductApiManager.relatedProductsByIdApi("1",
      (RelatedProductsModel item) {
    print("=========================================");
    print("Success related product api ");
    print(item.products.length);
    print(item.products[0].details.category.id);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail related product api");
    print(error.exception);
  });
}

getRatingsForProductApi() async {
  await ProductApiManager.ratingsForProductApi(10, 1, "1",
      (RatingPaginatorModel item) {
    print("=========================================");
    print("Success ratings api ");
    print(item.ratingPaginator.data.length);
    print(item?.ratingPaginator?.data[0]?.rating);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail ratings api");
    print(error.exception);
  });
}
