import 'package:mmd_ecommerce_fl_lib/generatedql/address/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/address_asset/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/categories/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/general/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/orders/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/payment/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/products/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/ratings/graphql_api.graphql.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.graphql.dart';

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

class AddressesWrapper {
  final GetAllAddress$Query$UserAddressPaginator addressPaginator;

  AddressesWrapper(this.addressPaginator);
}

class CityModel {
  final Cities$Query$City city;

  CityModel(this.city);
}

class CitiesList {
  final List<Cities$Query$City> cities;

  CitiesList(this.cities);
}

class AreaModel {
  final AreaByID$Query$Area area;

  AreaModel(this.area);
}

class AreasList {
  final List<AreaByID$Query$Area> areas;

  AreasList(this.areas);
}

class OrdersWrapper {
  final Orders$Query$OrderPaginator orders;

  OrdersWrapper(this.orders);
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
  final Sliders$Query$Slider slider;

  SliderModel(this.slider);
}

class SliderList {
  final List<Sliders$Query$Slider> sliders;

  SliderList(this.sliders);
}

class CategoryModel {
  final Categories$Query$Category category;

  CategoryModel(this.category);
}

class CategoriesList {
  final List<Categories$Query$Category> categories;

  CategoriesList(this.categories);
}

class ProductsPaginatorWrapper {
  final Products$Query$ProductPaginator productsPaginator;

  ProductsPaginatorWrapper(this.productsPaginator);
}

class ProductModel {
  final Products$Query$ProductPaginator$Product productDetails;

  ProductModel(this.productDetails);
}

class RelatedProductsList {
  final List<RelatedProducts$Query$Product> relatedProducts;

  RelatedProductsList(this.relatedProducts);
}

class RatingPaginatorWrapper {
  final Ratings$Query$RatingPaginator ratingPaginator;

  RatingPaginatorWrapper(this.ratingPaginator);
}

class OrderProductsWrapper {
  final OrderProducts$Query$ProductPaginator orderProducts;

  OrderProductsWrapper(this.orderProducts);
}

class BrandList {
  final List<Brands$Query$Brand> brand;

  BrandList(this.brand);
}

class SavedCardList {
  final List<SavedCards$Query$SavedCard> savedCards;

  SavedCardList(this.savedCards);
}

class CartItemModel {
  final GetCart$Query$Cart$CartItem cartItem;

  CartItemModel(this.cartItem);
}

class PlaceCreditCardOrderModel {
  final PlaceCreditCardOrder$Mutation$Tokenization tokenization;

  PlaceCreditCardOrderModel(this.tokenization);
}

class PlaceSavedCreditCardOrderModel {
  final PlaceSavedCreditCardOrder$Mutation$PurchaseParameters
      placeSavedCreditCardOrder;

  PlaceSavedCreditCardOrderModel(this.placeSavedCreditCardOrder);
}
