library mmd_ecommerce_fl_lib;

export 'package:graphql_flutter/graphql_flutter.dart';

export './apis/auth_api_manager.dart';
export './apis/general_api_manager.dart';
export './apis/user_api_manager.dart';
export './generatedql/auth/graphql_api.dart';
export './generatedql/general/graphql_api.dart';
export './generatedql/user/graphql_api.dart' hide AuthPayload;
export './mmd_ecommerce.dart';
export './mmd_ecommerce_fl_lib.dart';

/// we hide the AuthPayload from "./generatedql/user/graphql_api.dart"
/// because we use the same name with "./generatedql/auth/graphql_api.dart"
/// guide link --> https://stackoverflow.com/a/22496742/2172590
