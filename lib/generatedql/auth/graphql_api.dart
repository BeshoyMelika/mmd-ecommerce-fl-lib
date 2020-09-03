// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class SignUp with EquatableMixin {
  SignUp();

  factory SignUp.fromJson(Map<String, dynamic> json) => _$SignUpFromJson(json);

  User register;

  @override
  List<Object> get props => [register];
  Map<String, dynamic> toJson() => _$SignUpToJson(this);
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

@JsonSerializable(explicitToJson: true)
class SignUpArguments extends JsonSerializable with EquatableMixin {
  SignUpArguments({this.name, this.email, this.password});

  factory SignUpArguments.fromJson(Map<String, dynamic> json) =>
      _$SignUpArgumentsFromJson(json);

  final String name;

  final String email;

  final String password;

  @override
  List<Object> get props => [name, email, password];
  Map<String, dynamic> toJson() => _$SignUpArgumentsToJson(this);
}

class SignUpQuery extends GraphQLQuery<SignUp, SignUpArguments> {
  SignUpQuery({this.variables});

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
  SignUp parse(Map<String, dynamic> json) => SignUp.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ResetPassword with EquatableMixin {
  ResetPassword();

  factory ResetPassword.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordFromJson(json);

  bool resetPassword;

  @override
  List<Object> get props => [resetPassword];
  Map<String, dynamic> toJson() => _$ResetPasswordToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResetPasswordArguments extends JsonSerializable with EquatableMixin {
  ResetPasswordArguments({this.email, this.newPassword, this.token});

  factory ResetPasswordArguments.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordArgumentsFromJson(json);

  final String email;

  final String newPassword;

  final String token;

  @override
  List<Object> get props => [email, newPassword, token];
  Map<String, dynamic> toJson() => _$ResetPasswordArgumentsToJson(this);
}

class ResetPasswordQuery
    extends GraphQLQuery<ResetPassword, ResetPasswordArguments> {
  ResetPasswordQuery({this.variables});

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
  ResetPassword parse(Map<String, dynamic> json) =>
      ResetPassword.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ForgetPassword with EquatableMixin {
  ForgetPassword();

  factory ForgetPassword.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordFromJson(json);

  bool forgetPassword;

  @override
  List<Object> get props => [forgetPassword];
  Map<String, dynamic> toJson() => _$ForgetPasswordToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ForgetPasswordArguments extends JsonSerializable with EquatableMixin {
  ForgetPasswordArguments({this.email});

  factory ForgetPasswordArguments.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordArgumentsFromJson(json);

  final String email;

  @override
  List<Object> get props => [email];
  Map<String, dynamic> toJson() => _$ForgetPasswordArgumentsToJson(this);
}

class ForgetPasswordQuery
    extends GraphQLQuery<ForgetPassword, ForgetPasswordArguments> {
  ForgetPasswordQuery({this.variables});

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
  ForgetPassword parse(Map<String, dynamic> json) =>
      ForgetPassword.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SignIn with EquatableMixin {
  SignIn();

  factory SignIn.fromJson(Map<String, dynamic> json) => _$SignInFromJson(json);

  AuthPayload login;

  @override
  List<Object> get props => [login];
  Map<String, dynamic> toJson() => _$SignInToJson(this);
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
class SignInArguments extends JsonSerializable with EquatableMixin {
  SignInArguments({this.email, this.password});

  factory SignInArguments.fromJson(Map<String, dynamic> json) =>
      _$SignInArgumentsFromJson(json);

  final String email;

  final String password;

  @override
  List<Object> get props => [email, password];
  Map<String, dynamic> toJson() => _$SignInArgumentsToJson(this);
}

class SignInQuery extends GraphQLQuery<SignIn, SignInArguments> {
  SignInQuery({this.variables});

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
                              VariableNode(name: NameNode(value: 'password')))
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
  SignIn parse(Map<String, dynamic> json) => SignIn.fromJson(json);
}
