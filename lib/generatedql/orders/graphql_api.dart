// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class Orders with EquatableMixin {
  Orders();

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  OrderPaginator orders;

  @override
  List<Object> get props => [orders];
  Map<String, dynamic> toJson() => _$OrdersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderPaginator with EquatableMixin {
  OrderPaginator();

  factory OrderPaginator.fromJson(Map<String, dynamic> json) =>
      _$OrderPaginatorFromJson(json);

  PaginatorInfo paginatorInfo;

  List<Order> data;

  @override
  List<Object> get props => [paginatorInfo, data];
  Map<String, dynamic> toJson() => _$OrderPaginatorToJson(this);
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
class Order with EquatableMixin {
  Order();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  String id;

  String total;

  String payment_type;

  @override
  List<Object> get props => [id, total, payment_type];
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrdersArguments extends JsonSerializable with EquatableMixin {
  OrdersArguments({this.first, this.page});

  factory OrdersArguments.fromJson(Map<String, dynamic> json) =>
      _$OrdersArgumentsFromJson(json);

  final int first;

  final int page;

  @override
  List<Object> get props => [first, page];
  Map<String, dynamic> toJson() => _$OrdersArgumentsToJson(this);
}

class OrdersQuery extends GraphQLQuery<Orders, OrdersArguments> {
  OrdersQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Orders'),
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
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'orders'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'first'),
                    value: VariableNode(name: NameNode(value: 'first'))),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page')))
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
                          name: NameNode(value: 'total'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'payment_type'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Orders';

  @override
  final OrdersArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Orders parse(Map<String, dynamic> json) => Orders.fromJson(json);
}
