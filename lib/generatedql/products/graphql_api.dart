// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class Products with EquatableMixin {
  Products();

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  ProductPaginator products;

  @override
  List<Object> get props => [products];
  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductPaginator with EquatableMixin {
  ProductPaginator();

  factory ProductPaginator.fromJson(Map<String, dynamic> json) =>
      _$ProductPaginatorFromJson(json);

  PaginatorInfo paginatorInfo;

  List<Product> data;

  @override
  List<Object> get props => [paginatorInfo, data];
  Map<String, dynamic> toJson() => _$ProductPaginatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatorInfo with EquatableMixin {
  PaginatorInfo();

  factory PaginatorInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginatorInfoFromJson(json);

  int count;

  int currentPage;

  int firstItem;

  int lastItem;

  bool hasMorePages;

  int lastPage;

  int perPage;

  int total;

  @override
  List<Object> get props => [
        count,
        currentPage,
        firstItem,
        lastItem,
        hasMorePages,
        lastPage,
        perPage,
        total
      ];
  Map<String, dynamic> toJson() => _$PaginatorInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Product with EquatableMixin {
  Product();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  String id;

  String price;

  bool available;

  ProductData details;

  @override
  List<Object> get props => [id, price, available, details];
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductData with EquatableMixin {
  ProductData();

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);

  String name;

  String sku;

  String description;

  Media cover;

  Unit unit;

  List<Media> media;

  Category category;

  @override
  List<Object> get props =>
      [name, sku, description, cover, unit, media, category];
  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
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

@JsonSerializable(explicitToJson: true)
class Unit with EquatableMixin {
  Unit();

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$UnitToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Category with EquatableMixin {
  Category();

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductsArguments extends JsonSerializable with EquatableMixin {
  ProductsArguments(
      {this.first, this.page, this.productsId, this.catId, this.name});

  factory ProductsArguments.fromJson(Map<String, dynamic> json) =>
      _$ProductsArgumentsFromJson(json);

  final int first;

  final int page;

  final String productsId;

  final List<String> catId;

  final String name;

  @override
  List<Object> get props => [first, page, productsId, catId, name];
  Map<String, dynamic> toJson() => _$ProductsArgumentsToJson(this);
}

class ProductsQuery extends GraphQLQuery<Products, ProductsArguments> {
  ProductsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Products'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'first')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'productsId')),
              type:
                  NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'catId')),
              type: ListTypeNode(
                  type: NamedTypeNode(
                      name: NameNode(value: 'ID'), isNonNull: false),
                  isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'name')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'products'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'first'),
                    value: VariableNode(name: NameNode(value: 'first'))),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'filter'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'name'),
                          value: VariableNode(name: NameNode(value: 'name'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: VariableNode(
                              name: NameNode(value: 'productsId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'category'),
                          value: VariableNode(name: NameNode(value: 'catId')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'paginatorInfo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'count'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'currentPage'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'firstItem'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lastItem'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hasMorePages'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lastPage'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'perPage'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'total'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'data'),
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
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Products';

  @override
  final ProductsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Products parse(Map<String, dynamic> json) => Products.fromJson(json);
}
