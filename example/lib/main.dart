import 'package:flutter/material.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

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
    //Future.delayed(Duration(microseconds: 0)).then((value) => callApi());
    Future.delayed(Duration(microseconds: 0)).then((value) => callBrandsApi());
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

  callBrandsApi() {
    GeneralApiManager.brandsApi((List<Brand> brands) {
      print("=========================================");
      print("Success Brand API");
      print(brands);
    }, () {});
  }
}
