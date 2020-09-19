// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Categories$Query$Category$Media with EquatableMixin {
  Categories$Query$Category$Media();

  factory Categories$Query$Category$Media.fromJson(Map<String, dynamic> json) =>
      _$Categories$Query$Category$MediaFromJson(json);

  String url;

  @override
  List<Object> get props => [url];
  Map<String, dynamic> toJson() =>
      _$Categories$Query$Category$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Categories$Query$Category with EquatableMixin {
  Categories$Query$Category();

  factory Categories$Query$Category.fromJson(Map<String, dynamic> json) =>
      _$Categories$Query$CategoryFromJson(json);

  String id;

  String name;

  Categories$Query$Category$Media cover;

  @override
  List<Object> get props => [id, name, cover];
  Map<String, dynamic> toJson() => _$Categories$Query$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Categories$Query with EquatableMixin {
  Categories$Query();

  factory Categories$Query.fromJson(Map<String, dynamic> json) =>
      _$Categories$QueryFromJson(json);

  List<Categories$Query$Category> categories;

  @override
  List<Object> get props => [categories];
  Map<String, dynamic> toJson() => _$Categories$QueryToJson(this);
}

class CategoriesQuery extends GraphQLQuery<Categories$Query, JsonSerializable> {
  CategoriesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Categories'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'categories'),
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
                    name: NameNode(value: 'cover'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'url'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Categories';

  @override
  List<Object> get props => [document, operationName];
  @override
  Categories$Query parse(Map<String, dynamic> json) =>
      Categories$Query.fromJson(json);
}
