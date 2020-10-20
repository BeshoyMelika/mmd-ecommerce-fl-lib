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

SavedCards$Query$SavedCard _$SavedCards$Query$SavedCardFromJson(
    Map<String, dynamic> json) {
  return SavedCards$Query$SavedCard()
    ..id = json['id'] as String
    ..cardHolderName = json['card_holder_name'] as String
    ..cardNumber = json['card_number'] as String
    ..paymentOption = json['payment_option'] as String
    ..expiryDate = json['expiry_date'] as String
    ..tokenName = json['token_name'] as String;
}

Map<String, dynamic> _$SavedCards$Query$SavedCardToJson(
        SavedCards$Query$SavedCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'card_holder_name': instance.cardHolderName,
      'card_number': instance.cardNumber,
      'payment_option': instance.paymentOption,
      'expiry_date': instance.expiryDate,
      'token_name': instance.tokenName,
    };

SavedCards$Query _$SavedCards$QueryFromJson(Map<String, dynamic> json) {
  return SavedCards$Query()
    ..getSavedCards = (json['getSavedCards'] as List)
        ?.map((e) => e == null
            ? null
            : SavedCards$Query$SavedCard.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SavedCards$QueryToJson(SavedCards$Query instance) =>
    <String, dynamic>{
      'getSavedCards':
          instance.getSavedCards?.map((e) => e?.toJson())?.toList(),
    };

PlaceSavedCreditCardOrder$Mutation$PurchaseParameters
    _$PlaceSavedCreditCardOrder$Mutation$PurchaseParametersFromJson(
        Map<String, dynamic> json) {
  return PlaceSavedCreditCardOrder$Mutation$PurchaseParameters()
    ..merchantIdentifier = json['merchant_identifier'] as String
    ..accessCode = json['access_code'] as String
    ..currency = json['currency'] as String
    ..language = json['language'] as String
    ..command = json['command'] as String
    ..returnUrl = json['return_url'] as String
    ..customerIp = json['customer_ip'] as String
    ..tokenName = json['token_name'] as String
    ..merchantReference = json['merchant_reference'] as String
    ..customerEmail = json['customer_email'] as String
    ..rememberMe = json['remember_me'] as String
    ..amount = json['amount'] as String
    ..cardSecurityCode = json['card_security_code'] as String;
}

Map<String, dynamic>
    _$PlaceSavedCreditCardOrder$Mutation$PurchaseParametersToJson(
            PlaceSavedCreditCardOrder$Mutation$PurchaseParameters instance) =>
        <String, dynamic>{
          'merchant_identifier': instance.merchantIdentifier,
          'access_code': instance.accessCode,
          'currency': instance.currency,
          'language': instance.language,
          'command': instance.command,
          'return_url': instance.returnUrl,
          'customer_ip': instance.customerIp,
          'token_name': instance.tokenName,
          'merchant_reference': instance.merchantReference,
          'customer_email': instance.customerEmail,
          'remember_me': instance.rememberMe,
          'amount': instance.amount,
          'card_security_code': instance.cardSecurityCode,
        };

PlaceSavedCreditCardOrder$Mutation _$PlaceSavedCreditCardOrder$MutationFromJson(
    Map<String, dynamic> json) {
  return PlaceSavedCreditCardOrder$Mutation()
    ..placeSavedCreditCardOrder = json['placeSavedCreditCardOrder'] == null
        ? null
        : PlaceSavedCreditCardOrder$Mutation$PurchaseParameters.fromJson(
            json['placeSavedCreditCardOrder'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PlaceSavedCreditCardOrder$MutationToJson(
        PlaceSavedCreditCardOrder$Mutation instance) =>
    <String, dynamic>{
      'placeSavedCreditCardOrder': instance.placeSavedCreditCardOrder?.toJson(),
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

PlaceSavedCreditCardOrderArguments _$PlaceSavedCreditCardOrderArgumentsFromJson(
    Map<String, dynamic> json) {
  return PlaceSavedCreditCardOrderArguments(
    addressId: json['addressId'] as String,
    voucherId: json['voucherId'] as String,
    savedCardId: json['savedCardId'] as String,
    cardSecurityCode: json['cardSecurityCode'] as String,
  );
}

Map<String, dynamic> _$PlaceSavedCreditCardOrderArgumentsToJson(
        PlaceSavedCreditCardOrderArguments instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'voucherId': instance.voucherId,
      'savedCardId': instance.savedCardId,
      'cardSecurityCode': instance.cardSecurityCode,
    };
