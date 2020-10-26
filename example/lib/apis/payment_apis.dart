import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

placeCreditCardOrderApi(Function success) async {
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

savedCardApi() async {
  await PaymentApiManager.savedCardsApi(
      (SavedCardList list) {}, (ApiErrorModel error) {});
}

placeSavedCreditCardOrdersApi(Function(Map) suc) async {
  await PaymentApiManager.placeSavedCreditCardOrderApi("43", null, "12", "123",
      (PlaceSavedCreditCardOrderModel model) {
    suc(model.placeSavedCreditCardOrder.toJson());
  }, (ApiErrorModel error) {});
}

operationsPaymentApi(Map data, Function suc) async {
  await PayFortApiManager.payFortOperationsApi(data, (model) {
    suc(model);
  }, (errorMassage, errorCode) {
    debugPrint(errorMassage);
    debugPrint(errorCode);
  });
}
