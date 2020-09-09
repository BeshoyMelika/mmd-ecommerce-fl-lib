// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class AreaByID with EquatableMixin {
  AreaByID();

  factory AreaByID.fromJson(Map<String, dynamic> json) =>
      _$AreaByIDFromJson(json);

  List<Area> areas;

  @override
  List<Object> get props => [areas];
  Map<String, dynamic> toJson() => _$AreaByIDToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Area with EquatableMixin {
  Area();

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$AreaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AreaByIDArguments extends JsonSerializable with EquatableMixin {
  AreaByIDArguments({this.cityId});

  factory AreaByIDArguments.fromJson(Map<String, dynamic> json) =>
      _$AreaByIDArgumentsFromJson(json);

  final String cityId;

  @override
  List<Object> get props => [cityId];
  Map<String, dynamic> toJson() => _$AreaByIDArgumentsToJson(this);
}

class AreaByIDQuery extends GraphQLQuery<AreaByID, AreaByIDArguments> {
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
  AreaByID parse(Map<String, dynamic> json) => AreaByID.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class Cities with EquatableMixin {
  Cities();

  factory Cities.fromJson(Map<String, dynamic> json) => _$CitiesFromJson(json);

  List<City> cities;

  @override
  List<Object> get props => [cities];
  Map<String, dynamic> toJson() => _$CitiesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class City with EquatableMixin {
  City();

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$CityToJson(this);
}

class CitiesQuery extends GraphQLQuery<Cities, JsonSerializable> {
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
  Cities parse(Map<String, dynamic> json) => Cities.fromJson(json);
}
