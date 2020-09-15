// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class Profile with EquatableMixin {
  Profile();

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  User profile;

  @override
  List<Object> get props => [profile];
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User with EquatableMixin {
  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String id;

  String name;

  String email;

  String mobile;

  @override
  List<Object> get props => [id, name, email, mobile];
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

class ProfileQuery extends GraphQLQuery<Profile, JsonSerializable> {
  ProfileQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Profile'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'profile'),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'mobile'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Profile';

  @override
  List<Object> get props => [document, operationName];
  @override
  Profile parse(Map<String, dynamic> json) => Profile.fromJson(json);
}

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

  String device_token;

  @override
  List<Object> get props =>
      [access_token, refresh_token, expires_in, token_type, device_token];
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
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'device_token'),
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

@JsonSerializable(explicitToJson: true)
class UpdateProfile with EquatableMixin {
  UpdateProfile();

  factory UpdateProfile.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileFromJson(json);

  bool updateProfile;

  @override
  List<Object> get props => [updateProfile];
  Map<String, dynamic> toJson() => _$UpdateProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfileArguments extends JsonSerializable with EquatableMixin {
  UpdateProfileArguments({this.name, this.mobile});

  factory UpdateProfileArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileArgumentsFromJson(json);

  final String name;

  final String mobile;

  @override
  List<Object> get props => [name, mobile];
  Map<String, dynamic> toJson() => _$UpdateProfileArgumentsToJson(this);
}

class UpdateProfileQuery
    extends GraphQLQuery<UpdateProfile, UpdateProfileArguments> {
  UpdateProfileQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'UpdateProfile'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'name')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'mobile')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'updateProfile'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'name'),
                          value: VariableNode(name: NameNode(value: 'name'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'mobile'),
                          value: VariableNode(name: NameNode(value: 'mobile')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'UpdateProfile';

  @override
  final UpdateProfileArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UpdateProfile parse(Map<String, dynamic> json) =>
      UpdateProfile.fromJson(json);
}
