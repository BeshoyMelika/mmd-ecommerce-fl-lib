import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/apis/auth_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce_fl_lib.dart';

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
    Future.delayed(Duration(microseconds: 0)).then((value) => callApi());
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
      return Text("Result Success \n${auth?.access_token}");
    }
  }
}
