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
    AuthApiManager.loginApi('test@mail.com', '123456789',
        (AuthPayloadLogin auth) {
      setState(() {
        this.isLoading = false;
        this.auth = auth.authPayload;
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
          Row(
            children: [
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
              RaisedButton(
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddressScreen()),
                  );
                },
                child: Text("Open Address Scren"),
              ),
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeneralScreen()),
                  );
                },
                child: Text("Open General Scren"),
              ),
            ],
          ),
          RaisedButton(
            color: Colors.amber,
            onPressed: () {
              callLoginApi();
            },
            child: Text("Test login"),
          ),
          RaisedButton(
            color: Colors.brown,
            onPressed: () {
              callUpdateProfileApi(emailController.text, codeController.text);
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
    MmdECommerceFlLib.submitTokeAndTokenType(
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5IiwianRpIjoiODM3YzQ3NTg0ZDA1YWU3NGE1ZTAwOWY4YzIyOGQxMmI5NGU4OGRjMzc5YzAzNTQ0YzE0NTg5MjczM2UwNzE4OGFlNjI0ZDE4NjZhNWZhYTciLCJpYXQiOjE2MDAwMzYwMzgsIm5iZiI6MTYwMDAzNjAzOCwiZXhwIjoxNjMxNTcyMDM4LCJzdWIiOiIxOSIsInNjb3BlcyI6WyIqIl19.MkMPDYuTFH3WgWrZn6RbHGvcy6r84aGBnb6lppyqG2Qtp8eQgIHCpPrUk87gwsNy87NCNhZSLTBnnB4FGpuiPmRw0q8Qj6Z0C1Obn-1q6TFAK_pjeaYJpc661OQcIOUDO4lJvwA_lzkuBVHmo1J5Eue67GqqOJuYgIMiudrYym3-JNaiEqw-OKXjLG2gAAQLNBgTFoXljBADAuXzbf3JL3UAIj-jpfAcAszDSL8scuFvgzxkep-AwEjOwurAGwShTx6XH-BvSZwAWtIDklc-8r6Ht3EotgMCTlclqSdFaQloyxBIBdM6DIpTbdPYtmpLQ4bEO4e9SoCYuyoZhGOsyFmUP4HKynewjCribHzPyjRjMBvxpYfSa2QYBD8GeDZUhDkGMWDaDvDZPXa9QfnUAUzM7liOsgtP7LqUN6gjZj1RIU3fN9hwZbgdXX_hhuVfAhzATEsX4xnTHYULY948gERRa-nd5bCm0DS-OQF9tDqGwXYzvk-yG1n08YB4uw3tT2cTOJ-veU0eZz8fw0Rzkpybz9jmkEeaqY18d96suNWVAeBAv8JPCl_8sE9gUDSARrGtrXdyF4yJ19P0WZHmBMGS_Gti3O5mcLldY_Rxgx4nmgLubAmD9ah2vr3r1y6TbFMvKetztkN2F16QLFa4j4PrY0e27sY20Dx6U2b8lDI",
        "Bearer");
    //   await AuthApiManager.loginApi("test@mail.com", "123456789",
    //       (AuthPayloadLogin authPayload) async {
    //     auth = authPayload.authPayload;
    //     MmdECommerceFlLib.submitTokeAndTokenType(
    //         authPayload.authPayload.access_token,
    //         authPayload.authPayload.token_type);
    //     print("=========================================");
    //     print("Success Login");
    //     print("Access Token: ${authPayload.authPayload.access_token}");
    //   }, (QueryResult x) {
    //     print("error");
    //   });
    // }
  }
}
