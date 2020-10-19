// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PlaceCashOnDeliveryOrder$Mutation with EquatableMixin {
  PlaceCashOnDeliveryOrder$Mutation();

  factory PlaceCashOnDeliveryOrder$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceCashOnDeliveryOrder$MutationFromJson(json);

  bool placeCashOnDeliveryOrder;

  @override
  List<Object> get props => [placeCashOnDeliveryOrder];
  Map<String, dynamic> toJson() =>
      _$PlaceCashOnDeliveryOrder$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlaceCreditCardOrder$Mutation$Tokenization with EquatableMixin {
  PlaceCreditCardOrder$Mutation$Tokenization();

  factory PlaceCreditCardOrder$Mutation$Tokenization.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceCreditCardOrder$Mutation$TokenizationFromJson(json);

  @JsonKey(name: 'service_command')
  String serviceCommand;

  @JsonKey(name: 'access_code')
  String accessCode;

  @JsonKey(name: 'merchant_identifier')
  String merchantIdentifier;

  @JsonKey(name: 'merchant_reference')
  String merchantReference;

  String currency;

  String language;

  String signature;

  @JsonKey(name: 'return_url')
  String returnUrl;

  @override
  List<Object> get props => [
        serviceCommand,
        accessCode,
        merchantIdentifier,
        merchantReference,
        currency,
        language,
        signature,
        returnUrl
      ];
  Map<String, dynamic> toJson() =>
      _$PlaceCreditCardOrder$Mutation$TokenizationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlaceCreditCardOrder$Mutation with EquatableMixin {
  PlaceCreditCardOrder$Mutation();

  factory PlaceCreditCardOrder$Mutation.fromJson(Map<String, dynamic> json) =>
      _$PlaceCreditCardOrder$MutationFromJson(json);

  PlaceCreditCardOrder$Mutation$Tokenization placeCreditCardOrder;

  @override
  List<Object> get props => [placeCreditCardOrder];
  Map<String, dynamic> toJson() => _$PlaceCreditCardOrder$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOrderBillingStatus$Query with EquatableMixin {
  GetOrderBillingStatus$Query();

  factory GetOrderBillingStatus$Query.fromJson(Map<String, dynamic> json) =>
      _$GetOrderBillingStatus$QueryFromJson(json);

  String getOrderBillingStatus;

  @override
  List<Object> get props => [getOrderBillingStatus];
  Map<String, dynamic> toJson() => _$GetOrderBillingStatus$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SavedCardsApi$Query$SavedCard with EquatableMixin {
  SavedCardsApi$Query$SavedCard();

  factory SavedCardsApi$Query$SavedCard.fromJson(Map<String, dynamic> json) =>
      _$SavedCardsApi$Query$SavedCardFromJson(json);

  String id;

  @JsonKey(name: 'card_holder_name')
  String cardHolderName;

  @JsonKey(name: 'card_number')
  String cardNumber;

  @JsonKey(name: 'payment_option')
  String paymentOption;

  @JsonKey(name: 'expiry_date')
  String expiryDate;

  @JsonKey(name: 'token_name')
  String tokenName;

  @override
  List<Object> get props =>
      [id, cardHolderName, cardNumber, paymentOption, expiryDate, tokenName];
  Map<String, dynamic> toJson() => _$SavedCardsApi$Query$SavedCardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SavedCardsApi$Query with EquatableMixin {
  SavedCardsApi$Query();

  factory SavedCardsApi$Query.fromJson(Map<String, dynamic> json) =>
      _$SavedCardsApi$QueryFromJson(json);

  List<SavedCardsApi$Query$SavedCard> getSavedCards;

  @override
  List<Object> get props => [getSavedCards];
  Map<String, dynamic> toJson() => _$SavedCardsApi$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlaceCashOnDeliveryOrderArguments extends JsonSerializable
    with EquatableMixin {
  PlaceCashOnDeliveryOrderArguments({@required this.addressId, this.voucherId});

  @override
  factory PlaceCashOnDeliveryOrderArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceCashOnDeliveryOrderArgumentsFromJson(json);

  final String addressId;

  final String voucherId;

  @override
  List<Object> get props => [addressId, voucherId];
  @override
  Map<String, dynamic> toJson() =>
      _$PlaceCashOnDeliveryOrderArgumentsToJson(this);
}

class PlaceCashOnDeliveryOrderMutation extends GraphQLQuery<
    PlaceCashOnDeliveryOrder$Mutation, PlaceCashOnDeliveryOrderArguments> {
  PlaceCashOnDeliveryOrderMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'PlaceCashOnDeliveryOrder'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'addressId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'voucherId')),
              type:
                  NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'placeCashOnDeliveryOrder'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'address_id'),
                          value:
                              VariableNode(name: NameNode(value: 'addressId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'voucher_id'),
                          value:
                              VariableNode(name: NameNode(value: 'voucherId')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'PlaceCashOnDeliveryOrder';

  @override
  final PlaceCashOnDeliveryOrderArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PlaceCashOnDeliveryOrder$Mutation parse(Map<String, dynamic> json) =>
      PlaceCashOnDeliveryOrder$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PlaceCreditCardOrderArguments extends JsonSerializable
    with EquatableMixin {
  PlaceCreditCardOrderArguments({@required this.addressId, this.voucherId});

  @override
  factory PlaceCreditCardOrderArguments.fromJson(Map<String, dynamic> json) =>
      _$PlaceCreditCardOrderArgumentsFromJson(json);

  final String addressId;

  final String voucherId;

  @override
  List<Object> get props => [addressId, voucherId];
  @override
  Map<String, dynamic> toJson() => _$PlaceCreditCardOrderArgumentsToJson(this);
}

class PlaceCreditCardOrderMutation extends GraphQLQuery<
    PlaceCreditCardOrder$Mutation, PlaceCreditCardOrderArguments> {
  PlaceCreditCardOrderMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'PlaceCreditCardOrder'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'addressId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'voucherId')),
              type:
                  NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'placeCreditCardOrder'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'address_id'),
                          value:
                              VariableNode(name: NameNode(value: 'addressId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'voucher_id'),
                          value:
                              VariableNode(name: NameNode(value: 'voucherId')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'service_command'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'access_code'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'merchant_identifier'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'merchant_reference'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'currency'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'language'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'signature'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'return_url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'PlaceCreditCardOrder';

  @override
  final PlaceCreditCardOrderArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PlaceCreditCardOrder$Mutation parse(Map<String, dynamic> json) =>
      PlaceCreditCardOrder$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetOrderBillingStatusArguments extends JsonSerializable
    with EquatableMixin {
  GetOrderBillingStatusArguments({@required this.merchantReference});

  @override
  factory GetOrderBillingStatusArguments.fromJson(Map<String, dynamic> json) =>
      _$GetOrderBillingStatusArgumentsFromJson(json);

  final String merchantReference;

  @override
  List<Object> get props => [merchantReference];
  @override
  Map<String, dynamic> toJson() => _$GetOrderBillingStatusArgumentsToJson(this);
}

class GetOrderBillingStatusQuery extends GraphQLQuery<
    GetOrderBillingStatus$Query, GetOrderBillingStatusArguments> {
  GetOrderBillingStatusQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'GetOrderBillingStatus'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable:
                  VariableNode(name: NameNode(value: 'merchantReference')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'getOrderBillingStatus'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'merchant_reference'),
                    value: VariableNode(
                        name: NameNode(value: 'merchantReference')))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'GetOrderBillingStatus';

  @override
  final GetOrderBillingStatusArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetOrderBillingStatus$Query parse(Map<String, dynamic> json) =>
      GetOrderBillingStatus$Query.fromJson(json);
}

class SavedCardsApiQuery
    extends GraphQLQuery<SavedCardsApi$Query, JsonSerializable> {
  SavedCardsApiQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'SavedCardsApi'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'getSavedCards'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'card_holder_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'card_number'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'payment_option'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'expiry_date'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'token_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'SavedCardsApi';

  @override
  List<Object> get props => [document, operationName];
  @override
  SavedCardsApi$Query parse(Map<String, dynamic> json) =>
      SavedCardsApi$Query.fromJson(json);
}
