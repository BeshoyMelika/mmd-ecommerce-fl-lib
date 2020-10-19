// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceCashOnDeliveryOrder$Mutation _$PlaceCashOnDeliveryOrder$MutationFromJson(
    Map<String, dynamic> json) {
  return PlaceCashOnDeliveryOrder$Mutation()
    ..placeCashOnDeliveryOrder = json['placeCashOnDeliveryOrder'] as bool;
}

Map<String, dynamic> _$PlaceCashOnDeliveryOrder$MutationToJson(
        PlaceCashOnDeliveryOrder$Mutation instance) =>
    <String, dynamic>{
      'placeCashOnDeliveryOrder': instance.placeCashOnDeliveryOrder,
    };

PlaceCreditCardOrder$Mutation$Tokenization
    _$PlaceCreditCardOrder$Mutation$TokenizationFromJson(
        Map<String, dynamic> json) {
  return PlaceCreditCardOrder$Mutation$Tokenization()
    ..serviceCommand = json['service_command'] as String
    ..accessCode = json['access_code'] as String
    ..merchantIdentifier = json['merchant_identifier'] as String
    ..merchantReference = json['merchant_reference'] as String
    ..currency = json['currency'] as String
    ..language = json['language'] as String
    ..signature = json['signature'] as String
    ..returnUrl = json['return_url'] as String;
}

Map<String, dynamic> _$PlaceCreditCardOrder$Mutation$TokenizationToJson(
        PlaceCreditCardOrder$Mutation$Tokenization instance) =>
    <String, dynamic>{
      'service_command': instance.serviceCommand,
      'access_code': instance.accessCode,
      'merchant_identifier': instance.merchantIdentifier,
      'merchant_reference': instance.merchantReference,
      'currency': instance.currency,
      'language': instance.language,
      'signature': instance.signature,
      'return_url': instance.returnUrl,
    };

PlaceCreditCardOrder$Mutation _$PlaceCreditCardOrder$MutationFromJson(
    Map<String, dynamic> json) {
  return PlaceCreditCardOrder$Mutation()
    ..placeCreditCardOrder = json['placeCreditCardOrder'] == null
        ? null
        : PlaceCreditCardOrder$Mutation$Tokenization.fromJson(
            json['placeCreditCardOrder'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PlaceCreditCardOrder$MutationToJson(
        PlaceCreditCardOrder$Mutation instance) =>
    <String, dynamic>{
      'placeCreditCardOrder': instance.placeCreditCardOrder?.toJson(),
    };

GetOrderBillingStatus$Query _$GetOrderBillingStatus$QueryFromJson(
    Map<String, dynamic> json) {
  return GetOrderBillingStatus$Query()
    ..getOrderBillingStatus = json['getOrderBillingStatus'] as String;
}

Map<String, dynamic> _$GetOrderBillingStatus$QueryToJson(
        GetOrderBillingStatus$Query instance) =>
    <String, dynamic>{
      'getOrderBillingStatus': instance.getOrderBillingStatus,
    };

SavedCardsApi$Query$SavedCard _$SavedCardsApi$Query$SavedCardFromJson(
    Map<String, dynamic> json) {
  return SavedCardsApi$Query$SavedCard()
    ..id = json['id'] as String
    ..cardHolderName = json['card_holder_name'] as String
    ..cardNumber = json['card_number'] as String
    ..paymentOption = json['payment_option'] as String
    ..expiryDate = json['expiry_date'] as String
    ..tokenName = json['token_name'] as String;
}

Map<String, dynamic> _$SavedCardsApi$Query$SavedCardToJson(
        SavedCardsApi$Query$SavedCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'card_holder_name': instance.cardHolderName,
      'card_number': instance.cardNumber,
      'payment_option': instance.paymentOption,
      'expiry_date': instance.expiryDate,
      'token_name': instance.tokenName,
    };

SavedCardsApi$Query _$SavedCardsApi$QueryFromJson(Map<String, dynamic> json) {
  return SavedCardsApi$Query()
    ..getSavedCards = (json['getSavedCards'] as List)
        ?.map((e) => e == null
            ? null
            : SavedCardsApi$Query$SavedCard.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SavedCardsApi$QueryToJson(
        SavedCardsApi$Query instance) =>
    <String, dynamic>{
      'getSavedCards':
          instance.getSavedCards?.map((e) => e?.toJson())?.toList(),
    };

PlaceCashOnDeliveryOrderArguments _$PlaceCashOnDeliveryOrderArgumentsFromJson(
    Map<String, dynamic> json) {
  return PlaceCashOnDeliveryOrderArguments(
    addressId: json['addressId'] as String,
    voucherId: json['voucherId'] as String,
  );
}

Map<String, dynamic> _$PlaceCashOnDeliveryOrderArgumentsToJson(
        PlaceCashOnDeliveryOrderArguments instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'voucherId': instance.voucherId,
    };

PlaceCreditCardOrderArguments _$PlaceCreditCardOrderArgumentsFromJson(
    Map<String, dynamic> json) {
  return PlaceCreditCardOrderArguments(
    addressId: json['addressId'] as String,
    voucherId: json['voucherId'] as String,
  );
}

Map<String, dynamic> _$PlaceCreditCardOrderArgumentsToJson(
        PlaceCreditCardOrderArguments instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'voucherId': instance.voucherId,
    };

GetOrderBillingStatusArguments _$GetOrderBillingStatusArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetOrderBillingStatusArguments(
    merchantReference: json['merchantReference'] as String,
  );
}

Map<String, dynamic> _$GetOrderBillingStatusArgumentsToJson(
        GetOrderBillingStatusArguments instance) =>
    <String, dynamic>{
      'merchantReference': instance.merchantReference,
    };
