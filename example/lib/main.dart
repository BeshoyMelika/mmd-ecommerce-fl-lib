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
    return GraphQLProvider(
        client: MmdECommerceFlLib.client("http://nestle.moselaymdserver.com"),
        child: MaterialApp(
          home: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GraphQl Demo'),
        ),
        body: Center(
          child: Mutation(
              options: MutationOptions(
                  documentNode: SignInQuery().document,
                  variables: SignInArguments(
                          email: 'mina1@mina1.com', password: '123456789aa')
                      .toJson(),
                  onCompleted: (dynamic resultData) {
                    print(resultData);
                    // showDialog(
                    //     context: context,
                    //     builder: (ctx) {
                    //       return Text("Completed");
                    //     });
                  }),
              builder: (RunMutation runMutation, QueryResult queryResult) {
                if (queryResult.loading) {
                  return CircularProgressIndicator();
                } else {
                  return RaisedButton(
                    child: Text("Login"),
                    onPressed: () {
                      runMutation(SignInArguments(
                              email: 'mina1@mina1.com', password: '123456789aa')
                          .toJson());
                      runMutation({
                        'email': 'mina1@mina1.com',
                        'password': '123456789aa'
                      });
                    },
                  );
                }
              }),
        ));
  }
}
