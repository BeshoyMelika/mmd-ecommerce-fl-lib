import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/payment_apis.dart';
import 'package:mmd_ecommerce_fl_lib_example/screens/payfort_payment_url_screen.dart';
import 'package:mmd_ecommerce_fl_lib_example/screens/payfort_payment_screen.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  Map map = {};
  String url;
  String merchantReference;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(
              color: Colors.red,
              onPressed: () async {},
              child: Text(
                "Delivery CheckOut",
                style: TextStyle(color: Colors.black),
              ),
            ),
            RaisedButton(
              color: Colors.black,
              onPressed: () {
                // orderStateApi("100_1601986763");
                orderStateApi(merchantReference, this.context);
              },
              child: Text(
                "Order State Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.indigo,
              onPressed: () {
                savedCardApi();
              },
              child: Text(
                "saved Card",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.indigo,
              onPressed: () {
                placeSavedCreditCardOrdersApi((m) {
                  map = m;
                  merchantReference = m["merchant_reference"];
                });
              },
              child: Text(
                "place saved credit card order Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.indigo,
              onPressed: () {
                operationsPaymentApi(map, (m) {
                  url = m["3ds_url"];
                });
              },
              child: Text(
                "operationsApi",
                style: TextStyle(color: Colors.white),
              ),
            ),
            paymentWidget(),
            operationPaymentWidget(),
          ],
        ),
      ),
    );
  }

  Widget paymentWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: RaisedButton(
        color: Colors.indigo,
        onPressed: () async {
          await placeCreditCardOrderApi((PlaceCreditCardOrderModel model) {
            // open payment screen ...
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (ctx) =>
                      PayfortPaymentScreen(model, (String merchantReference) {
                        // call api .. to check payment state
                        orderStateApi(merchantReference, context);
                        Navigator.of(context).pop();
                        debugPrint(
                            "===============$merchantReference===============");
                        debugPrint(
                            "===============$merchantReference===============");
                        debugPrint(
                            "===============$merchantReference===============");
                        debugPrint(
                            "===============$merchantReference===============");
                      })),
            );
          });
        },
        child: Row(
          children: [
            Icon(
              Icons.payment,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Payfort Payment Screen",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget operationPaymentWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: RaisedButton(
        color: Colors.indigo,
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => OperationPayfortScreen(
                      url: url,
                      callBack: () {
                        Navigator.of(context).pop();
                      },
                    )),
          );
        },
        child: Row(
          children: [
            Icon(
              Icons.payment,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Operation Payfort Payment Screen",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
