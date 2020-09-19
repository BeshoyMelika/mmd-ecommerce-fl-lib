// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin PagingMixin {
  int count;
  int currentPage;
  int firstItem;
  int lastItem;
  bool hasMorePages;
  int lastPage;
  int perPage;
  int total;
}
mixin ProductMixin {
  String id;
  String averageRating;
  String price;
  bool available;
  ProductMixin$ProductData details;
}

@JsonSerializable(explicitToJson: true)
class Products$Query$ProductPaginator$PaginatorInfo
    with EquatableMixin, PagingMixin {
  Products$Query$ProductPaginator$PaginatorInfo();

  factory Products$Query$ProductPaginator$PaginatorInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Products$Query$ProductPaginator$PaginatorInfoFromJson(json);

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
  Map<String, dynamic> toJson() =>
      _$Products$Query$ProductPaginator$PaginatorInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Products$Query$ProductPaginator$Product
    with EquatableMixin, ProductMixin {
  Products$Query$ProductPaginator$Product();

  factory Products$Query$ProductPaginator$Product.fromJson(
          Map<String, dynamic> json) =>
      _$Products$Query$ProductPaginator$ProductFromJson(json);

  @override
  List<Object> get props => [id, averageRating, price, available, details];
  Map<String, dynamic> toJson() =>
      _$Products$Query$ProductPaginator$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Products$Query$ProductPaginator with EquatableMixin {
  Products$Query$ProductPaginator();

  factory Products$Query$ProductPaginator.fromJson(Map<String, dynamic> json) =>
      _$Products$Query$ProductPaginatorFromJson(json);

  Products$Query$ProductPaginator$PaginatorInfo paginatorInfo;

  List<Products$Query$ProductPaginator$Product> data;

  @override
  List<Object> get props => [paginatorInfo, data];
  Map<String, dynamic> toJson() =>
      _$Products$Query$ProductPaginatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Products$Query with EquatableMixin {
  Products$Query();

  factory Products$Query.fromJson(Map<String, dynamic> json) =>
      _$Products$QueryFromJson(json);

  Products$Query$ProductPaginator products;

  @override
  List<Object> get props => [products];
  Map<String, dynamic> toJson() => _$Products$QueryToJson(this);
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
class ProductsArguments extends JsonSerializable with EquatableMixin {
  ProductsArguments(
      {@required this.first,
      @required this.page,
      this.productsId,
      this.catId,
      this.name});

  @override
  factory ProductsArguments.fromJson(Map<String, dynamic> json) =>
      _$ProductsArgumentsFromJson(json);

  final int first;

  final int page;

  final String productsId;

  final List<String> catId;

  final String name;

  @override
  List<Object> get props => [first, page, productsId, catId, name];
  @override
  Map<String, dynamic> toJson() => _$ProductsArgumentsToJson(this);
}

class ProductsQuery extends GraphQLQuery<Products$Query, ProductsArguments> {
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
                      FragmentSpreadNode(
                          name: NameNode(value: 'Paging'), directives: [])
                    ])),
                FieldNode(
                    name: NameNode(value: 'data'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'Product'), directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Paging'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'PaginatorInfo'), isNonNull: false)),
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
  final String operationName = 'Products';

  @override
  final ProductsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Products$Query parse(Map<String, dynamic> json) =>
      Products$Query.fromJson(json);
}
