// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class RefreshToken with EquatableMixin {
  RefreshToken();

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);

  AuthPayload refreshToken;

  @override
  List<Object> get props => [refreshToken];
  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthPayload with EquatableMixin {
  AuthPayload();

  factory AuthPayload.fromJson(Map<String, dynamic> json) =>
      _$AuthPayloadFromJson(json);

  String access_token;

  String refresh_token;

  int expires_in;

  String token_type;

  @override
  List<Object> get props =>
      [access_token, refresh_token, expires_in, token_type];
  Map<String, dynamic> toJson() => _$AuthPayloadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefreshTokenArguments extends JsonSerializable with EquatableMixin {
  RefreshTokenArguments({this.token});

  factory RefreshTokenArguments.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenArgumentsFromJson(json);

  final String token;

  @override
  List<Object> get props => [token];
  Map<String, dynamic> toJson() => _$RefreshTokenArgumentsToJson(this);
}

class RefreshTokenQuery
    extends GraphQLQuery<RefreshToken, RefreshTokenArguments> {
  RefreshTokenQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'RefreshToken'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'token')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'refreshToken'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'token'),
                    value: VariableNode(name: NameNode(value: 'token')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'access_token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'refresh_token'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'expires_in'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'token_type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'RefreshToken';

  @override
  final RefreshTokenArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  RefreshToken parse(Map<String, dynamic> json) => RefreshToken.fromJson(json);
}
