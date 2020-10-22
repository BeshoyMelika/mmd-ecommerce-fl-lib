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

class OperationPayfortWidget extends StatefulWidget {
  final String url;
  final Widget progressIndicator;
  final bool debuggingEnabled;
  final Function callback;

  const OperationPayfortWidget(
      {@required this.url,
      @required this.callback,
      this.debuggingEnabled = false,
      this.progressIndicator});

  @override
  _OperationPayfortWidgetState createState() => _OperationPayfortWidgetState();
}

class _OperationPayfortWidgetState extends State<OperationPayfortWidget> {
  InAppWebViewController webViewController;
  String url = "";
  String errorMessage = "";
  int errorCode;
  String errorURL = "";
  double progress = 0;
  bool haveError = false;

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
                initialUrl: widget.url,
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                  debuggingEnabled: widget.debuggingEnabled,
                )),
                onWebViewCreated: (InAppWebViewController controller) {
                  webViewController = controller;
                },
                onLoadStart: (InAppWebViewController controller, String url) {
                  setState(() {
                    if (url.contains(
                        "https://egfoods.moselaymdserver.com/billing")) {
                      var parsedUrl = Uri.parse(url);
                      widget.callback();
                    }
                    this.url = (this.url) + "\n" + url;
                  });
                },
                onLoadStop:
                    (InAppWebViewController controller, String url) async {
                  if (widget.debuggingEnabled)
                    setState(() {
                      if (url.contains(
                          "https://egfoods.moselaymdserver.com/billing")) {
                        var parsedUrl = Uri.parse(url);
                        widget.callback(parsedUrl.pathSegments.last);
                      }
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
}
