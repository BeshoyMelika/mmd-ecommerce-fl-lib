import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((List<Brand> brands) {}, () {});
}

sliderApi() async {
  await GeneralApiManager.slidersApi(
      (List<Slider> list) {}, (QueryResult error) {});
}

addToCard() async {
  await CartApiManager.addToCartApi(
      "2", 2, (bool success) {}, (QueryResult error) {});
}

getCard() async {
  await CartApiManager.cartDataApi((Cart cart) {}, (QueryResult error) {});
}
