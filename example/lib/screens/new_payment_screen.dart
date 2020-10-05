import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib_example/payfort_widget.dart';

class NewPaymentScreen extends StatefulWidget {
  final PlaceCreditCardOrderModel backendDetails;
  final Function callback;

  NewPaymentScreen(this.backendDetails, this.callback);

  @override
  _NewPaymentScreenState createState() => _NewPaymentScreenState();
}

class _NewPaymentScreenState extends State<NewPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Payment"),
      ),
      body: PayfortWidget.test(widget.backendDetails, widget.callback),
    );
  }
}
