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
class CreateAddress$Mutation with EquatableMixin {
  CreateAddress$Mutation();

  factory CreateAddress$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateAddress$MutationFromJson(json);

  bool createAddress;

  @override
  List<Object> get props => [createAddress];
  Map<String, dynamic> toJson() => _$CreateAddress$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteAddress$Mutation with EquatableMixin {
  DeleteAddress$Mutation();

  factory DeleteAddress$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddress$MutationFromJson(json);

  bool deleteAddress;

  @override
  List<Object> get props => [deleteAddress];
  Map<String, dynamic> toJson() => _$DeleteAddress$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddress$Query$UserAddressPaginator$PaginatorInfo
    with EquatableMixin, PagingMixin {
  GetAllAddress$Query$UserAddressPaginator$PaginatorInfo();

  factory GetAllAddress$Query$UserAddressPaginator$PaginatorInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllAddress$Query$UserAddressPaginator$PaginatorInfoFromJson(json);

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
      _$GetAllAddress$Query$UserAddressPaginator$PaginatorInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City
    with EquatableMixin {
  GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City();

  factory GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$CityFromJson(
          json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$CityToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddress$Query$UserAddressPaginator$UserAddress$Area
    with EquatableMixin {
  GetAllAddress$Query$UserAddressPaginator$UserAddress$Area();

  factory GetAllAddress$Query$UserAddressPaginator$UserAddress$Area.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllAddress$Query$UserAddressPaginator$UserAddress$AreaFromJson(json);

  String name;

  GetAllAddress$Query$UserAddressPaginator$UserAddress$Area$City city;

  @override
  List<Object> get props => [name, city];
  Map<String, dynamic> toJson() =>
      _$GetAllAddress$Query$UserAddressPaginator$UserAddress$AreaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddress$Query$UserAddressPaginator$UserAddress with EquatableMixin {
  GetAllAddress$Query$UserAddressPaginator$UserAddress();

  factory GetAllAddress$Query$UserAddressPaginator$UserAddress.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllAddress$Query$UserAddressPaginator$UserAddressFromJson(json);

  String id;

  @JsonKey(name: 'first_name')
  String firstName;

  @JsonKey(name: 'last_name')
  String lastName;

  GetAllAddress$Query$UserAddressPaginator$UserAddress$Area area;

  String info;

  @JsonKey(name: 'additional_info')
  String additionalInfo;

  String mobile;

  String lat;

  String lng;

  bool isDefault;

  @override
  List<Object> get props => [
        id,
        firstName,
        lastName,
        area,
        info,
        additionalInfo,
        mobile,
        lat,
        lng,
        isDefault
      ];
  Map<String, dynamic> toJson() =>
      _$GetAllAddress$Query$UserAddressPaginator$UserAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddress$Query$UserAddressPaginator with EquatableMixin {
  GetAllAddress$Query$UserAddressPaginator();

  factory GetAllAddress$Query$UserAddressPaginator.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllAddress$Query$UserAddressPaginatorFromJson(json);

  GetAllAddress$Query$UserAddressPaginator$PaginatorInfo paginatorInfo;

  List<GetAllAddress$Query$UserAddressPaginator$UserAddress> data;

  @override
  List<Object> get props => [paginatorInfo, data];
  Map<String, dynamic> toJson() =>
      _$GetAllAddress$Query$UserAddressPaginatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddress$Query with EquatableMixin {
  GetAllAddress$Query();

  factory GetAllAddress$Query.fromJson(Map<String, dynamic> json) =>
      _$GetAllAddress$QueryFromJson(json);

  GetAllAddress$Query$UserAddressPaginator addresses;

  @override
  List<Object> get props => [addresses];
  Map<String, dynamic> toJson() => _$GetAllAddress$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateAddress$Mutation with EquatableMixin {
  UpdateAddress$Mutation();

  factory UpdateAddress$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddress$MutationFromJson(json);

  bool updateAddress;

  @override
  List<Object> get props => [updateAddress];
  Map<String, dynamic> toJson() => _$UpdateAddress$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateAddressArguments extends JsonSerializable with EquatableMixin {
  CreateAddressArguments(
      {@required this.firstName,
      @required this.lastName,
      @required this.areaId,
      @required this.info,
      @required this.additionalInfo,
      @required this.mobile,
      @required this.lat,
      @required this.lng,
      @required this.isDefault});

  @override
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
  @override
  Map<String, dynamic> toJson() => _$CreateAddressArgumentsToJson(this);
}

class CreateAddressMutation
    extends GraphQLQuery<CreateAddress$Mutation, CreateAddressArguments> {
  CreateAddressMutation({this.variables});

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
  CreateAddress$Mutation parse(Map<String, dynamic> json) =>
      CreateAddress$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteAddressArguments extends JsonSerializable with EquatableMixin {
  DeleteAddressArguments({@required this.id});

  @override
  factory DeleteAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DeleteAddressArgumentsToJson(this);
}

class DeleteAddressMutation
    extends GraphQLQuery<DeleteAddress$Mutation, DeleteAddressArguments> {
  DeleteAddressMutation({this.variables});

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
  DeleteAddress$Mutation parse(Map<String, dynamic> json) =>
      DeleteAddress$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetAllAddressArguments extends JsonSerializable with EquatableMixin {
  GetAllAddressArguments({@required this.first, @required this.page});

  @override
  factory GetAllAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$GetAllAddressArgumentsFromJson(json);

  final int first;

  final int page;

  @override
  List<Object> get props => [first, page];
  @override
  Map<String, dynamic> toJson() => _$GetAllAddressArgumentsToJson(this);
}

class GetAllAddressQuery
    extends GraphQLQuery<GetAllAddress$Query, GetAllAddressArguments> {
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
  final String operationName = 'GetAllAddress';

  @override
  final GetAllAddressArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetAllAddress$Query parse(Map<String, dynamic> json) =>
      GetAllAddress$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateAddressArguments extends JsonSerializable with EquatableMixin {
  UpdateAddressArguments(
      {@required this.id,
      @required this.firstName,
      @required this.lastName,
      @required this.areaId,
      @required this.info,
      @required this.additionalInfo,
      @required this.mobile,
      @required this.lat,
      @required this.lng,
      @required this.isDefault});

  @override
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
  @override
  Map<String, dynamic> toJson() => _$UpdateAddressArgumentsToJson(this);
}

class UpdateAddressMutation
    extends GraphQLQuery<UpdateAddress$Mutation, UpdateAddressArguments> {
  UpdateAddressMutation({this.variables});

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
  UpdateAddress$Mutation parse(Map<String, dynamic> json) =>
      UpdateAddress$Mutation.fromJson(json);
}
