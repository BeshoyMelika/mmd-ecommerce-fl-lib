import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib_example/widget/operation_payfort_widget.dart';

class OperationPayfortScreen extends StatefulWidget {
  final String url;
  final Function callBack;

  const OperationPayfortScreen(
      {Key key, @required this.url, @required this.callBack})
      : super(key: key);
  @override
  _OperationPayfortScreenState createState() => _OperationPayfortScreenState();
}

class _OperationPayfortScreenState extends State<OperationPayfortScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operation Payfort Payment"),
      ),
      body: OperationPayfortWidget(
        url: widget.url,
        callback: widget.callBack,
        debuggingEnabled: true,
      ),
    );
  }
}
