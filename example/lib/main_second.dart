import 'package:flutter/material.dart';

import 'APIs.dart';

class MainSecond extends StatefulWidget {
  final String refreshToken;

  MainSecond(this.refreshToken);

  @override
  _MainSecondState createState() => _MainSecondState();
}

class _MainSecondState extends State<MainSecond> {
  @override
  void initState() {
    print("init state");
    /*Future.delayed(Duration(microseconds: 0))
        .then((value) => callRefreshTokenApi(widget.refreshToken));*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Second"),
      ),
      body: Center(
        child: Text("Mina"),
      ),
    );
  }
}
