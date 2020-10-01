// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

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
class PlaceCreditCardOrderArguments extends JsonSerializable
    with EquatableMixin {
  PlaceCreditCardOrderArguments(
      {@required this.addressId, @required this.voucherId});

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
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
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
