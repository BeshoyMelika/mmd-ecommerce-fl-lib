// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class AddToCart with EquatableMixin {
  AddToCart();

  factory AddToCart.fromJson(Map<String, dynamic> json) =>
      _$AddToCartFromJson(json);

  bool addToCart;

  @override
  List<Object> get props => [addToCart];
  Map<String, dynamic> toJson() => _$AddToCartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToCartArguments extends JsonSerializable with EquatableMixin {
  AddToCartArguments({this.productId, this.quantity});

  factory AddToCartArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToCartArgumentsFromJson(json);

  final String productId;

  final int quantity;

  @override
  List<Object> get props => [productId, quantity];
  Map<String, dynamic> toJson() => _$AddToCartArgumentsToJson(this);
}

class AddToCartQuery extends GraphQLQuery<AddToCart, AddToCartArguments> {
  AddToCartQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'AddToCart'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'productId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'quantity')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'addToCart'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'items'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'product_id'),
                          value:
                              VariableNode(name: NameNode(value: 'productId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'quantity'),
                          value:
                              VariableNode(name: NameNode(value: 'quantity')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'AddToCart';

  @override
  final AddToCartArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AddToCart parse(Map<String, dynamic> json) => AddToCart.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetVoucherByCode with EquatableMixin {
  GetVoucherByCode();

  factory GetVoucherByCode.fromJson(Map<String, dynamic> json) =>
      _$GetVoucherByCodeFromJson(json);

  Voucher getVoucherByCode;

  @override
  List<Object> get props => [getVoucherByCode];
  Map<String, dynamic> toJson() => _$GetVoucherByCodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Voucher with EquatableMixin {
  Voucher();

  factory Voucher.fromJson(Map<String, dynamic> json) =>
      _$VoucherFromJson(json);

  String id;

  String code;

  int discount;

  String discount_type;

  @override
  List<Object> get props => [id, code, discount, discount_type];
  Map<String, dynamic> toJson() => _$VoucherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetVoucherByCodeArguments extends JsonSerializable with EquatableMixin {
  GetVoucherByCodeArguments({this.code});

  factory GetVoucherByCodeArguments.fromJson(Map<String, dynamic> json) =>
      _$GetVoucherByCodeArgumentsFromJson(json);

  final String code;

  @override
  List<Object> get props => [code];
  Map<String, dynamic> toJson() => _$GetVoucherByCodeArgumentsToJson(this);
}

class GetVoucherByCodeQuery
    extends GraphQLQuery<GetVoucherByCode, GetVoucherByCodeArguments> {
  GetVoucherByCodeQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'GetVoucherByCode'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'code')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'getVoucherByCode'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'code'),
                    value: VariableNode(name: NameNode(value: 'code')))
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
                    name: NameNode(value: 'code'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'discount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'discount_type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'GetVoucherByCode';

  @override
  final GetVoucherByCodeArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetVoucherByCode parse(Map<String, dynamic> json) =>
      GetVoucherByCode.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetCart with EquatableMixin {
  GetCart();

  factory GetCart.fromJson(Map<String, dynamic> json) =>
      _$GetCartFromJson(json);

  Cart cart;

  @override
  List<Object> get props => [cart];
  Map<String, dynamic> toJson() => _$GetCartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Cart with EquatableMixin {
  Cart();

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  String total;

  List<CartItem> items;

  @override
  List<Object> get props => [total, items];
  Map<String, dynamic> toJson() => _$CartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CartItem with EquatableMixin {
  CartItem();

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);

  bool available;

  int quantity;

  Product product;

  @override
  List<Object> get props => [available, quantity, product];
  Map<String, dynamic> toJson() => _$CartItemToJson(this);
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

  Media cover;

  Unit unit;

  @override
  List<Object> get props => [name, cover, unit];
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

class GetCartQuery extends GraphQLQuery<GetCart, JsonSerializable> {
  GetCartQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'GetCart'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'cart'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'items'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'available'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'quantity'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'product'),
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
                                      name: NameNode(value: 'cover'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
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
                                      selectionSet:
                                          SelectionSetNode(selections: [
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
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'GetCart';

  @override
  List<Object> get props => [document, operationName];
  @override
  GetCart parse(Map<String, dynamic> json) => GetCart.fromJson(json);
}
