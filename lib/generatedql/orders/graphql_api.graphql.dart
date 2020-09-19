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

@JsonSerializable(explicitToJson: true)
class Orders$Query$OrderPaginator$PaginatorInfo
    with EquatableMixin, PagingMixin {
  Orders$Query$OrderPaginator$PaginatorInfo();

  factory Orders$Query$OrderPaginator$PaginatorInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Orders$Query$OrderPaginator$PaginatorInfoFromJson(json);

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
      _$Orders$Query$OrderPaginator$PaginatorInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Orders$Query$OrderPaginator$Order with EquatableMixin {
  Orders$Query$OrderPaginator$Order();

  factory Orders$Query$OrderPaginator$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Orders$Query$OrderPaginator$OrderFromJson(json);

  String id;

  String total;

  @JsonKey(name: 'payment_type')
  String paymentType;

  @override
  List<Object> get props => [id, total, paymentType];
  Map<String, dynamic> toJson() =>
      _$Orders$Query$OrderPaginator$OrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Orders$Query$OrderPaginator with EquatableMixin {
  Orders$Query$OrderPaginator();

  factory Orders$Query$OrderPaginator.fromJson(Map<String, dynamic> json) =>
      _$Orders$Query$OrderPaginatorFromJson(json);

  Orders$Query$OrderPaginator$PaginatorInfo paginatorInfo;

  List<Orders$Query$OrderPaginator$Order> data;

  @override
  List<Object> get props => [paginatorInfo, data];
  Map<String, dynamic> toJson() => _$Orders$Query$OrderPaginatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Orders$Query with EquatableMixin {
  Orders$Query();

  factory Orders$Query.fromJson(Map<String, dynamic> json) =>
      _$Orders$QueryFromJson(json);

  Orders$Query$OrderPaginator orders;

  @override
  List<Object> get props => [orders];
  Map<String, dynamic> toJson() => _$Orders$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrdersArguments extends JsonSerializable with EquatableMixin {
  OrdersArguments({@required this.first, @required this.page});

  @override
  factory OrdersArguments.fromJson(Map<String, dynamic> json) =>
      _$OrdersArgumentsFromJson(json);

  final int first;

  final int page;

  @override
  List<Object> get props => [first, page];
  @override
  Map<String, dynamic> toJson() => _$OrdersArgumentsToJson(this);
}

class OrdersQuery extends GraphQLQuery<Orders$Query, OrdersArguments> {
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
                      FragmentSpreadNode(
                          name: NameNode(value: 'Paging'), directives: [])
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
        ]))
  ]);

  @override
  final String operationName = 'Orders';

  @override
  final OrdersArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Orders$Query parse(Map<String, dynamic> json) => Orders$Query.fromJson(json);
}
