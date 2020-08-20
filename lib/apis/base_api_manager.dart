import 'package:graphql_flutter/graphql_flutter.dart';

class BaseApiManager {
  static String _url;

  static void setUrl(baseUrl) {
    _url = baseUrl + "/graphql";
  }

  static GraphQLClient client() {
    return GraphQLClient(
      cache: InMemoryCache(),
      link: HttpLink(uri: _url),
    );
  }
}
