import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/apis/general_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/graphql_api.dart';

class MainSecond extends StatefulWidget {
  @override
  _MainSecondState createState() => _MainSecondState();
}

class _MainSecondState extends State<MainSecond> {
  @override
  void initState() {
    print("init state");
    Future.delayed(Duration(microseconds: 0)).then((value) => callBrandsApi());
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

  callBrandsApi() {
    GeneralApiManager.brandsApi((List<Brand> brands) {
      print("=========================================");
      print("Success Brand API");
      print(brands);
    }, () {});
  }
}
