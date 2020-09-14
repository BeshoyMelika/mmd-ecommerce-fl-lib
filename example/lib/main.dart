import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';
import 'package:mmd_ecommerce_fl_lib_example/screens/address_screen.dart';
import 'package:mmd_ecommerce_fl_lib_example/screens/general_screen.dart';
import 'package:mmd_ecommerce_fl_lib_example/screens/main_second.dart';

import 'apis/auth_apis.dart';
import 'apis/user_apis.dart';

void main() {
  // todo enhance example by split all APIs that related to each other in one file
  // todo style all buttons that call the same APIs category with the same style
  // todo all APIs that in the same category will be in a separated screen.
  // todo remove the base url from the main example. [May be not because the graphConfig file]
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MmdECommerceFlLib.submitBaseUrl("https://egfoods.moselaymdserver.com");
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
  AuthPayloadLogin auth;
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
    AuthApiManager.loginApi('test@mail.com', '123456789', "123",
        (AuthPayloadLogin auth) {
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
          Text("Result Success \n${auth?.authPayload?.access_token}"),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MainSecond(auth.authPayload.refresh_token)),
              );
            },
            child: Text("Open Main Second"),
          ),
          RaisedButton(
            color: Colors.amber,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddressScreen()),
              );
            },
            child: Text("Open Address Screen"),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GeneralScreen()),
              );
            },
            child: Text("Open General Screen"),
          ),
          RaisedButton(
            color: Colors.amber,
            onPressed: () {
              callLoginApi();
            },
            child: Text("Test login"),
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
      );
    }
  }

  callLoginApi() async {
    await AuthApiManager.loginApi("test@mail.com", "123456789", "123",
        (AuthPayloadLogin authPayload) async {
      auth = authPayload;
      MmdECommerceFlLib.submitTokeAndTokenType(
          authPayload.authPayload.access_token,
          authPayload.authPayload.token_type);
      print("=========================================");
      print("Success Login");
      print("Access Token: ${authPayload.authPayload.access_token}");
    }, (QueryResult x) {
      print("error");
      print(x.exception);
    });
  }
}
