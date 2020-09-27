import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.graphql.dart'
    as A;
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.graphql.dart'
    as U;
import 'package:mmd_ecommerce_fl_lib/generatedql/address/graphql_api.graphql.dart'
    as ADD;
import 'package:mmd_ecommerce_fl_lib/generatedql/address_asset/graphql_api.graphql.dart'
    as ASS;
import 'package:mmd_ecommerce_fl_lib/generatedql/orders/graphql_api.graphql.dart'
    as O;

/// this class to solve conflicts between the same model names of the graphql api
class UserProfileModel {
  final U.Profile$Query$User user;

  UserProfileModel(this.user);
}

class UserRegisterModel {
  final A.SignUp$Mutation$User user;

  UserRegisterModel(this.user);
}

class AuthPayloadLoginModel {
  final A.SignIn$Mutation$AuthPayload authPayload;

  AuthPayloadLoginModel(this.authPayload);
}

class AuthPayloadRefreshTokenModel {
  final U.RefreshToken$Mutation$AuthPayload authPayload;

  AuthPayloadRefreshTokenModel(this.authPayload);
}

class AddressesModel {
  final ADD.GetAllAddress$Query$UserAddressPaginator addressPaginator;

  AddressesModel(this.addressPaginator);
}

class CitiesModel {
  final List<ASS.Cities$Query$City> cities;
  CitiesModel(this.cities);
}

class AreasModel {
  final List<ASS.AreaByID$Query$Area> areas;
  AreasModel(this.areas);
}

class OrdersModel {
  final O.Orders$Query$OrderPaginator orders;
  OrdersModel(this.orders);
}
