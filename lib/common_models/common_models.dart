import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.dart' as A;
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.dart' as U;

/// this class to solve conflicts between the same model names of the graphql api
class UserMyProfile {
  final U.User user;

  UserMyProfile(this.user);
}

class UserRegister {
  final A.User user;

  UserRegister(this.user);
}

class AuthPayloadLogin {
  final A.AuthPayload authPayload;

  AuthPayloadLogin(this.authPayload);
}

class AuthPayloadRefreshToken {
  final U.AuthPayload authPayload;

  AuthPayloadRefreshToken(this.authPayload);
}
