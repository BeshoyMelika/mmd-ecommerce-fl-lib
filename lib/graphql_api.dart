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

  String name;

  String email;

  @override
  List<Object> get props => [name, email];
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
class Attributes with EquatableMixin {
  Attributes();

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  List<Attribute> attributes;

  @override
  List<Object> get props => [attributes];
  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Attribute with EquatableMixin {
  Attribute();

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);

  String id;

  String name;

  List<String> options;

  @override
  List<Object> get props => [id, name, options];
  Map<String, dynamic> toJson() => _$AttributeToJson(this);
}

class AttributesQuery extends GraphQLQuery<Attributes, JsonSerializable> {
  AttributesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Attributes'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'attributes'),
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
                    name: NameNode(value: 'options'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Attributes';

  @override
  List<Object> get props => [document, operationName];
  @override
  Attributes parse(Map<String, dynamic> json) => Attributes.fromJson(json);
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

@JsonSerializable(explicitToJson: true)
class Brands with EquatableMixin {
  Brands();

  factory Brands.fromJson(Map<String, dynamic> json) => _$BrandsFromJson(json);

  List<Brand> brands;

  @override
  List<Object> get props => [brands];
  Map<String, dynamic> toJson() => _$BrandsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Brand with EquatableMixin {
  Brand();

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$BrandToJson(this);
}

class BrandsQuery extends GraphQLQuery<Brands, JsonSerializable> {
  BrandsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Brands'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'brands'),
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
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Brands';

  @override
  List<Object> get props => [document, operationName];
  @override
  Brands parse(Map<String, dynamic> json) => Brands.fromJson(json);
}
