import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/payment_apis.dart';

// TODO follow instructions for Android and iOS
// TODO https://github.com/pichillilorenzo/flutter_inappwebview

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  InAppWebViewController webViewController;
  String url = "";
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Column(
        children: [
          payButtonWidget(),
          urlTxtWidget(),
          progressWidget(),
          Expanded(
            child: Container(
              child: webWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Widget webWidget() {
    return InAppWebView(
      initialHeaders: {},
      initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
        debuggingEnabled: true,
      )),
      onWebViewCreated: (InAppWebViewController controller) {
        webViewController = controller;
      },
      onLoadStart: (InAppWebViewController controller, String url) {
        setState(() {
          this.url = (this.url) + "\n" + url;
        });
      },
      onLoadStop: (InAppWebViewController controller, String url) async {
        setState(() {
          this.url = url;
        });
      },
      onProgressChanged: (InAppWebViewController controller, int progress) {
        setState(() {
          this.progress = progress / 100;
        });
      },
    );
  }

  Widget urlTxtWidget() {
    return Center(
      child: Text(
        url,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget progressWidget() {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: progress < 1.0
            ? LinearProgressIndicator(value: progress)
            : Container());
  }

  Widget payButtonWidget() {
    return RaisedButton(
      onPressed: () async {
        await paymentApi((PlaceCreditCardOrderModel model) {
          // post data to webview ...
          postDataToWebView(model);
        });
      },
      child: Icon(
        Icons.payment,
        size: 120,
      ),
    );
  }

  void postDataToWebView(PlaceCreditCardOrderModel model) {
    var data = "service_command=${model.tokenization.serviceCommand}"
        "&access_code=${model.tokenization.accessCode}"
        "&currency=${model.tokenization.currency}"
        "&merchant_identifier=${model.tokenization.merchantIdentifier}"
        "&merchant_reference=${model.tokenization.merchantReference}"
        "&language=${model.tokenization.language}"
        "&expiry_date=2105"
        //"&card_number=4005550000000001"
        "&card_number=4557012345678902"
        "&card_security_code=123"
        "&signature=${model.tokenization.signature}"
        "&card_holder_name=Mina Samir Sadik Khalil"
        "&remember_me=YES"
        "&return_url=${model.tokenization.returnUrl}";
    //var encoded = Uri.encodeComponent(data);
    webViewController.postUrl(
        url: "https://sbcheckout.PayFort.com/FortAPI/paymentPage",
        postData: utf8.encode(data));
  }
}
