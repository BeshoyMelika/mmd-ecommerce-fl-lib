import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';
import 'package:mmd_ecommerce_fl_lib_example/screens/address_screen.dart';
import 'package:mmd_ecommerce_fl_lib_example/screens/general_screen.dart';

import 'api_keys.dart';
import 'apis/auth_apis.dart';
import 'apis/user_apis.dart';
import 'screens/product_screen.dart';

void main() {
  // TODO remove the base url from the main example. [May be not because the graphConfig file]
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MmdECommerceFlLib.submitBaseUrl(BASE_URL);
    MmdECommerceFlLib.enableDebug(true);
    MmdECommerceFlLib.submitLanguage(Languages.arabic);
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isLoading = false;
  SignIn$Mutation$AuthPayload auth;
  var isError = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GraphQl Demo'),
        ),
        body: Center(child: isLoading ? getLoadingView() : getNormalView()));
  }

  Widget getLoadingView() {
    return CircularProgressIndicator();
  }

  Widget getNormalView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          RaisedButton(
            color: Colors.deepPurple,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddressScreen()),
              );
            },
            child: Text(
              "Open Address Screen",
              style: TextStyle(color: Colors.white),
            ),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GeneralScreen()),
              );
            },
            child: Text(
              "Open General Screen",
              style: TextStyle(color: Colors.white),
            ),
          ),
          RaisedButton(
            color: Colors.deepOrangeAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductScreen()),
              );
            },
            child: Text("Open Product Screen"),
          ),
          RaisedButton(
            color: Colors.green,
            onPressed: () {
              callLoginApi();
            },
            child: Text(
              "Test login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.brown,
                onPressed: () {
                  callUpdateProfileApi(
                      emailController.text, codeController.text);
                },
                child: Text(
                  "update Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                color: Colors.redAccent,
                onPressed: () {
                  callMyProfileApi();
                },
                child: Text(
                  "get profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  callRegisterApi();
                },
                child: Text(
                  "Register User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  logout();
                },
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.black,
                onPressed: () {
                  callForgetPasswordApi(emailController.text);
                },
                child: Text(
                  "Forgot Pass",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                color: Colors.black,
                onPressed: () {
                  callResetPasswordApi(emailController.text,
                      passwordController.text, codeController.text);
                },
                child: Text(
                  "Reset Pass",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Column authField() {
    return Column(
      children: [
        TextField(
          controller: emailController,
          decoration: InputDecoration(hintText: "email"),
        ),
        TextField(
          controller: codeController,
          decoration: InputDecoration(hintText: "code"),
        ),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(hintText: "password"),
        ),
      ],
    );
  }
}
