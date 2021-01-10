// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class SavedCards$Query$SavedCard with EquatableMixin {
  SavedCards$Query$SavedCard();

  factory SavedCards$Query$SavedCard.fromJson(Map<String, dynamic> json) =>
      _$SavedCards$Query$SavedCardFromJson(json);

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
  Map<String, dynamic> toJson() => _$SavedCards$Query$SavedCardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SavedCards$Query with EquatableMixin {
  SavedCards$Query();

  factory SavedCards$Query.fromJson(Map<String, dynamic> json) =>
      _$SavedCards$QueryFromJson(json);

  List<SavedCards$Query$SavedCard> getSavedCards;

  @override
  List<Object> get props => [getSavedCards];
  Map<String, dynamic> toJson() => _$SavedCards$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlaceSavedCreditCardOrder$Mutation$PurchaseParameters
    with EquatableMixin {
  PlaceSavedCreditCardOrder$Mutation$PurchaseParameters();

  factory PlaceSavedCreditCardOrder$Mutation$PurchaseParameters.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceSavedCreditCardOrder$Mutation$PurchaseParametersFromJson(json);

  @JsonKey(name: 'merchant_identifier')
  String merchantIdentifier;

  @JsonKey(name: 'access_code')
  String accessCode;

  String currency;

  String language;

  String command;

  @JsonKey(name: 'return_url')
  String returnUrl;

  @JsonKey(name: 'customer_ip')
  String customerIp;

  @JsonKey(name: 'token_name')
  String tokenName;

  @JsonKey(name: 'merchant_reference')
  String merchantReference;

  @JsonKey(name: 'customer_email')
  String customerEmail;

  @JsonKey(name: 'remember_me')
  String rememberMe;

  String amount;

  @JsonKey(name: 'card_security_code')
  String cardSecurityCode;

  String signature;

  @override
  List<Object> get props => [
        merchantIdentifier,
        accessCode,
        currency,
        language,
        command,
        returnUrl,
        customerIp,
        tokenName,
        merchantReference,
        customerEmail,
        rememberMe,
        amount,
        cardSecurityCode,
        signature
      ];
  Map<String, dynamic> toJson() =>
      _$PlaceSavedCreditCardOrder$Mutation$PurchaseParametersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlaceSavedCreditCardOrder$Mutation with EquatableMixin {
  PlaceSavedCreditCardOrder$Mutation();

  factory PlaceSavedCreditCardOrder$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceSavedCreditCardOrder$MutationFromJson(json);

  PlaceSavedCreditCardOrder$Mutation$PurchaseParameters
      placeSavedCreditCardOrder;

  @override
  List<Object> get props => [placeSavedCreditCardOrder];
  Map<String, dynamic> toJson() =>
      _$PlaceSavedCreditCardOrder$MutationToJson(this);
}

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

class SavedCardsQuery extends GraphQLQuery<SavedCards$Query, JsonSerializable> {
  SavedCardsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'SavedCards'),
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
  final String operationName = 'SavedCards';

  @override
  List<Object> get props => [document, operationName];
  @override
  SavedCards$Query parse(Map<String, dynamic> json) =>
      SavedCards$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PlaceSavedCreditCardOrderArguments extends JsonSerializable
    with EquatableMixin {
  PlaceSavedCreditCardOrderArguments(
      {@required this.addressId,
      this.voucherId,
      @required this.savedCardId,
      @required this.cardSecurityCode});

  @override
  factory PlaceSavedCreditCardOrderArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceSavedCreditCardOrderArgumentsFromJson(json);

  final String addressId;

  final String voucherId;

  final String savedCardId;

  final String cardSecurityCode;

  @override
  List<Object> get props =>
      [addressId, voucherId, savedCardId, cardSecurityCode];
  @override
  Map<String, dynamic> toJson() =>
      _$PlaceSavedCreditCardOrderArgumentsToJson(this);
}

class PlaceSavedCreditCardOrderMutation extends GraphQLQuery<
    PlaceSavedCreditCardOrder$Mutation, PlaceSavedCreditCardOrderArguments> {
  PlaceSavedCreditCardOrderMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'PlaceSavedCreditCardOrder'),
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
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'savedCardId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'cardSecurityCode')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'placeSavedCreditCardOrder'),
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
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'saved_card_id'),
                    value: VariableNode(name: NameNode(value: 'savedCardId'))),
                ArgumentNode(
                    name: NameNode(value: 'card_security_code'),
                    value:
                        VariableNode(name: NameNode(value: 'cardSecurityCode')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'merchant_identifier'),
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
                    name: NameNode(value: 'command'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'return_url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'customer_ip'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'token_name'),
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
                    name: NameNode(value: 'customer_email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'remember_me'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'card_security_code'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'signature'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'PlaceSavedCreditCardOrder';

  @override
  final PlaceSavedCreditCardOrderArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PlaceSavedCreditCardOrder$Mutation parse(Map<String, dynamic> json) =>
      PlaceSavedCreditCardOrder$Mutation.fromJson(json);
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
