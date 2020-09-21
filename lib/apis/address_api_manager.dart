import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/address/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/address_asset/graphql_api.dart';
import '../generatedql/address_asset/graphql_api.dart';
import '../mmd_ecommerce.dart';
import 'error/api_error_helper.dart';

class AddressApiManager extends BaseApiManager {
  static Future<void> createAddressApi(
      String firstName,
      String lastName,
      String areaId,
      String info,
      String additionalInfo,
      String mobile,
      String lat,
      String lng,
      bool isDefault,
      Function success,
      Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: CreateAddressMutation().document,
        variables: CreateAddressArguments(
                firstName: firstName,
                lastName: lastName,
                areaId: areaId,
                info: info,
                additionalInfo: additionalInfo,
                mobile: mobile,
                lat: lat,
                lng: lng,
                isDefault: isDefault)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(CreateAddress$Mutation.fromJson(result.data).createAddress);
    }
  }

  static Future<void> updateAddressApi(
      String id,
      String firstName,
      String lastName,
      String areaId,
      String info,
      String additionalInfo,
      String mobile,
      String lat,
      String lng,
      bool isDefault,
      Function success,
      Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: UpdateAddressMutation().document,
        variables: UpdateAddressArguments(
                id: id,
                firstName: firstName,
                lastName: lastName,
                areaId: areaId,
                info: info,
                additionalInfo: additionalInfo,
                mobile: mobile,
                lat: lat,
                lng: lng,
                isDefault: isDefault)
            .toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(UpdateAddress$Mutation.fromJson(result.data).updateAddress);
    }
  }

  static Future<void> deleteAddressApi(
      String id, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: DeleteAddressMutation().document,
        variables: DeleteAddressArguments(id: id).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(DeleteAddress$Mutation.fromJson(result.data).deleteAddress);
    }
  }

  static Future<void> addressesApi(
      int first, int page, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: GetAllAddressQuery().document,
        variables: GetAllAddressArguments(first: first, page: page).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(GetAllAddress$Query.fromJson(result.data).addresses);
    }
  }

  static Future<void> citiesApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .mutate(MutationOptions(documentNode: CitiesQuery().document));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(Cities$Query.fromJson(result.data).cities);
    }
  }

  static Future<void> areaByIdApi(
      String cityId, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: AreaByIDQuery().document,
        variables: AreaByIDArguments(cityId: cityId).toJson()));
    if (result.hasException) {
      fail(ApiErrorHelper.handle(result));
    } else {
      success(AreaByID$Query.fromJson(result.data).areas);
    }
  }
}
