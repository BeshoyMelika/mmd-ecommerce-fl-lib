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
    productId: json['productId'] as int,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$AddToCartArgumentsToJson(AddToCartArguments instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
