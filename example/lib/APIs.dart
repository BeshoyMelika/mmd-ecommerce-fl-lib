import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((List<Brand> brands) {
    print("=========================================");
    print("Success Brand API");
    print(brands);
  }, () {});
}

sliderApi() async {
  await GeneralApiManager.slidersApi((List<Slider> list) {
    print("=========================================");
    print("Success sliders api ");
    print(list.length);
    print(list[0].title);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail sliders api");
    print(error.exception);
  });
}

addToCard() async {
  await CartApiManager.addToCartApi("2", 2, (bool success) {
    print("=========================================");
    print("Success add to card api  $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail add to card api");
    print(error.exception);
  });
}

getCard() async {
  await CartApiManager.cartDataApi((Cart cart) {
    print("=========================================");
    print("Success get cart api  $cart");
    print(cart.items.length);
    print(cart.total);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get cart api");
    print(error.exception);
  });
}
