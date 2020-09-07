import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

getVoucherByCode() async {
  await CartApiManager.getVoucherByCode("2121", (Voucher voucher) {
    print("=========================================");
    print("Success get voucher by code api");
    print(voucher.id);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail addTocard api");
    print(error.exception);
  });
}

shippingFeesApi() async {
  await CartApiManager.shippingFeesApi("2", "2", (String shippingFees) {
    print("=========================================");
    print("Success shipping fees api");
    print(shippingFees);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail shipping fees api");
    print(error.exception);
  });
}
