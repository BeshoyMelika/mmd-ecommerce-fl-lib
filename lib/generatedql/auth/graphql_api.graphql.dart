// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class SignUp$Mutation$User with EquatableMixin {
  SignUp$Mutation$User();

  factory SignUp$Mutation$User.fromJson(Map<String, dynamic> json) =>
      _$SignUp$Mutation$UserFromJson(json);

  String id;

  String name;

  String email;

  String mobile;

  @override
  List<Object> get props => [id, name, email, mobile];
  Map<String, dynamic> toJson() => _$SignUp$Mutation$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignUp$Mutation with EquatableMixin {
  SignUp$Mutation();

  factory SignUp$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SignUp$MutationFromJson(json);

  SignUp$Mutation$User register;

  @override
  List<Object> get props => [register];
  Map<String, dynamic> toJson() => _$SignUp$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResetPassword$Mutation with EquatableMixin {
  ResetPassword$Mutation();

  factory ResetPassword$Mutation.fromJson(Map<String, dynamic> json) =>
      _$ResetPassword$MutationFromJson(json);

  bool resetPassword;

  @override
  List<Object> get props => [resetPassword];
  Map<String, dynamic> toJson() => _$ResetPassword$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Logout$Mutation with EquatableMixin {
  Logout$Mutation();

  factory Logout$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Logout$MutationFromJson(json);

  bool logout;

  @override
  List<Object> get props => [logout];
  Map<String, dynamic> toJson() => _$Logout$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgetPassword$Mutation with EquatableMixin {
  ForgetPassword$Mutation();

  factory ForgetPassword$Mutation.fromJson(Map<String, dynamic> json) =>
      _$ForgetPassword$MutationFromJson(json);

  bool forgetPassword;

  @override
  List<Object> get props => [forgetPassword];
  Map<String, dynamic> toJson() => _$ForgetPassword$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignIn$Mutation$AuthPayload with EquatableMixin {
  SignIn$Mutation$AuthPayload();

  factory SignIn$Mutation$AuthPayload.fromJson(Map<String, dynamic> json) =>
      _$SignIn$Mutation$AuthPayloadFromJson(json);

  @JsonKey(name: 'access_token')
  String accessToken;

  @JsonKey(name: 'refresh_token')
  String refreshToken;

  @JsonKey(name: 'expires_in')
  int expiresIn;

  @JsonKey(name: 'token_type')
  String tokenType;

  @override
  List<Object> get props => [accessToken, refreshToken, expiresIn, tokenType];
  Map<String, dynamic> toJson() => _$SignIn$Mutation$AuthPayloadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignIn$Mutation with EquatableMixin {
  SignIn$Mutation();

  factory SignIn$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SignIn$MutationFromJson(json);

  SignIn$Mutation$AuthPayload login;

  @override
  List<Object> get props => [login];
  Map<String, dynamic> toJson() => _$SignIn$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignUpArguments extends JsonSerializable with EquatableMixin {
  SignUpArguments(
      {@required this.name, @required this.email, @required this.password});

  @override
  factory SignUpArguments.fromJson(Map<String, dynamic> json) =>
      _$SignUpArgumentsFromJson(json);

  final String name;

  final String email;

  final String password;

  @override
  List<Object> get props => [name, email, password];
  @override
  Map<String, dynamic> toJson() => _$SignUpArgumentsToJson(this);
}

class SignUpMutation extends GraphQLQuery<SignUp$Mutation, SignUpArguments> {
  SignUpMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'SignUp'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'name')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'password')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'register'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'name'),
                          value: VariableNode(name: NameNode(value: 'name'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'email'),
                          value: VariableNode(name: NameNode(value: 'email'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'password'),
                          value:
                              VariableNode(name: NameNode(value: 'password'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'password_confirmation'),
                          value:
                              VariableNode(name: NameNode(value: 'password')))
                    ]))
              ],
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
  final String operationName = 'SignUp';

  @override
  final SignUpArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  SignUp$Mutation parse(Map<String, dynamic> json) =>
      SignUp$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ResetPasswordArguments extends JsonSerializable with EquatableMixin {
  ResetPasswordArguments(
      {@required this.email, @required this.newPassword, @required this.token});

  @override
  factory ResetPasswordArguments.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordArgumentsFromJson(json);

  final String email;

  final String newPassword;

  final String token;

  @override
  List<Object> get props => [email, newPassword, token];
  @override
  Map<String, dynamic> toJson() => _$ResetPasswordArgumentsToJson(this);
}

class ResetPasswordMutation
    extends GraphQLQuery<ResetPassword$Mutation, ResetPasswordArguments> {
  ResetPasswordMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'ResetPassword'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'newPassword')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
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
              name: NameNode(value: 'resetPassword'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'email'),
                          value: VariableNode(name: NameNode(value: 'email'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'new_password'),
                          value: VariableNode(
                              name: NameNode(value: 'newPassword'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'token'),
                          value: VariableNode(name: NameNode(value: 'token')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'ResetPassword';

  @override
  final ResetPasswordArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ResetPassword$Mutation parse(Map<String, dynamic> json) =>
      ResetPassword$Mutation.fromJson(json);
}

class LogoutMutation extends GraphQLQuery<Logout$Mutation, JsonSerializable> {
  LogoutMutation();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'Logout'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'logout'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'Logout';

  @override
  List<Object> get props => [document, operationName];
  @override
  Logout$Mutation parse(Map<String, dynamic> json) =>
      Logout$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ForgetPasswordArguments extends JsonSerializable with EquatableMixin {
  ForgetPasswordArguments({@required this.email});

  @override
  factory ForgetPasswordArguments.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordArgumentsFromJson(json);

  final String email;

  @override
  List<Object> get props => [email];
  @override
  Map<String, dynamic> toJson() => _$ForgetPasswordArgumentsToJson(this);
}

class ForgetPasswordMutation
    extends GraphQLQuery<ForgetPassword$Mutation, ForgetPasswordArguments> {
  ForgetPasswordMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'ForgetPassword'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'forgetPassword'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'email'),
                    value: VariableNode(name: NameNode(value: 'email')))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'ForgetPassword';

  @override
  final ForgetPasswordArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ForgetPassword$Mutation parse(Map<String, dynamic> json) =>
      ForgetPassword$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SignInArguments extends JsonSerializable with EquatableMixin {
  SignInArguments(
      {@required this.email,
      @required this.password,
      @required this.deviceToken});

  @override
  factory SignInArguments.fromJson(Map<String, dynamic> json) =>
      _$SignInArgumentsFromJson(json);

  final String email;

  final String password;

  final String deviceToken;

  @override
  List<Object> get props => [email, password, deviceToken];
  @override
  Map<String, dynamic> toJson() => _$SignInArgumentsToJson(this);
}

class SignInMutation extends GraphQLQuery<SignIn$Mutation, SignInArguments> {
  SignInMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'SignIn'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'password')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'deviceToken')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'login'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'email'),
                          value: VariableNode(name: NameNode(value: 'email'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'password'),
                          value:
                              VariableNode(name: NameNode(value: 'password'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'device_token'),
                          value: VariableNode(
                              name: NameNode(value: 'deviceToken')))
                    ]))
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
  final String operationName = 'SignIn';

  @override
  final SignInArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  SignIn$Mutation parse(Map<String, dynamic> json) =>
      SignIn$Mutation.fromJson(json);
}
