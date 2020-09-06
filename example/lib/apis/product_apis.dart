import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

categoriesApi() async {
  await GeneralApiManager.getAllCategoriesApi((List<Category> list) {
    print("=========================================");
    print("Success sliders api ");
    print(list.length);
    print(list[0].name);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail sliders api");
    print(error.exception);
  });
}

productApi() async {
  await ProductApiManager.getAllProductApi(10, 1, (ProductPaginator item) {
    print("=========================================");
    print("Success sliders api ");
    print(item.data[0].details.category.id);
    print(item.data.length);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail sliders api");
    print(error.exception);
  });
}

// productByCategoryIdApi() async {
//   await ProductApiManager.getProductByCategoryIdApi(10, 1, "1",
//       (ProductPaginator item) {
//     print("=========================================");
//     print("Success sliders api ");
//     print(item.data[0].details.category.id);
//     print(item.data.length);
//   }, (QueryResult error) {
//     print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
//     print("Fail sliders api");
//     print(error.exception);
//   });
// }

productByNameApi() async {
  await ProductApiManager.getProductByNameApi(10, 1, "ad",
      (ProductPaginator item) {
    print("=========================================");
    print("Success sliders api ");
    print(item.data.length);
    print(item.data[0].details.category.id);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail sliders api");
    print(error.exception);
  });
}
