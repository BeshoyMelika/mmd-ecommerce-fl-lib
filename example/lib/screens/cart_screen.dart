import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/cart_api.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/general_api.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/user_apis.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () async {
                await sliderApi();
              },
              child: Text(
                "Get All Sliders",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () async {
                await addToCard();
              },
              child: Text(
                "Add To Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () async {
                await updateCart();
              },
              child: Text(
                "Update Cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () async {
                await getCard();
              },
              child: Text(
                "get Card Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () async {
                await getVoucherByCode();
              },
              child: Text(
                "get voucher by code",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () async {
                await shippingFeesApi();
              },
              child: Text(
                "get shipping fees Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () async {
                await getAllOrdersApi();
              },
              child: Text(
                "get orders Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
