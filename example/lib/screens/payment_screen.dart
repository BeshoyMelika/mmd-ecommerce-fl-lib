import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/payment_apis.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await paymentApi();
          },
          child: Icon(
            Icons.payment,
            size: 120,
          ),
        ),
      ),
    );
  }
}
