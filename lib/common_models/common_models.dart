import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/categories/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/general/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/order_products/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/products/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/ratings/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/related_product/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/address/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/address_asset/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/orders/graphql_api.graphql.dart';

/// this class to solve conflicts between the same model names of the graphql api
class UserProfileModel {
  final Profile$Query$User user;

  UserProfileModel(this.user);
}

class UserRegisterModel {
  final SignUp$Mutation$User user;

  UserRegisterModel(this.user);
}

class AuthPayloadLoginModel {
  final SignIn$Mutation$AuthPayload authPayload;

  AuthPayloadLoginModel(this.authPayload);
}

class AuthPayloadRefreshTokenModel {
  final RefreshToken$Mutation$AuthPayload authPayload;

  AuthPayloadRefreshTokenModel(this.authPayload);
}

class AddressesModel {
  final GetAllAddress$Query$UserAddressPaginator addressPaginator;

  AddressesModel(this.addressPaginator);
}

class CitiesModel {
  final List<Cities$Query$City> cities;
  CitiesModel(this.cities);
}

class AreasModel {
  final List<AreaByID$Query$Area> areas;
  AreasModel(this.areas);
}

class OrdersModel {
  final Orders$Query$OrderPaginator orders;
  OrdersModel(this.orders);
}

class CartModel {
  final GetCart$Query$Cart cart;
  CartModel(this.cart);
}

class VoucherModel {
  final GetVoucherByCode$Query$Voucher voucherByCode;
  VoucherModel(this.voucherByCode);
}

class SliderModel {
  final List<Sliders$Query$Slider> slider;
  SliderModel(this.slider);
}

class CategoryModel {
  final List<Categories$Query$Category> category;
  CategoryModel(this.category);
}

class ProductsPaginatorModel {
  final Products$Query$ProductPaginator productsPaginator;
  ProductsPaginatorModel(this.productsPaginator);
}

class ProductModel {
  final Products$Query$ProductPaginator$Product productDetails;
  ProductModel(this.productDetails);
}

class RelatedProductsModel {
  final List<RelatedProducts$Query$Product> relatedProducts;
  RelatedProductsModel(this.relatedProducts);
}

class RatingPaginatorModel {
  final Ratings$Query$RatingPaginator ratingPaginator;
  RatingPaginatorModel(this.ratingPaginator);
}

class OrderProductsModel {
  final OrderProducts$Query$ProductPaginator orderProducts;
  OrderProductsModel(this.orderProducts);
}
