library mmd_ecommerce_fl_lib;

export 'package:graphql_flutter/graphql_flutter.dart';

export './apis/auth_api_manager.dart';
export './apis/base/api_keys.dart';
export './apis/error/api_error_helper.dart';
export './apis/error/api_error_model.dart';
export './apis/general_api_manager.dart';
export './apis/user_api_manager.dart';
export './apis/product_api_manager.dart';
export './apis/cart_api_manager.dart';
export './apis/address_api_manager.dart';
export './common_models/common_models.dart';
export './generatedql/order_products/graphql_api.dart'
    hide PaginatorInfo, Category, Media, Product, Unit;
export './generatedql/products/graphql_api.dart'
    hide Media, Category, Product, ProductPaginator, ProductData, PagingMixin;
export './generatedql/cart/graphql_api.dart'
    hide Media, ProductData, Product, Unit;
export './generatedql/related_product/graphql_api.dart'
    hide Media, Category, ProductData, Unit, Product;
export './generatedql/ratings/graphql_api.dart'
    hide PaginatorInfo, User, PagingMixin;
export './generatedql/categories/graphql_api.dart';
export './generatedql/orders/graphql_api.dart' hide PaginatorInfo, PagingMixin;
export './generatedql/auth/graphql_api.dart' hide AuthPayload, User;
export './generatedql/general/graphql_api.dart' hide Media;
export './generatedql/user/graphql_api.dart' hide AuthPayload, User;
export './generatedql/address/graphql_api.dart' hide PagingMixin, PaginatorInfo;
export './mmd_ecommerce.dart';
export './mmd_ecommerce_fl_lib.dart';

/// we hide the AuthPayload from "./generatedql/user/graphql_api.dart"
/// because we use the same name with "./generatedql/auth/graphql_api.dart"
/// guide link --> https://stackoverflow.com/a/22496742/2172590
