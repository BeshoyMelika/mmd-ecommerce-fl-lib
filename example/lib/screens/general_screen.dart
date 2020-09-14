import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib_example/APIs.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/cart_api.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/product_apis.dart';
import 'package:mmd_ecommerce_fl_lib_example/apis/user_apis.dart';

class GeneralScreen extends StatefulWidget {
  @override
  _GeneralScreenState createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("General"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RaisedButton(
              color: Colors.blue,
              onPressed: () async {
                await sliderApi();
              },
              child: Text(
                "Get All Sliders",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: [
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () async {
                    await addToCard();
                  },
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  onPressed: () async {
                    await getCard();
                  },
                  child: Text(
                    "get Card Api",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () async {
                await categoriesApi();
              },
              child: Text(
                "Categories Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.blueGrey,
              onPressed: () async {
                await getVoucherByCode();
              },
              child: Text(
                "get voucher by code",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: [
                RaisedButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () async {
                    await productByCategoryIdApi();
                  },
                  child: Text(
                    "get product by category id Api",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RaisedButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () async {
                    await productByNameApi();
                  },
                  child: Text(
                    "get product by name Api",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RaisedButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () async {
                    await productApi();
                  },
                  child: Text(
                    "get product Api",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () async {
                await newProductApi();
              },
              child: Text(
                "get new product Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () async {
                await getProductDetailsApi();
              },
              child: Text(
                "get product details Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () async {
                await relatedProductByIdApi();
              },
              child: Text(
                "get related product Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () async {
                await shippingFeesApi();
              },
              child: Text(
                "get shipping fees Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: () async {
                await getRatingsForProductApi();
              },
              child: Text(
                "get ratings Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.deepPurpleAccent,
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
