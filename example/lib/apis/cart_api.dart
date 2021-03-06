import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

getVoucherByCode() async {
  await CartApiManager.voucherByCodeApi(
      "34432", (VoucherModel voucher) {}, (ApiErrorModel error) {});
}

shippingFeesApi() async {
  await CartApiManager.shippingFeesApi(
      "2", "2", (String shippingFees) {}, (ApiErrorModel error) {});
}

addToCard() async {
  await CartApiManager.addToCartApi(
      "110", 2, (bool success) {}, (ApiErrorModel error) {});
}

getCard() async {
  await CartApiManager.cartApi((CartModel cart) {}, (ApiErrorModel error) {});
}

updateCart() async {
  await CartApiManager.updateCartApi(
      "110", 2, (bool success) {}, (ApiErrorModel error) {});
}
