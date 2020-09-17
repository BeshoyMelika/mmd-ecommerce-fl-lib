// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCart _$AddToCartFromJson(Map<String, dynamic> json) {
  return AddToCart()..addToCart = json['addToCart'] as bool;
}

Map<String, dynamic> _$AddToCartToJson(AddToCart instance) => <String, dynamic>{
      'addToCart': instance.addToCart,
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

GetVoucherByCode _$GetVoucherByCodeFromJson(Map<String, dynamic> json) {
  return GetVoucherByCode()
    ..getVoucherByCode = json['getVoucherByCode'] == null
        ? null
        : Voucher.fromJson(json['getVoucherByCode'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetVoucherByCodeToJson(GetVoucherByCode instance) =>
    <String, dynamic>{
      'getVoucherByCode': instance.getVoucherByCode?.toJson(),
    };

Voucher _$VoucherFromJson(Map<String, dynamic> json) {
  return Voucher()
    ..id = json['id'] as String
    ..code = json['code'] as String
    ..discount = json['discount'] as int
    ..discount_type = json['discount_type'] as String;
}

Map<String, dynamic> _$VoucherToJson(Voucher instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discount': instance.discount,
      'discount_type': instance.discount_type,
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

GetCart _$GetCartFromJson(Map<String, dynamic> json) {
  return GetCart()
    ..cart = json['cart'] == null
        ? null
        : Cart.fromJson(json['cart'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetCartToJson(GetCart instance) => <String, dynamic>{
      'cart': instance.cart?.toJson(),
    };

Cart _$CartFromJson(Map<String, dynamic> json) {
  return Cart()
    ..total = json['total'] as String
    ..items = (json['items'] as List)
        ?.map((e) =>
            e == null ? null : CartItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'total': instance.total,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return CartItem()
    ..available = json['available'] as bool
    ..quantity = json['quantity'] as int
    ..product = json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartItemToJson(CartItem instance) => <String, dynamic>{
      'available': instance.available,
      'quantity': instance.quantity,
      'product': instance.product?.toJson(),
    };

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product()
    ..id = json['id'] as String
    ..averageRating = json['averageRating'] as String
    ..price = json['price'] as String
    ..available = json['available'] as bool
    ..details = json['details'] == null
        ? null
        : ProductData.fromJson(json['details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'averageRating': instance.averageRating,
      'price': instance.price,
      'available': instance.available,
      'details': instance.details?.toJson(),
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return ProductData()
    ..name = json['name'] as String
    ..sku = json['sku'] as String
    ..description = json['description'] as String
    ..cover = json['cover'] == null
        ? null
        : Media.fromJson(json['cover'] as Map<String, dynamic>)
    ..unit = json['unit'] == null
        ? null
        : Unit.fromJson(json['unit'] as Map<String, dynamic>)
    ..media = (json['media'] as List)
        ?.map(
            (e) => e == null ? null : Media.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..category = json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'description': instance.description,
      'cover': instance.cover?.toJson(),
      'unit': instance.unit?.toJson(),
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
    };

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media()..url = json['url'] as String;
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'url': instance.url,
    };

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return Unit()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category()..id = json['id'] as String;
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
    };

ShippingFees _$ShippingFeesFromJson(Map<String, dynamic> json) {
  return ShippingFees()..shippingFees = json['shippingFees'] as String;
}

Map<String, dynamic> _$ShippingFeesToJson(ShippingFees instance) =>
    <String, dynamic>{
      'shippingFees': instance.shippingFees,
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
