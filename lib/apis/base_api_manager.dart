import 'package:graphql_flutter/graphql_flutter.dart';

class BaseApiManager {
  static String _url;
  static GraphQLClient _client;

  static void setUrl(baseUrl) {
    _url = baseUrl + "/graphql";
  }

  static GraphQLClient client() {
    if (_client == null) {
      _client = GraphQLClient(
        cache: InMemoryCache(),
        link: HttpLink(uri: _url),
      );
    }
    return _client;
  }
}
