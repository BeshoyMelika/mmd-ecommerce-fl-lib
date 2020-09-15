import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

getVoucherByCode() async {
  await CartApiManager.voucherByCodeApi(
      "2121", (Voucher voucher) {}, (QueryResult error) {});
}

shippingFeesApi() async {
  await CartApiManager.shippingFeesApi(
      "2", "2", (String shippingFees) {}, (QueryResult error) {});
}
