import 'package:graphql_flutter/graphql_flutter.dart';

import '../generatedql/address_asset/graphql_api.dart';
import './base_api_manager.dart';

class AddressAssetApiManager extends BaseApiManager {
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
