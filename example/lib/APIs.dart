import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((List<Brand> brands) {
    print("=========================================");
    print("Success Brand API");
    print(brands);
  }, () {});
}

sliderApi() async {
  await GeneralApiManager.sliders((List<Slider> list) {
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
  await CartApiManager.addToCart("2", 2, (bool success) {
    print("=========================================");
    print("Success addTocard api  $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail addTocard api");
    print(error.exception);
  });
}

getCard() async {
  await CartApiManager.getCart((Cart cart) {
    print("=========================================");
    print("Success getCart api  $cart");
    print(cart.items.length);
    print(cart.total);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail getCart api");
    print(error.exception);
  });
}
