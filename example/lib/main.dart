import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';
import 'package:mmd_ecommerce_fl_lib_example/main_second.dart';

import 'APIs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MmdECommerceFlLib.submitBaseUrl("http://egfoods.moselaymdserver.com");
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
  AuthPayload auth;
  var isError = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    print("init state");
    // Future.delayed(Duration(microseconds: 0)).then((value) => callApi());
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

  callApi() async {
    setState(() {
      isLoading = true;
    });
    AuthApiManager.loginApi('test@mail.com', '123456789', (AuthPayload auth) {
      setState(() {
        this.isLoading = false;
        this.auth = auth;
      });
    }, () {
      this.isError = true;
    });
  }

  Widget getLoadingView() {
    return CircularProgressIndicator();
  }

  Widget getNormalView() {
    if (isError) {
      return Text("Result Error");
    } else {
      return Column(
        children: [
          Text("Result Success \n${auth?.access_token}"),
          RaisedButton(
            color: Colors.amber,
            onPressed: () {
              callLoginApi();
            },
            child: Text("Test login"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainSecond(auth.refresh_token)),
              );
            },
            child: Text("Open Main Second"),
          ),
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
          RaisedButton(
            color: Colors.brown,
            onPressed: () {
              callUpdateProfileApi();
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
      );
    }
  }

  callLoginApi() {
    AuthApiManager.loginApi("test@mail.com", "123456789",
        (AuthPayload authPayload) {
      auth = authPayload;
      print("=========================================");
      print("Success Login");
      print("Access Token: ${authPayload.access_token}");
    }, (QueryResult x) {
      print("error");
    });
  }
}
