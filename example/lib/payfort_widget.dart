import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';

// TODO https://github.com/pichillilorenzo/flutter_inappwebview

// to test payment
// url = https://sbcheckout.PayFort.com/FortAPI/paymentPage --> test url
// card number = 4005550000000001
// card number = 4557012345678902 --> OTP
// expiry date= 2105
// card security code = 123
// card holder name = Mina Samir Sadik Khalil
// remember me = YES or NO

class PayfortWidget extends StatefulWidget {
  final String url;
  final String cardNum;
  final String cvv;
  final String yearMonthDate;
  final bool rememberMe;
  final String cardHolderName;
  final PlaceCreditCardOrderModel backendDetails;
  final Function callback;

  PayfortWidget(
      {@required this.url,
      @required this.cardNum,
      @required this.cvv,
      @required this.yearMonthDate,
      @required this.rememberMe,
      @required this.cardHolderName,
      @required this.backendDetails,
      @required this.callback});

  @override
  _PayfortWidgetState createState() => _PayfortWidgetState();

  static PayfortWidget test(
      PlaceCreditCardOrderModel detailsModel, Function callback) {
    return PayfortWidget(
      url: "https://sbcheckout.PayFort.com/FortAPI/paymentPage",
      cardNum: "4005550000000001",
      cvv: "123",
      yearMonthDate: "2105",
      rememberMe: true,
      cardHolderName: "Mina Samir Sadik Khalil",
      backendDetails: detailsModel,
      callback: callback,
    );
  }
}

class _PayfortWidgetState extends State<PayfortWidget> {

  InAppWebViewController webViewController;
  String url = "";
  double progress = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InAppWebView(
      initialHeaders: {},
      initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
        debuggingEnabled: true,
      )),
      onWebViewCreated: (InAppWebViewController controller) {
        webViewController = controller;
        postDataToWebView();
      },
      onLoadStart: (InAppWebViewController controller, String url) {
        setState(() {
          if (url.contains("billing/confirmation")) {
            var parsedUrl = Uri.parse(url);
            widget.callback(parsedUrl.pathSegments.last);
          }
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
    ));
  }

  void postDataToWebView() {
    var model = widget.backendDetails;
    var data = "service_command=${model.tokenization.serviceCommand}"
        "&access_code=${model.tokenization.accessCode}"
        "&currency=${model.tokenization.currency}"
        "&merchant_identifier=${model.tokenization.merchantIdentifier}"
        "&merchant_reference=${model.tokenization.merchantReference}"
        "&language=${model.tokenization.language}"
        "&expiry_date=${widget.yearMonthDate}"
        "&card_number=${widget.cardNum}"
        "&card_security_code=${widget.cvv}"
        "&signature=${model.tokenization.signature}"
        "&card_holder_name=${widget.cardHolderName}"
        "&remember_me=${rememberMeApi()}"
        "&return_url=${model.tokenization.returnUrl}";

    /// another encoding way --> used when the encoded data contains plus ...
    /// var encoded = Uri.encodeComponent(data);
    webViewController.postUrl(url: widget.url, postData: utf8.encode(data));
  }

  String rememberMeApi() {
    return widget.rememberMe ? "YES" : "NO";
  }
}
