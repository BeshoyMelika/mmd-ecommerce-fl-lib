import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib_example/widget/payfort_widget.dart';

class PayfortPaymentScreen extends StatefulWidget {
  final PlaceCreditCardOrderModel backendDetails;
  final Function callback;

  PayfortPaymentScreen(this.backendDetails, this.callback);

  @override
  _PayfortPaymentScreenState createState() => _PayfortPaymentScreenState();
}

class _PayfortPaymentScreenState extends State<PayfortPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payfort Payment"),
      ),
      body: PayfortWidget.test(widget.backendDetails, widget.callback),
    );
  }
}
