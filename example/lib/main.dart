import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce_fl_lib.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
  QueryResult result;

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

  SignInArguments getNestleCredentials() {
    return SignInArguments(email: 'mina1@mina1.com', password: '123456789aa');
  }

  SignInArguments getEgFreshCredentials() {
    return SignInArguments(email: 'test@mail.com', password: '123456789');
  }

  callApi() async {
    setState(() {
      isLoading = true;
    });
    var client =
        MmdECommerceFlLib.graphQlClient("http://egfoods.moselaymdserver.com");
    var result = await client.mutate(MutationOptions(
        documentNode: SignInQuery().document,
        variables: getEgFreshCredentials().toJson()));
    setState(() {
      isLoading = false;
      this.result = result;
    });
  }

  Widget getLoadingView() {
    return CircularProgressIndicator();
  }

  Widget getNormalView() {
    print(result?.data);
    return Text((result == null) ? "Result Null" : "Result Printed");
  }
}
