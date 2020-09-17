import 'apis/base/api_keys.dart';
import 'apis/base/base_api_manager.dart';

class MmdECommerceFlLib {
  /// to add the base url
  static void submitBaseUrl(String baseUrl) {
    BaseApiManager.setUrl(baseUrl);
  }

  /// to submit token and token type to have the ability to change it at any time
  static void submitTokeAndTokenType(String token, String tokenType) {
    BaseApiManager.setToken(token);
    BaseApiManager.setTokenType(tokenType);
    BaseApiManager.authenticateClient();
  }

  /// to submit the language to the API
  static void submitLanguage(Languages lang) {
    BaseApiManager.setLanguage(lang.value);
    BaseApiManager.refreshClient();
  }

  /// to enable auto print requests and responses --> use it only with debug mode
  /// you have to call [enableDebug] after [submitBaseUrl] directly
  /// if you want to change the setting of debugging later.
  /// you must call one of these [submitLanguage] or [submitTokeAndTokenType]
  /// to reset the client ..
  static void enableDebug(bool isDebuggable) {
    BaseApiManager.setDebuggable(isDebuggable);
  }
}

// TODO --> manage token session with the library ..
// TODO --> auto refresh token with the library ..
// TODO --> use fragments for paging info ..
// TODO --> connect library to directly get code from git hub ..
