library mmd_ecommerce_fl_lib;

export 'package:graphql_flutter/graphql_flutter.dart';

export './apis/auth_api_manager.dart';
export './apis/general_api_manager.dart';
export './apis/user_api_manager.dart';
export './apis/cart_api_manager.dart';
export './apis/product_api_manager.dart';
export './common_models/common_models.dart';
export './generatedql/auth/graphql_api.dart';
export './generatedql/order_products/graphql_api.dart'
    hide PaginatorInfo, Category, Media, Product, Unit;
export './generatedql/general/graphql_api.dart' hide Media;
export './generatedql/products/graphql_api.dart'
    hide Media, Category, Product, ProductPaginator, ProductData;
export './generatedql/cart/graphql_api.dart'
    hide Media, ProductData, Product, Unit;
export './generatedql/related_product/graphql_api.dart'
    hide Media, Category, ProductData, Unit;
export './generatedql/user/graphql_api.dart' hide AuthPayload, User;
export './generatedql/address/graphql_api.dart' hide PaginatorInfo;
export './generatedql/ratings/graphql_api.dart' hide PaginatorInfo, User;
export './generatedql/cartegoies/graphql_api.dart';
export './mmd_ecommerce.dart';
export './mmd_ecommerce_fl_lib.dart';
export './apis/api_keys.dart';

/// we hide the AuthPayload from "./generatedql/user/graphql_api.dart"
/// because we use the same name with "./generatedql/auth/graphql_api.dart"
/// guide link --> https://stackoverflow.com/a/22496742/2172590
