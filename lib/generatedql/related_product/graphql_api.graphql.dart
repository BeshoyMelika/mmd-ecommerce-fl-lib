// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin ProductMixin {
  String id;
  String averageRating;
  String price;
  bool available;
  ProductMixin$ProductData details;
}

@JsonSerializable(explicitToJson: true)
class RelatedProducts$Query$Product with EquatableMixin, ProductMixin {
  RelatedProducts$Query$Product();

  factory RelatedProducts$Query$Product.fromJson(Map<String, dynamic> json) =>
      _$RelatedProducts$Query$ProductFromJson(json);

  @override
  List<Object> get props => [id, averageRating, price, available, details];
  Map<String, dynamic> toJson() => _$RelatedProducts$Query$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RelatedProducts$Query with EquatableMixin {
  RelatedProducts$Query();

  factory RelatedProducts$Query.fromJson(Map<String, dynamic> json) =>
      _$RelatedProducts$QueryFromJson(json);

  List<RelatedProducts$Query$Product> relatedProducts;

  @override
  List<Object> get props => [relatedProducts];
  Map<String, dynamic> toJson() => _$RelatedProducts$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductMixin$ProductData$Media with EquatableMixin {
  ProductMixin$ProductData$Media();

  factory ProductMixin$ProductData$Media.fromJson(Map<String, dynamic> json) =>
      _$ProductMixin$ProductData$MediaFromJson(json);

  String url;

  @override
  List<Object> get props => [url];
  Map<String, dynamic> toJson() => _$ProductMixin$ProductData$MediaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductMixin$ProductData$Unit with EquatableMixin {
  ProductMixin$ProductData$Unit();

  factory ProductMixin$ProductData$Unit.fromJson(Map<String, dynamic> json) =>
      _$ProductMixin$ProductData$UnitFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$ProductMixin$ProductData$UnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductMixin$ProductData$Category with EquatableMixin {
  ProductMixin$ProductData$Category();

  factory ProductMixin$ProductData$Category.fromJson(
          Map<String, dynamic> json) =>
      _$ProductMixin$ProductData$CategoryFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$ProductMixin$ProductData$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductMixin$ProductData with EquatableMixin {
  ProductMixin$ProductData();

  factory ProductMixin$ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductMixin$ProductDataFromJson(json);

  String name;

  String sku;

  String description;

  ProductMixin$ProductData$Media cover;

  ProductMixin$ProductData$Unit unit;

  List<ProductMixin$ProductData$Media> media;

  ProductMixin$ProductData$Category category;

  @override
  List<Object> get props =>
      [name, sku, description, cover, unit, media, category];
  Map<String, dynamic> toJson() => _$ProductMixin$ProductDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RelatedProductsArguments extends JsonSerializable with EquatableMixin {
  RelatedProductsArguments({@required this.id});

  @override
  factory RelatedProductsArguments.fromJson(Map<String, dynamic> json) =>
      _$RelatedProductsArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$RelatedProductsArgumentsToJson(this);
}

class RelatedProductsQuery
    extends GraphQLQuery<RelatedProducts$Query, RelatedProductsArguments> {
  RelatedProductsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'RelatedProducts'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'relatedProducts'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'Product'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Product'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Product'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'averageRating'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'price'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'available'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'details'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'sku'),
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
                    ])),
                FieldNode(
                    name: NameNode(value: 'unit'),
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
                    ])),
                FieldNode(
                    name: NameNode(value: 'media'),
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
                    ])),
                FieldNode(
                    name: NameNode(value: 'category'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'RelatedProducts';

  @override
  final RelatedProductsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  RelatedProducts$Query parse(Map<String, dynamic> json) =>
      RelatedProducts$Query.fromJson(json);
}
