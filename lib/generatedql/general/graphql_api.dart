// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class Sliders with EquatableMixin {
  Sliders();

  factory Sliders.fromJson(Map<String, dynamic> json) =>
      _$SlidersFromJson(json);

  List<Slider> sliders;

  @override
  List<Object> get props => [sliders];
  Map<String, dynamic> toJson() => _$SlidersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Slider with EquatableMixin {
  Slider();

  factory Slider.fromJson(Map<String, dynamic> json) => _$SliderFromJson(json);

  String id;

  String title;

  String description;

  String link;

  Media cover;

  @override
  List<Object> get props => [id, title, description, link, cover];
  Map<String, dynamic> toJson() => _$SliderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Media with EquatableMixin {
  Media();

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  String url;

  @override
  List<Object> get props => [url];
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

class SlidersQuery extends GraphQLQuery<Sliders, JsonSerializable> {
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
                    name: NameNode(value: 'link'),
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
  Sliders parse(Map<String, dynamic> json) => Sliders.fromJson(json);
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
