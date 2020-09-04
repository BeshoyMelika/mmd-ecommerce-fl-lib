import 'package:mmd_ecommerce_fl_lib/apis/api_keys.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';

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
// Todo --> add default to address API
// Todo --> handel error form api
// Todo --> add http logger ..
