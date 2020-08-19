// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class PageBySlug with EquatableMixin {
  PageBySlug();

  factory PageBySlug.fromJson(Map<String, dynamic> json) =>
      _$PageBySlugFromJson(json);

  Page pageBySlug;

  @override
  List<Object> get props => [pageBySlug];
  Map<String, dynamic> toJson() => _$PageBySlugToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Page with EquatableMixin {
  Page();

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  String id;

  String title;

  String slug;

  String content;

  @override
  List<Object> get props => [id, title, slug, content];
  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageBySlugArguments extends JsonSerializable with EquatableMixin {
  PageBySlugArguments({this.name});

  factory PageBySlugArguments.fromJson(Map<String, dynamic> json) =>
      _$PageBySlugArgumentsFromJson(json);

  final String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() => _$PageBySlugArgumentsToJson(this);
}

class PageBySlugQuery extends GraphQLQuery<PageBySlug, PageBySlugArguments> {
  PageBySlugQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'PageBySlug'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'name')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'pageBySlug'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'slug'),
                    value: VariableNode(name: NameNode(value: 'name')))
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
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'content'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'PageBySlug';

  @override
  final PageBySlugArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PageBySlug parse(Map<String, dynamic> json) => PageBySlug.fromJson(json);
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
