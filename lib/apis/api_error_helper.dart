import '../extensions.dart';
import '../mmd_ecommerce.dart';

class ApiErrorHelper {
  static bool isValidationError(String message) =>
      message.equalsIgnoreCases(validation);

  static bool isAuthenticationError(String message) =>
      message.equalsIgnoreCases(authentication);

  static String errorCategory(GraphQLError error) => error.extensions[category];

  static String errorReason(dynamic extension) => extension[reason];

  static GraphQLError mapToModel(dynamic raw) {
    return GraphQLError.fromJSON(raw);
  }

  static String handle(QueryResult result) {
    if (result.exception.clientException is NetworkException) {
      return result.exception.clientException.message;
    } else {
      var error = mapToModel(result.exception.graphqlErrors[0].raw);
      var errorCat = errorCategory(error);
      if (isAuthenticationError(errorCat)) {
        print("IsAuth true");
        return authentication;
      } else if (isValidationError(errorCat)) {
        print("IsValidation true");
        return validation;
      } else {
        print(errorReason(error.extensions));
        return errorReason(error.extensions);
      }
    }
  }
}

//////////////////////////////
/////// Error Examples ///////
//////////////////////////////
/*"errors": [
    {
      "message": "Unauthenticated.",
      "extensions": {
        "guards": [ "api" ],
        "category": "authentication"
      },
      "locations": [ { "line": 2, "column": 3 } ],
      "path": [ "profile" ],
      "trace": []
    } --> result.exception.graphqlErrors[0]
]*/
/*"errors": [
    {
      "message": "The given data was invalid.",
      "extensions": {
        "validation": { "email": [ "The email field is required." ] },
        "category": "validation"
      },
      "locations": [ { "line": 2, "column": 3 } ],
      "path": [ "login" ],
      "trace": []
    } --> result.exception.graphqlErrors[0]
]*/

//////result.exception.graphqlErrors[0].raw["extensions"]["category"]
///// to get the first error in the list
