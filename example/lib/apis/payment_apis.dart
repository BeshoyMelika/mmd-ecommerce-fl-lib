import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

paymentApi(Function success) async {
  await PaymentApiManager.placeCreditCardOrderApi("50", "1",
      (PlaceCreditCardOrderModel model) {
    success(model);
  }, (ApiErrorModel error) {});
}

cashOrderApi() async {
  await PaymentApiManager.placeCashOrderApi(
      "50", "1", (bool state) {}, (ApiErrorModel error) {});
}

orderStateApi(String merchantReference) async {
  await PaymentApiManager.getOrderBillingStatus(
      merchantReference, (String state) {}, (ApiErrorModel error) {
    print(error.queryResult.exception);
  });
}
