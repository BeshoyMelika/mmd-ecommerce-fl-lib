// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

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

  String name;

  @override
  List<Object> get props => [name];
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
