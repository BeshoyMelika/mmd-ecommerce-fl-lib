// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCart$Mutation _$AddToCart$MutationFromJson(Map<String, dynamic> json) {
  return AddToCart$Mutation()..addToCart = json['addToCart'] as bool;
}

Map<String, dynamic> _$AddToCart$MutationToJson(AddToCart$Mutation instance) =>
    <String, dynamic>{
      'addToCart': instance.addToCart,
    };

GetVoucherByCode$Query$Voucher _$GetVoucherByCode$Query$VoucherFromJson(
    Map<String, dynamic> json) {
  return GetVoucherByCode$Query$Voucher()
    ..id = json['id'] as String
    ..code = json['code'] as String
    ..discount = json['discount'] as int
    ..discountType = json['discount_type'] as String;
}

Map<String, dynamic> _$GetVoucherByCode$Query$VoucherToJson(
        GetVoucherByCode$Query$Voucher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discount': instance.discount,
      'discount_type': instance.discountType,
    };

GetVoucherByCode$Query _$GetVoucherByCode$QueryFromJson(
    Map<String, dynamic> json) {
  return GetVoucherByCode$Query()
    ..getVoucherByCode = json['getVoucherByCode'] == null
        ? null
        : GetVoucherByCode$Query$Voucher.fromJson(
            json['getVoucherByCode'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetVoucherByCode$QueryToJson(
        GetVoucherByCode$Query instance) =>
    <String, dynamic>{
      'getVoucherByCode': instance.getVoucherByCode?.toJson(),
    };

GetCart$Query$Cart$CartItem$Product
    _$GetCart$Query$Cart$CartItem$ProductFromJson(Map<String, dynamic> json) {
  return GetCart$Query$Cart$CartItem$Product()
    ..id = json['id'] as String
    ..averageRating = json['averageRating'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..minQuantity = json['min_quantity'] as String
    ..maxQuantity = json['max_quantity'] as String
    ..step = json['step'] as String
    ..details = json['details'] == null
        ? null
        : ProductMixin$ProductData.fromJson(
            json['details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetCart$Query$Cart$CartItem$ProductToJson(
        GetCart$Query$Cart$CartItem$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'averageRating': instance.averageRating,
      'price': instance.price,
      'available': instance.available,
      'min_quantity': instance.minQuantity,
      'max_quantity': instance.maxQuantity,
      'step': instance.step,
      'details': instance.details?.toJson(),
    };

GetCart$Query$Cart$CartItem _$GetCart$Query$Cart$CartItemFromJson(
    Map<String, dynamic> json) {
  return GetCart$Query$Cart$CartItem()
    ..available = json['available'] as bool
    ..quantity = json['quantity'] as int
    ..product = json['product'] == null
        ? null
        : GetCart$Query$Cart$CartItem$Product.fromJson(
            json['product'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetCart$Query$Cart$CartItemToJson(
        GetCart$Query$Cart$CartItem instance) =>
    <String, dynamic>{
      'available': instance.available,
      'quantity': instance.quantity,
      'product': instance.product?.toJson(),
    };

GetCart$Query$Cart _$GetCart$Query$CartFromJson(Map<String, dynamic> json) {
  return GetCart$Query$Cart()
    ..total = json['total'] as String
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : GetCart$Query$Cart$CartItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetCart$Query$CartToJson(GetCart$Query$Cart instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

GetCart$Query _$GetCart$QueryFromJson(Map<String, dynamic> json) {
  return GetCart$Query()
    ..cart = json['cart'] == null
        ? null
        : GetCart$Query$Cart.fromJson(json['cart'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetCart$QueryToJson(GetCart$Query instance) =>
    <String, dynamic>{
      'cart': instance.cart?.toJson(),
    };

ProductMixin$ProductData$Media _$ProductMixin$ProductData$MediaFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData$Media()..url = json['url'] as String;
}

Map<String, dynamic> _$ProductMixin$ProductData$MediaToJson(
        ProductMixin$ProductData$Media instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

ProductMixin$ProductData$Unit _$ProductMixin$ProductData$UnitFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData$Unit()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$ProductMixin$ProductData$UnitToJson(
        ProductMixin$ProductData$Unit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ProductMixin$ProductData$Category _$ProductMixin$ProductData$CategoryFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData$Category()..id = json['id'] as String;
}

Map<String, dynamic> _$ProductMixin$ProductData$CategoryToJson(
        ProductMixin$ProductData$Category instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ProductMixin$ProductData _$ProductMixin$ProductDataFromJson(
    Map<String, dynamic> json) {
  return ProductMixin$ProductData()
    ..name = json['name'] as String
    ..sku = json['sku'] as String
    ..description = json['description'] as String
    ..cover = json['cover'] == null
        ? null
        : ProductMixin$ProductData$Media.fromJson(
            json['cover'] as Map<String, dynamic>)
    ..unit = json['unit'] == null
        ? null
        : ProductMixin$ProductData$Unit.fromJson(
            json['unit'] as Map<String, dynamic>)
    ..media = (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : ProductMixin$ProductData$Media.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..category = json['category'] == null
        ? null
        : ProductMixin$ProductData$Category.fromJson(
            json['category'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductMixin$ProductDataToJson(
        ProductMixin$ProductData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'description': instance.description,
      'cover': instance.cover?.toJson(),
      'unit': instance.unit?.toJson(),
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
    };

ShippingFees$Query _$ShippingFees$QueryFromJson(Map<String, dynamic> json) {
  return ShippingFees$Query()..shippingFees = json['shippingFees'] as String;
}

Map<String, dynamic> _$ShippingFees$QueryToJson(ShippingFees$Query instance) =>
    <String, dynamic>{
      'shippingFees': instance.shippingFees,
    };

AddToCartArguments _$AddToCartArgumentsFromJson(Map<String, dynamic> json) {
  return AddToCartArguments(
    productId: json['productId'] as String,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$AddToCartArgumentsToJson(AddToCartArguments instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };

GetVoucherByCodeArguments _$GetVoucherByCodeArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetVoucherByCodeArguments(
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$GetVoucherByCodeArgumentsToJson(
        GetVoucherByCodeArguments instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

ShippingFeesArguments _$ShippingFeesArgumentsFromJson(
    Map<String, dynamic> json) {
  return ShippingFeesArguments(
    addressId: json['addressId'] as String,
    voucherId: json['voucherId'] as String,
  );
}

Map<String, dynamic> _$ShippingFeesArgumentsToJson(
        ShippingFeesArguments instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'voucherId': instance.voucherId,
    };
