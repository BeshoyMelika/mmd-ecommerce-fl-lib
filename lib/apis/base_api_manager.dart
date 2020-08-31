import 'package:graphql_flutter/graphql_flutter.dart';

const authorization = "Authorization";

class BaseApiManager {
  static String _url;
  static String _tokenType;
  static String _token;
  static GraphQLClient _client;
  static GraphQLClient _authenticatedClient;

  static void setUrl(String baseUrl) {
    _url = baseUrl + "/graphql";
  }

  static void setToken(String token) {
    _token = token;
  }

  static void setTokenType(String tokenType) {
    _tokenType = tokenType;
  }

  static void refreshClient() {
    _authenticatedClient = GraphQLClient(
      cache: InMemoryCache(),
      link: HttpLink(uri: _url, headers: getHeaders()),
    );
  }

  static Map<String, String> getHeaders() {
    return {authorization: '$_tokenType $_token'};
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

  static GraphQLClient authClient() {
    if (_authenticatedClient == null) {
      refreshClient();
    }
    return _authenticatedClient;
  }
}
