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
}

// Todo --> manage token session with the library ..
// Todo --> auto refresh token with the library ..
// Todo --> handel error form api [finished half of work]
// Todo --> use fragments for paging info ..
// Todo --> add http logger ..
// Todo --> connect library to directly get code from git hub ..
