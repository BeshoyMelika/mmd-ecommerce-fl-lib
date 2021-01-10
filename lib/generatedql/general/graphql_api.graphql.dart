// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Sliders$Query$Slider$Media with EquatableMixin {
  Sliders$Query$Slider$Media();

  factory Sliders$Query$Slider$Media.fromJson(Map<String, dynamic> json) =>
      _$Sliders$Query$Slider$MediaFromJson(json);

  String url;

  @override
  List<Object> get props => [url];
  Map<String, dynamic> toJson() => _$Sliders$Query$Slider$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Sliders$Query$Slider with EquatableMixin {
  Sliders$Query$Slider();

  factory Sliders$Query$Slider.fromJson(Map<String, dynamic> json) =>
      _$Sliders$Query$SliderFromJson(json);

  String id;

  String title;

  String description;

  @JsonKey(name: 'link_type')
  String linkType;

  @JsonKey(name: 'link_id')
  String linkId;

  Sliders$Query$Slider$Media cover;

  @override
  List<Object> get props => [id, title, description, linkType, linkId, cover];
  Map<String, dynamic> toJson() => _$Sliders$Query$SliderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Sliders$Query with EquatableMixin {
  Sliders$Query();

  factory Sliders$Query.fromJson(Map<String, dynamic> json) =>
      _$Sliders$QueryFromJson(json);

  List<Sliders$Query$Slider> sliders;

  @override
  List<Object> get props => [sliders];
  Map<String, dynamic> toJson() => _$Sliders$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Attributes$Query$Attribute with EquatableMixin {
  Attributes$Query$Attribute();

  factory Attributes$Query$Attribute.fromJson(Map<String, dynamic> json) =>
      _$Attributes$Query$AttributeFromJson(json);

  String id;

  String name;

  List<String> options;

  @override
  List<Object> get props => [id, name, options];
  Map<String, dynamic> toJson() => _$Attributes$Query$AttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Attributes$Query with EquatableMixin {
  Attributes$Query();

  factory Attributes$Query.fromJson(Map<String, dynamic> json) =>
      _$Attributes$QueryFromJson(json);

  List<Attributes$Query$Attribute> attributes;

  @override
  List<Object> get props => [attributes];
  Map<String, dynamic> toJson() => _$Attributes$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Brands$Query$Brand with EquatableMixin {
  Brands$Query$Brand();

  factory Brands$Query$Brand.fromJson(Map<String, dynamic> json) =>
      _$Brands$Query$BrandFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$Brands$Query$BrandToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Brands$Query with EquatableMixin {
  Brands$Query();

  factory Brands$Query.fromJson(Map<String, dynamic> json) =>
      _$Brands$QueryFromJson(json);

  List<Brands$Query$Brand> brands;

  @override
  List<Object> get props => [brands];
  Map<String, dynamic> toJson() => _$Brands$QueryToJson(this);
}

class SlidersQuery extends GraphQLQuery<Sliders$Query, JsonSerializable> {
  SlidersQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Sliders'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'sliders'),
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
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'link_type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'link_id'),
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
  final String operationName = 'Sliders';

  @override
  List<Object> get props => [document, operationName];
  @override
  Sliders$Query parse(Map<String, dynamic> json) =>
      Sliders$Query.fromJson(json);
}

class AttributesQuery extends GraphQLQuery<Attributes$Query, JsonSerializable> {
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
  Attributes$Query parse(Map<String, dynamic> json) =>
      Attributes$Query.fromJson(json);
}

class BrandsQuery extends GraphQLQuery<Brands$Query, JsonSerializable> {
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
  Brands$Query parse(Map<String, dynamic> json) => Brands$Query.fromJson(json);
}
