import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/payment_apis.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () async {
              await paymentApi((PlaceCreditCardOrderModel model) {
                // post data to webview ...
              });
            },
            child: Icon(
              Icons.payment,
              size: 120,
            ),
          ),
          Container(
            width: double.infinity,
            height: 800,
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'https://flutter.dev',
            ),
          ),
        ],
      ),
    );
  }
}
