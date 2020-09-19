// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin ProductMixin {
  String id;
  String averageRating;
  String price;
  bool available;
  ProductMixin$ProductData details;
}

@JsonSerializable(explicitToJson: true)
class AddToCart$Mutation with EquatableMixin {
  AddToCart$Mutation();

  factory AddToCart$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddToCart$MutationFromJson(json);

  bool addToCart;

  @override
  List<Object> get props => [addToCart];
  Map<String, dynamic> toJson() => _$AddToCart$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetVoucherByCode$Query$Voucher with EquatableMixin {
  GetVoucherByCode$Query$Voucher();

  factory GetVoucherByCode$Query$Voucher.fromJson(Map<String, dynamic> json) =>
      _$GetVoucherByCode$Query$VoucherFromJson(json);

  String id;

  String code;

  int discount;

  @JsonKey(name: 'discount_type')
  String discountType;

  @override
  List<Object> get props => [id, code, discount, discountType];
  Map<String, dynamic> toJson() => _$GetVoucherByCode$Query$VoucherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetVoucherByCode$Query with EquatableMixin {
  GetVoucherByCode$Query();

  factory GetVoucherByCode$Query.fromJson(Map<String, dynamic> json) =>
      _$GetVoucherByCode$QueryFromJson(json);

  GetVoucherByCode$Query$Voucher getVoucherByCode;

  @override
  List<Object> get props => [getVoucherByCode];
  Map<String, dynamic> toJson() => _$GetVoucherByCode$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCart$Query$Cart$CartItem$Product with EquatableMixin, ProductMixin {
  GetCart$Query$Cart$CartItem$Product();

  factory GetCart$Query$Cart$CartItem$Product.fromJson(
          Map<String, dynamic> json) =>
      _$GetCart$Query$Cart$CartItem$ProductFromJson(json);

  @override
  List<Object> get props => [id, averageRating, price, available, details];
  Map<String, dynamic> toJson() =>
      _$GetCart$Query$Cart$CartItem$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCart$Query$Cart$CartItem with EquatableMixin {
  GetCart$Query$Cart$CartItem();

  factory GetCart$Query$Cart$CartItem.fromJson(Map<String, dynamic> json) =>
      _$GetCart$Query$Cart$CartItemFromJson(json);

  bool available;

  int quantity;

  GetCart$Query$Cart$CartItem$Product product;

  @override
  List<Object> get props => [available, quantity, product];
  Map<String, dynamic> toJson() => _$GetCart$Query$Cart$CartItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCart$Query$Cart with EquatableMixin {
  GetCart$Query$Cart();

  factory GetCart$Query$Cart.fromJson(Map<String, dynamic> json) =>
      _$GetCart$Query$CartFromJson(json);

  String total;

  List<GetCart$Query$Cart$CartItem> items;

  @override
  List<Object> get props => [total, items];
  Map<String, dynamic> toJson() => _$GetCart$Query$CartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCart$Query with EquatableMixin {
  GetCart$Query();

  factory GetCart$Query.fromJson(Map<String, dynamic> json) =>
      _$GetCart$QueryFromJson(json);

  GetCart$Query$Cart cart;

  @override
  List<Object> get props => [cart];
  Map<String, dynamic> toJson() => _$GetCart$QueryToJson(this);
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
class ShippingFees$Query with EquatableMixin {
  ShippingFees$Query();

  factory ShippingFees$Query.fromJson(Map<String, dynamic> json) =>
      _$ShippingFees$QueryFromJson(json);

  String shippingFees;

  @override
  List<Object> get props => [shippingFees];
  Map<String, dynamic> toJson() => _$ShippingFees$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToCartArguments extends JsonSerializable with EquatableMixin {
  AddToCartArguments({@required this.productId, @required this.quantity});

  @override
  factory AddToCartArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToCartArgumentsFromJson(json);

  final String productId;

  final int quantity;

  @override
  List<Object> get props => [productId, quantity];
  @override
  Map<String, dynamic> toJson() => _$AddToCartArgumentsToJson(this);
}

class AddToCartMutation
    extends GraphQLQuery<AddToCart$Mutation, AddToCartArguments> {
  AddToCartMutation({this.variables});

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
  AddToCart$Mutation parse(Map<String, dynamic> json) =>
      AddToCart$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetVoucherByCodeArguments extends JsonSerializable with EquatableMixin {
  GetVoucherByCodeArguments({@required this.code});

  @override
  factory GetVoucherByCodeArguments.fromJson(Map<String, dynamic> json) =>
      _$GetVoucherByCodeArgumentsFromJson(json);

  final String code;

  @override
  List<Object> get props => [code];
  @override
  Map<String, dynamic> toJson() => _$GetVoucherByCodeArgumentsToJson(this);
}

class GetVoucherByCodeQuery
    extends GraphQLQuery<GetVoucherByCode$Query, GetVoucherByCodeArguments> {
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
  GetVoucherByCode$Query parse(Map<String, dynamic> json) =>
      GetVoucherByCode$Query.fromJson(json);
}

class GetCartQuery extends GraphQLQuery<GetCart$Query, JsonSerializable> {
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
                            FragmentSpreadNode(
                                name: NameNode(value: 'Product'),
                                directives: [])
                          ]))
                    ]))
              ]))
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
  final String operationName = 'GetCart';

  @override
  List<Object> get props => [document, operationName];
  @override
  GetCart$Query parse(Map<String, dynamic> json) =>
      GetCart$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ShippingFeesArguments extends JsonSerializable with EquatableMixin {
  ShippingFeesArguments({@required this.addressId, this.voucherId});

  @override
  factory ShippingFeesArguments.fromJson(Map<String, dynamic> json) =>
      _$ShippingFeesArgumentsFromJson(json);

  final String addressId;

  final String voucherId;

  @override
  List<Object> get props => [addressId, voucherId];
  @override
  Map<String, dynamic> toJson() => _$ShippingFeesArgumentsToJson(this);
}

class ShippingFeesQuery
    extends GraphQLQuery<ShippingFees$Query, ShippingFeesArguments> {
  ShippingFeesQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ShippingFees'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'addressId')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'voucherId')),
              type:
                  NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'shippingFees'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'address_id'),
                          value:
                              VariableNode(name: NameNode(value: 'addressId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'voucher_id'),
                          value:
                              VariableNode(name: NameNode(value: 'voucherId')))
                    ]))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'ShippingFees';

  @override
  final ShippingFeesArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ShippingFees$Query parse(Map<String, dynamic> json) =>
      ShippingFees$Query.fromJson(json);
}
