import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

paymentApi(Function success) async {
  await PaymentApiManager.placeCreditCardOrderApi("50", null,
      (PlaceCreditCardOrderModel model) {
    success(model);
  }, (ApiErrorModel error) {});
}

cashOrderApi() async {
  await PaymentApiManager.placeCashOrderApi(
      "50", "1", (bool state) {}, (ApiErrorModel error) {});
}

orderStateApi(String merchantReference, BuildContext ctx) async {
  await PaymentApiManager.orderBillingStatusApi(merchantReference,
      (String state) {
    showDialog(
      context: ctx,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text(state),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }, (ApiErrorModel error) {});
}
