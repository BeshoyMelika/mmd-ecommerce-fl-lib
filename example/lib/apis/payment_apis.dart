import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

paymentApi() async {
  await PaymentApiManager.placeCreditCardOrderApi("50", "1",
      (PlaceCreditCardOrderModel model) {
    model.tokenization;
  }, (ApiErrorModel error) {});
}
