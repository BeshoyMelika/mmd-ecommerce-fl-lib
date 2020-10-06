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
class Ratings$Query$RatingPaginator$PaginatorInfo
    with EquatableMixin, PagingMixin {
  Ratings$Query$RatingPaginator$PaginatorInfo();

  factory Ratings$Query$RatingPaginator$PaginatorInfo.fromJson(
          Map<String, dynamic> json) =>
      _$Ratings$Query$RatingPaginator$PaginatorInfoFromJson(json);

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
      _$Ratings$Query$RatingPaginator$PaginatorInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ratings$Query$RatingPaginator$Rating$User with EquatableMixin {
  Ratings$Query$RatingPaginator$Rating$User();

  factory Ratings$Query$RatingPaginator$Rating$User.fromJson(
          Map<String, dynamic> json) =>
      _$Ratings$Query$RatingPaginator$Rating$UserFromJson(json);

  String id;

  String name;

  String email;

  String mobile;

  @override
  List<Object> get props => [id, name, email, mobile];
  Map<String, dynamic> toJson() =>
      _$Ratings$Query$RatingPaginator$Rating$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ratings$Query$RatingPaginator$Rating with EquatableMixin {
  Ratings$Query$RatingPaginator$Rating();

  factory Ratings$Query$RatingPaginator$Rating.fromJson(
          Map<String, dynamic> json) =>
      _$Ratings$Query$RatingPaginator$RatingFromJson(json);

  int rating;

  String review;

  Ratings$Query$RatingPaginator$Rating$User user;

  @override
  List<Object> get props => [rating, review, user];
  Map<String, dynamic> toJson() =>
      _$Ratings$Query$RatingPaginator$RatingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ratings$Query$RatingPaginator with EquatableMixin {
  Ratings$Query$RatingPaginator();

  factory Ratings$Query$RatingPaginator.fromJson(Map<String, dynamic> json) =>
      _$Ratings$Query$RatingPaginatorFromJson(json);

  Ratings$Query$RatingPaginator$PaginatorInfo paginatorInfo;

  List<Ratings$Query$RatingPaginator$Rating> data;

  @override
  List<Object> get props => [paginatorInfo, data];
  Map<String, dynamic> toJson() => _$Ratings$Query$RatingPaginatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ratings$Query with EquatableMixin {
  Ratings$Query();

  factory Ratings$Query.fromJson(Map<String, dynamic> json) =>
      _$Ratings$QueryFromJson(json);

  Ratings$Query$RatingPaginator ratings;

  @override
  List<Object> get props => [ratings];
  Map<String, dynamic> toJson() => _$Ratings$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RatingsArguments extends JsonSerializable with EquatableMixin {
  RatingsArguments(
      {@required this.first, @required this.page, @required this.productsId});

  @override
  factory RatingsArguments.fromJson(Map<String, dynamic> json) =>
      _$RatingsArgumentsFromJson(json);

  final int first;

  final int page;

  final String productsId;

  @override
  List<Object> get props => [first, page, productsId];
  @override
  Map<String, dynamic> toJson() => _$RatingsArgumentsToJson(this);
}

class RatingsQuery extends GraphQLQuery<Ratings$Query, RatingsArguments> {
  RatingsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Ratings'),
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
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'ratings'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'first'),
                    value: VariableNode(name: NameNode(value: 'first'))),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'product_id'),
                    value: VariableNode(name: NameNode(value: 'productsId')))
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
                          name: NameNode(value: 'rating'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'review'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'user'),
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
                                name: NameNode(value: 'email'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'mobile'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
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
  final String operationName = 'Ratings';

  @override
  final RatingsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Ratings$Query parse(Map<String, dynamic> json) =>
      Ratings$Query.fromJson(json);
}
