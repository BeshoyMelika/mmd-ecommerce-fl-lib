// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin AuthPayloadMixin {
  @JsonKey(name: 'access_token')
  String accessToken;
  @JsonKey(name: 'refresh_token')
  String refreshToken;
  @JsonKey(name: 'expires_in')
  int expiresIn;
  @JsonKey(name: 'token_type')
  String tokenType;
}
mixin UserMixin {
  String id;
  String name;
  String email;
  String mobile;
  @JsonKey(name: 'is_notifiable')
  bool isNotifiable;
}

@JsonSerializable(explicitToJson: true)
class RefreshToken$Mutation$AuthPayload with EquatableMixin, AuthPayloadMixin {
  RefreshToken$Mutation$AuthPayload();

  factory RefreshToken$Mutation$AuthPayload.fromJson(
          Map<String, dynamic> json) =>
      _$RefreshToken$Mutation$AuthPayloadFromJson(json);

  @override
  List<Object> get props => [accessToken, refreshToken, expiresIn, tokenType];
  Map<String, dynamic> toJson() =>
      _$RefreshToken$Mutation$AuthPayloadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefreshToken$Mutation with EquatableMixin {
  RefreshToken$Mutation();

  factory RefreshToken$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RefreshToken$MutationFromJson(json);

  RefreshToken$Mutation$AuthPayload refreshToken;

  @override
  List<Object> get props => [refreshToken];
  Map<String, dynamic> toJson() => _$RefreshToken$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Profile$Query$User with EquatableMixin, UserMixin {
  Profile$Query$User();

  factory Profile$Query$User.fromJson(Map<String, dynamic> json) =>
      _$Profile$Query$UserFromJson(json);

  @override
  List<Object> get props => [id, name, email, mobile, isNotifiable];
  Map<String, dynamic> toJson() => _$Profile$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Profile$Query with EquatableMixin {
  Profile$Query();

  factory Profile$Query.fromJson(Map<String, dynamic> json) =>
      _$Profile$QueryFromJson(json);

  Profile$Query$User profile;

  @override
  List<Object> get props => [profile];
  Map<String, dynamic> toJson() => _$Profile$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfile$Mutation with EquatableMixin {
  UpdateProfile$Mutation();

  factory UpdateProfile$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfile$MutationFromJson(json);

  bool updateProfile;

  @override
  List<Object> get props => [updateProfile];
  Map<String, dynamic> toJson() => _$UpdateProfile$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShouldEnableNotification$Mutation with EquatableMixin {
  ShouldEnableNotification$Mutation();

  factory ShouldEnableNotification$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$ShouldEnableNotification$MutationFromJson(json);

  bool updateProfile;

  @override
  List<Object> get props => [updateProfile];
  Map<String, dynamic> toJson() =>
      _$ShouldEnableNotification$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RefreshTokenArguments extends JsonSerializable with EquatableMixin {
  RefreshTokenArguments({@required this.token});

  @override
  factory RefreshTokenArguments.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenArgumentsFromJson(json);

  final String token;

  @override
  List<Object> get props => [token];
  @override
  Map<String, dynamic> toJson() => _$RefreshTokenArgumentsToJson(this);
}

class RefreshTokenMutation
    extends GraphQLQuery<RefreshToken$Mutation, RefreshTokenArguments> {
  RefreshTokenMutation({this.variables});

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
                FragmentSpreadNode(
                    name: NameNode(value: 'AuthPayload'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'AuthPayload'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'AuthPayload'), isNonNull: false)),
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
  ]);

  @override
  final String operationName = 'RefreshToken';

  @override
  final RefreshTokenArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  RefreshToken$Mutation parse(Map<String, dynamic> json) =>
      RefreshToken$Mutation.fromJson(json);
}

class ProfileQuery extends GraphQLQuery<Profile$Query, JsonSerializable> {
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
                FragmentSpreadNode(
                    name: NameNode(value: 'User'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'User'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'is_notifiable'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'Profile';

  @override
  List<Object> get props => [document, operationName];
  @override
  Profile$Query parse(Map<String, dynamic> json) =>
      Profile$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfileArguments extends JsonSerializable with EquatableMixin {
  UpdateProfileArguments({this.name, this.mobile});

  @override
  factory UpdateProfileArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileArgumentsFromJson(json);

  final String name;

  final String mobile;

  @override
  List<Object> get props => [name, mobile];
  @override
  Map<String, dynamic> toJson() => _$UpdateProfileArgumentsToJson(this);
}

class UpdateProfileMutation
    extends GraphQLQuery<UpdateProfile$Mutation, UpdateProfileArguments> {
  UpdateProfileMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'UpdateProfile'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'name')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'mobile')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
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
  UpdateProfile$Mutation parse(Map<String, dynamic> json) =>
      UpdateProfile$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ShouldEnableNotificationArguments extends JsonSerializable
    with EquatableMixin {
  ShouldEnableNotificationArguments({this.isNotifiable});

  @override
  factory ShouldEnableNotificationArguments.fromJson(
          Map<String, dynamic> json) =>
      _$ShouldEnableNotificationArgumentsFromJson(json);

  final bool isNotifiable;

  @override
  List<Object> get props => [isNotifiable];
  @override
  Map<String, dynamic> toJson() =>
      _$ShouldEnableNotificationArgumentsToJson(this);
}

class ShouldEnableNotificationMutation extends GraphQLQuery<
    ShouldEnableNotification$Mutation, ShouldEnableNotificationArguments> {
  ShouldEnableNotificationMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'ShouldEnableNotification'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'isNotifiable')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Boolean'), isNonNull: false),
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
                          name: NameNode(value: 'is_notifiable'),
                          value: VariableNode(
                              name: NameNode(value: 'isNotifiable')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'ShouldEnableNotification';

  @override
  final ShouldEnableNotificationArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ShouldEnableNotification$Mutation parse(Map<String, dynamic> json) =>
      ShouldEnableNotification$Mutation.fromJson(json);
}
