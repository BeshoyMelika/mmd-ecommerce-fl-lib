import 'package:flutter/material.dart';

import 'package:mmd_ecommerce_fl_lib_example/apis/product_apis.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                await getRatingsForProductApi();
              },
              child: Text(
                "get ratings Api",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
