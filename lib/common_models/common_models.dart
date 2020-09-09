import 'package:mmd_ecommerce_fl_lib/generatedql/auth/graphql_api.dart' as A;
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.dart' as U;
import 'package:mmd_ecommerce_fl_lib/generatedql/products/graphql_api.dart'
    as P;
import 'package:mmd_ecommerce_fl_lib/generatedql/cart/graphql_api.dart' as C;
import 'package:mmd_ecommerce_fl_lib/generatedql/cartegoies/graphql_api.dart'
    as CT;
import 'package:mmd_ecommerce_fl_lib/generatedql/ratings/graphql_api.dart' as R;
import 'package:mmd_ecommerce_fl_lib/generatedql/related_product/graphql_api.dart'
    as RELATED;
import 'package:mmd_ecommerce_fl_lib/generatedql/order_products/graphql_api.dart'
    as O;

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

class MediaCard {
  final C.Media media;

  MediaCard(this.media);
}

class MediaProduct {
  final P.Media media;

  MediaProduct(this.media);
}

class MediaCategory {
  final CT.Media media;

  MediaCategory(this.media);
}

class CategoryModel {
  final CT.Category category;

  CategoryModel(this.category);
}

class RatingPaginatorModel {
  final R.RatingPaginator ratingPaginator;

  RatingPaginatorModel(this.ratingPaginator);
}

class ProductPaginatorModel {
  final P.ProductPaginator productPaginator;

  ProductPaginatorModel(this.productPaginator);
}

class ProductDetailsModel {
  final P.Product productDetails;

  ProductDetailsModel(this.productDetails);
}

class RelatedProductsModel {
  final List<RELATED.Product> products;

  RelatedProductsModel(this.products);
}

class NewProductsModel {
  final O.ProductPaginator productPaginator;

  NewProductsModel(this.productPaginator);
}
