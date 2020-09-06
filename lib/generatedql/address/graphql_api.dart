// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateAddress with EquatableMixin {
  CreateAddress();

  factory CreateAddress.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressFromJson(json);

  bool createAddress;

  @override
  List<Object> get props => [createAddress];
  Map<String, dynamic> toJson() => _$CreateAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateAddressArguments extends JsonSerializable with EquatableMixin {
  CreateAddressArguments(
      {this.firstName,
      this.lastName,
      this.areaId,
      this.info,
      this.additionalInfo,
      this.mobile,
      this.lat,
      this.lng,
      this.isDefault});

  factory CreateAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressArgumentsFromJson(json);

  final String firstName;

  final String lastName;

  final String areaId;

  final String info;

  final String additionalInfo;

  final String mobile;

  final String lat;

  final String lng;

  final bool isDefault;

  @override
  List<Object> get props => [
        firstName,
        lastName,
        areaId,
        info,
        additionalInfo,
        mobile,
        lat,
        lng,
        isDefault
      ];
  Map<String, dynamic> toJson() => _$CreateAddressArgumentsToJson(this);
}

class CreateAddressQuery
    extends GraphQLQuery<CreateAddress, CreateAddressArguments> {
  CreateAddressQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'CreateAddress'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'firstName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'lastName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'areaId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'info')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'additionalInfo')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'mobile')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'lat')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'lng')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'isDefault')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Boolean'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createAddress'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'first_name'),
                          value:
                              VariableNode(name: NameNode(value: 'firstName'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'last_name'),
                          value:
                              VariableNode(name: NameNode(value: 'lastName'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'area_id'),
                          value: VariableNode(name: NameNode(value: 'areaId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'info'),
                          value: VariableNode(name: NameNode(value: 'info'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'additional_info'),
                          value: VariableNode(
                              name: NameNode(value: 'additionalInfo'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'mobile'),
                          value: VariableNode(name: NameNode(value: 'mobile'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'lat'),
                          value: VariableNode(name: NameNode(value: 'lat'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'lng'),
                          value: VariableNode(name: NameNode(value: 'lng'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'isDefault'),
                          value:
                              VariableNode(name: NameNode(value: 'isDefault')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'CreateAddress';

  @override
  final CreateAddressArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  CreateAddress parse(Map<String, dynamic> json) =>
      CreateAddress.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteAddress with EquatableMixin {
  DeleteAddress();

  factory DeleteAddress.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressFromJson(json);

  bool deleteAddress;

  @override
  List<Object> get props => [deleteAddress];
  Map<String, dynamic> toJson() => _$DeleteAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteAddressArguments extends JsonSerializable with EquatableMixin {
  DeleteAddressArguments({this.id});

  factory DeleteAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$DeleteAddressArgumentsToJson(this);
}

class DeleteAddressQuery
    extends GraphQLQuery<DeleteAddress, DeleteAddressArguments> {
  DeleteAddressQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'DeleteAddress'),
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
              name: NameNode(value: 'deleteAddress'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'DeleteAddress';

  @override
  final DeleteAddressArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  DeleteAddress parse(Map<String, dynamic> json) =>
      DeleteAddress.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddress with EquatableMixin {
  GetAllAddress();

  factory GetAllAddress.fromJson(Map<String, dynamic> json) =>
      _$GetAllAddressFromJson(json);

  UserAddressPaginator addresses;

  @override
  List<Object> get props => [addresses];
  Map<String, dynamic> toJson() => _$GetAllAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserAddressPaginator with EquatableMixin {
  UserAddressPaginator();

  factory UserAddressPaginator.fromJson(Map<String, dynamic> json) =>
      _$UserAddressPaginatorFromJson(json);

  PaginatorInfo paginatorInfo;

  List<UserAddress> data;

  @override
  List<Object> get props => [paginatorInfo, data];
  Map<String, dynamic> toJson() => _$UserAddressPaginatorToJson(this);
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
class UserAddress with EquatableMixin {
  UserAddress();

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);

  String id;

  String first_name;

  String last_name;

  Area area;

  String info;

  String additional_info;

  String mobile;

  String lat;

  String lng;

  bool isDefault;

  @override
  List<Object> get props => [
        id,
        first_name,
        last_name,
        area,
        info,
        additional_info,
        mobile,
        lat,
        lng,
        isDefault
      ];
  Map<String, dynamic> toJson() => _$UserAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Area with EquatableMixin {
  Area();

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);

  String name;

  City city;

  @override
  List<Object> get props => [name, city];
  Map<String, dynamic> toJson() => _$AreaToJson(this);
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

@JsonSerializable(explicitToJson: true)
class GetAllAddressArguments extends JsonSerializable with EquatableMixin {
  GetAllAddressArguments({this.first, this.page});

  factory GetAllAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$GetAllAddressArgumentsFromJson(json);

  final int first;

  final int page;

  @override
  List<Object> get props => [first, page];
  Map<String, dynamic> toJson() => _$GetAllAddressArgumentsToJson(this);
}

class GetAllAddressQuery
    extends GraphQLQuery<GetAllAddress, GetAllAddressArguments> {
  GetAllAddressQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'GetAllAddress'),
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
              name: NameNode(value: 'addresses'),
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
                          name: NameNode(value: 'first_name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'last_name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'area'),
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
                                name: NameNode(value: 'city'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'name'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ]))
                          ])),
                      FieldNode(
                          name: NameNode(value: 'info'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'additional_info'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'mobile'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lat'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lng'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'isDefault'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'GetAllAddress';

  @override
  final GetAllAddressArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetAllAddress parse(Map<String, dynamic> json) =>
      GetAllAddress.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateAddress with EquatableMixin {
  UpdateAddress();

  factory UpdateAddress.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressFromJson(json);

  bool updateAddress;

  @override
  List<Object> get props => [updateAddress];
  Map<String, dynamic> toJson() => _$UpdateAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateAddressArguments extends JsonSerializable with EquatableMixin {
  UpdateAddressArguments(
      {this.id,
      this.firstName,
      this.lastName,
      this.areaId,
      this.info,
      this.additionalInfo,
      this.mobile,
      this.lat,
      this.lng,
      this.isDefault});

  factory UpdateAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressArgumentsFromJson(json);

  final String id;

  final String firstName;

  final String lastName;

  final String areaId;

  final String info;

  final String additionalInfo;

  final String mobile;

  final String lat;

  final String lng;

  final bool isDefault;

  @override
  List<Object> get props => [
        id,
        firstName,
        lastName,
        areaId,
        info,
        additionalInfo,
        mobile,
        lat,
        lng,
        isDefault
      ];
  Map<String, dynamic> toJson() => _$UpdateAddressArgumentsToJson(this);
}

class UpdateAddressQuery
    extends GraphQLQuery<UpdateAddress, UpdateAddressArguments> {
  UpdateAddressQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'UpdateAddress'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'firstName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'lastName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'areaId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'info')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'additionalInfo')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'mobile')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'lat')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'lng')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'isDefault')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Boolean'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'updateAddress'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id'))),
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'first_name'),
                          value:
                              VariableNode(name: NameNode(value: 'firstName'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'last_name'),
                          value:
                              VariableNode(name: NameNode(value: 'lastName'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'area_id'),
                          value: VariableNode(name: NameNode(value: 'areaId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'info'),
                          value: VariableNode(name: NameNode(value: 'info'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'additional_info'),
                          value: VariableNode(
                              name: NameNode(value: 'additionalInfo'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'mobile'),
                          value: VariableNode(name: NameNode(value: 'mobile'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'lat'),
                          value: VariableNode(name: NameNode(value: 'lat'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'lng'),
                          value: VariableNode(name: NameNode(value: 'lng'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'isDefault'),
                          value:
                              VariableNode(name: NameNode(value: 'isDefault')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'UpdateAddress';

  @override
  final UpdateAddressArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UpdateAddress parse(Map<String, dynamic> json) =>
      UpdateAddress.fromJson(json);
}
