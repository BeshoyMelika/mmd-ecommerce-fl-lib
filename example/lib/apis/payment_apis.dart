import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

paymentApi(Function success) async {
  await PaymentApiManager.placeCreditCardOrderApi("50", "1",
      (PlaceCreditCardOrderModel model) {
    success(model);
  }, (ApiErrorModel error) {});
}
