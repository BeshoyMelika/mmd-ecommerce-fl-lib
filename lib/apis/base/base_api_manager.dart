import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/api_keys.dart';
import 'package:mmd_ecommerce_fl_lib/apis/logger/logger_client.dart';

class BaseApiManager {
  static String _url;
  static String _tokenType;
  static String _token;
  static String _language;
  static GraphQLClient _mainClient;

  static void setUrl(String baseUrl) => _url = baseUrl + "/$graphql";

  static void setLanguage(String lang) => _language = lang;

  static void setToken(String token) => _token = token;

  static void setTokenType(String tokenType) => _tokenType = tokenType;

  static Map<String, String> getAuthHeaders() {
    return {acceptLanguage: _language, authorization: '$_tokenType $_token'};
  }

  static Map<String, String> getHeaders() {
    return {acceptLanguage: _language};
  }

  static void refreshClient() {
    if (_token != null) {
      authenticateClient();
    } else {
      createClient();
    }
  }

  static void createClient() {
    _mainClient = GraphQLClient(
      cache: InMemoryCache(),
      link:
          HttpLink(uri: _url, httpClient: _getClient(), headers: getHeaders()),
    );
  }

  static void authenticateClient() {
    _mainClient = GraphQLClient(
      cache: InMemoryCache(),
      link: HttpLink(
          uri: _url, httpClient: _getClient(), headers: getAuthHeaders()),
    );
  }

  static GraphQLClient mainClient() {
    if (_mainClient == null) {
      refreshClient();
    }
    return _mainClient;
  }

  static Client _getClient() {
    return LoggerClient(Client());
  }
}
