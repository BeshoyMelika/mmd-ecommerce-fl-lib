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
  final Widget progressIndicator;
  final bool debuggingEnabled;
  final void Function(String reference) callback;

  const PayfortWidget(
      {@required this.url,
      @required this.cardNum,
      @required this.cvv,
      @required this.yearMonthDate,
      @required this.rememberMe,
      @required this.cardHolderName,
      @required this.backendDetails,
      @required this.callback,
      this.debuggingEnabled = false,
      this.progressIndicator});

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
      // debuggingEnabled: true,
    );
  }

  static PayfortWidget testOTP(
      PlaceCreditCardOrderModel detailsModel, Function callback) {
    return PayfortWidget(
      url: "https://sbcheckout.PayFort.com/FortAPI/paymentPage",
      cardNum: "4557012345678902",
      cvv: "123",
      yearMonthDate: "2105",
      rememberMe: true,
      cardHolderName: "Mina Samir Sadik Khalil",
      backendDetails: detailsModel,
      callback: callback,
      debuggingEnabled: true,
    );
  }
}

class _PayfortWidgetState extends State<PayfortWidget> {
  InAppWebViewController webViewController;
  String url = "";
  String errorMessage = "";
  int errorCode;
  String errorURL = "";
  double progress = 0;
  bool haveError = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        widget.debuggingEnabled
            ? Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    "CURRENT URL\n${(url.length > 50) ? url.substring(0, 50) + "..." : url}"),
              )
            : SizedBox(),
        widget.debuggingEnabled
            ? Container(
                padding: EdgeInsets.all(10.0),
                child: progress < 1.0
                    ? LinearProgressIndicator(value: progress)
                    : Container())
            : SizedBox(),
        haveError
            ? Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(" URL Error : $errorURL"),
                    Text(" Error Code : $errorCode"),
                    Text(" Error Massage : $errorMessage"),
                  ],
                ),
              )
            : SizedBox(),
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              InAppWebView(
                initialHeaders: {},
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                  debuggingEnabled: widget.debuggingEnabled,
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
                onLoadStop:
                    (InAppWebViewController controller, String url) async {
                  if (widget.debuggingEnabled)
                    setState(() {
                      this.url = url;
                    });
                },
                onProgressChanged:
                    (InAppWebViewController controller, int progress) {
                  setState(() {
                    this.progress = progress / 100;
                  });
                },
                onLoadError: (InAppWebViewController appWebViewController,
                    String url, int code, String message) {
                  setState(() {
                    this.haveError = true;
                    this.errorMessage = message;
                    this.errorCode = code;
                    this.errorURL = url;
                  });
                },
                onLoadHttpError: (InAppWebViewController appWebViewController,
                    String url, int code, String message) {
                  setState(() {
                    this.haveError = true;
                    this.errorMessage = message;
                    this.errorCode = code;
                    this.errorURL = url;
                  });
                },
              ),
              buildLeadWidget()
            ],
          ),
        ),
      ],
    ));
  }

  buildLeadWidget() {
    return progress < 1.0
        ? widget.progressIndicator ?? Center(child: CircularProgressIndicator())
        : Container();
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
