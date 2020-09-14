import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/address_apis.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(
              color: Colors.deepPurple,
              onPressed: () async {
                await getCitiesAsset();
              },
              child: Text(
                "Get Cities",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.transparent,
              onPressed: () async {
                await getAreaByIdAsset("2");
              },
              child: Text(
                "Get Area By ID",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () async {
                await getAllAddress();
              },
              child: Text(
                "Get All address",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.green,
              onPressed: () async {
                await createAddress();
              },
              child: Text(
                "Create address",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.yellow,
              onPressed: () async {
                await updateAddress();
              },
              child: Text(
                "Update Address",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.red,
              onPressed: () async {
                await deleteAddress();
              },
              child: Text(
                "Delete Address",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
