// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class AreaByID$Query$Area with EquatableMixin {
  AreaByID$Query$Area();

  factory AreaByID$Query$Area.fromJson(Map<String, dynamic> json) =>
      _$AreaByID$Query$AreaFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$AreaByID$Query$AreaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AreaByID$Query with EquatableMixin {
  AreaByID$Query();

  factory AreaByID$Query.fromJson(Map<String, dynamic> json) =>
      _$AreaByID$QueryFromJson(json);

  List<AreaByID$Query$Area> areas;

  @override
  List<Object> get props => [areas];
  Map<String, dynamic> toJson() => _$AreaByID$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Cities$Query$City with EquatableMixin {
  Cities$Query$City();

  factory Cities$Query$City.fromJson(Map<String, dynamic> json) =>
      _$Cities$Query$CityFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$Cities$Query$CityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Cities$Query with EquatableMixin {
  Cities$Query();

  factory Cities$Query.fromJson(Map<String, dynamic> json) =>
      _$Cities$QueryFromJson(json);

  List<Cities$Query$City> cities;

  @override
  List<Object> get props => [cities];
  Map<String, dynamic> toJson() => _$Cities$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AreaByIDArguments extends JsonSerializable with EquatableMixin {
  AreaByIDArguments({@required this.cityId});

  @override
  factory AreaByIDArguments.fromJson(Map<String, dynamic> json) =>
      _$AreaByIDArgumentsFromJson(json);

  final String cityId;

  @override
  List<Object> get props => [cityId];
  @override
  Map<String, dynamic> toJson() => _$AreaByIDArgumentsToJson(this);
}

class AreaByIDQuery extends GraphQLQuery<AreaByID$Query, AreaByIDArguments> {
  AreaByIDQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'AreaByID'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'cityId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'areas'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'city_id'),
                    value: VariableNode(name: NameNode(value: 'cityId')))
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'AreaByID';

  @override
  final AreaByIDArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AreaByID$Query parse(Map<String, dynamic> json) =>
      AreaByID$Query.fromJson(json);
}

class CitiesQuery extends GraphQLQuery<Cities$Query, JsonSerializable> {
  CitiesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Cities'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'cities'),
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
  final String operationName = 'Cities';

  @override
  List<Object> get props => [document, operationName];
  @override
  Cities$Query parse(Map<String, dynamic> json) => Cities$Query.fromJson(json);
}
