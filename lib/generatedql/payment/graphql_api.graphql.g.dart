// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
