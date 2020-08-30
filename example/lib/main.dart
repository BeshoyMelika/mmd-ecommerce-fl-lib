import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';
import 'package:mmd_ecommerce_fl_lib_example/main_second.dart';

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

  @override
  void initState() {
    print("init state");
    // Future.delayed(Duration(microseconds: 0)).then((value) => callApi());
    //Future.delayed(Duration(microseconds: 0)).then((value) => callBrandsApi());
    //Future.delayed(Duration(microseconds: 0)).then((value) => callRegisterApi());
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
        ],
      );
    }
  }

  callBrandsApi() {
    GeneralApiManager.brandsApi((List<Brand> brands) {
      print("=========================================");
      print("Success Brand API");
      print(brands);
    }, () {});
  }

  callRegisterApi() {
    AuthApiManager.registerApi("mmd10", "mmd10@mmd.com", "123456",
        (UserRegister user) {
      print("=========================================");
      print("user email : " + user.user.email + "name :" + user.user.name);
      print("Success register API");
    }, (QueryResult x) {
      print("error");
    });
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

  callUpdateProfileApi() {
    UserApiManager.updateProfile("fasfos", "015", (bool isUpdated) {
      print("=========================================");
      print("Success update profile $isUpdated");
    }, (QueryResult error) {
      print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
      print("Fail update profile");
    });
  }

  callMyProfileApi() {
    UserApiManager.myProfile((UserMyProfile user) {
      print("=========================================");
      print("Success get my profile");
      print(user.user.id);
      print(user.user.name);
    }, (QueryResult error) {
      print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
      print("Fail get my profile");
    });
  }
}
