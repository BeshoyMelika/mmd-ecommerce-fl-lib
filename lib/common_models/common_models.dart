import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/categories/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/general/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/products/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/ratings/graphql_api.graphql.dart';
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

class CityModel {
  final Cities$Query$City city;
  CityModel(this.city);
}

class CitiesModel {
  final List<Cities$Query$City> cities;
  CitiesModel(this.cities);
}

class AreaModel {
  final AreaByID$Query$Area area;
  AreaModel(this.area);
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

// class SliderModel {
//   final Sliders$Query$Slider slider;
//   SliderModel(this.slider);
// }

class SlidersModel {
  final List<Sliders$Query$Slider> sliders;
  SlidersModel(this.sliders);
}

class CategoryModel {
  final Categories$Query$Category category;
  CategoryModel(this.category);
}

class CategoriesModel {
  final List<Categories$Query$Category> categories;
  CategoriesModel(this.categories);
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

class BrandModel {
  final List<Brands$Query$Brand> brand;
  BrandModel(this.brand);
}
