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
export './generatedql/products/graphql_api.dart';
export './generatedql/order_products/graphql_api.dart'
    hide
        PagingMixin,
        ProductMixin,
        ProductMixin$ProductData$Unit,
        ProductMixin$ProductData$Media,
        ProductMixin$ProductData,
        ProductMixin$ProductData$Category;

export './generatedql/cart/graphql_api.dart'
    hide
        ProductMixin,
        ProductMixin$ProductData$Unit,
        ProductMixin$ProductData$Media,
        ProductMixin$ProductData,
        ProductMixin$ProductData$Category;
export './generatedql/related_product/graphql_api.dart'
    hide
        ProductMixin,
        ProductMixin$ProductData$Unit,
        ProductMixin$ProductData$Media,
        ProductMixin$ProductData,
        ProductMixin$ProductData$Category;
export './generatedql/ratings/graphql_api.dart' hide PagingMixin;
export './generatedql/categories/graphql_api.dart';
export './generatedql/orders/graphql_api.dart' hide PagingMixin;
export './generatedql/auth/graphql_api.dart';
export './generatedql/general/graphql_api.dart';
export './generatedql/user/graphql_api.dart' hide UserMixin;
export './generatedql/address_asset/graphql_api.dart';
export './generatedql/address/graphql_api.dart' hide PagingMixin;
export './mmd_ecommerce.dart';
export './mmd_ecommerce_fl_lib.dart';

/// we hide the AuthPayload from "./generatedql/user/graphql_api.dart"
/// because we use the same name with "./generatedql/auth/graphql_api.dart"
/// guide link --> https://stackoverflow.com/a/22496742/2172590
