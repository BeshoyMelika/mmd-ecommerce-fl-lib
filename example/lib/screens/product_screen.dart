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
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await categoriesApi();
              },
              child: Text(
                "Categories Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await productByCategoryIdApi();
              },
              child: Text(
                "get product by category id Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await productByNameApi();
              },
              child: Text(
                "get product by name Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await productApi();
              },
              child: Text(
                "get product Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await newProductApi();
              },
              child: Text(
                "get new product Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await productOfferApi();
              },
              child: Text(
                "get offer product Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await getProductDetailsApi();
              },
              child: Text(
                "get product details Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await relatedProductByIdApi();
              },
              child: Text(
                "get related product Api",
              ),
            ),
            RaisedButton(
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                await getRatingsForProductApi();
              },
              child: Text(
                "get ratings Api",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
