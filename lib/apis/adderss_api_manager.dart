import 'package:graphql_flutter/graphql_flutter.dart';

import '../generatedql/address_asset/graphql_api.dart';
import '../generatedql/address/graphql_api.dart';
import './base_api_manager.dart';

class AddressApiManager extends BaseApiManager {
  static Future<void> createAddress(
      String firstName,
      String lastName,
      String areaId,
      String info,
      String additionalInfo,
      String mobile,
      String lat,
      String lng,
      Function success,
      Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: CreateAddressQuery().document,
        variables: CreateAddressArguments(
                firstName: firstName,
                lastName: lastName,
                areaId: areaId,
                info: info,
                additionalInfo: additionalInfo,
                mobile: mobile,
                lat: lat,
                lng: lng)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(CreateAddress.fromJson(result.data).createAddress);
    }
  }

  static Future<void> updateAddress(
      String id,
      String firstName,
      String lastName,
      String areaId,
      String info,
      String additionalInfo,
      String mobile,
      String lat,
      String lng,
      Function success,
      Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: UpdateAddressQuery().document,
        variables: UpdateAddressArguments(
                id: id,
                firstName: firstName,
                lastName: lastName,
                areaId: areaId,
                info: info,
                additionalInfo: additionalInfo,
                mobile: mobile,
                lat: lat,
                lng: lng)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(UpdateAddress.fromJson(result.data).updateAddress);
    }
  }

  static Future<void> deletaAddress(
      String id, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: DeleteAddressQuery().document,
        variables: DeleteAddressArguments(id: id).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(DeleteAddress.fromJson(result.data).deleteAddress);
    }
  }

  static Future<void> getAllAddress(
      int first, int page, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: GetAllAddressQuery().document,
        variables: GetAllAddressArguments(first: first, page: page).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(GetAllAddress.fromJson(result.data).addresses);
    }
  }

  static Future<void> getAllCities(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient()
        .mutate(MutationOptions(documentNode: CitiesQuery().document));
    if (result.hasException) {
      fail(result);
    } else {
      success(Cities.fromJson(result.data).cities);
    }
  }

  static Future<void> getAreaById(
      String cityId, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: AreaByIDQuery().document,
        variables: AreaByIDArguments(cityId: cityId).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(AreaByID.fromJson(result.data).areas);
    }
  }
}
