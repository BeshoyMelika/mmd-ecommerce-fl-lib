import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

getAllAddress() async {
  await AddressApiManager.addressesApi(
      5, 1, (AddressesWrapper addressPaginator) {}, (ApiErrorModel error) {});
}

createAddress() async {
  await AddressApiManager.createAddressApi(
      "beshoy",
      "melika",
      "1",
      "test info",
      "addition info test",
      "012",
      "30.4",
      "27.3",
      false,
      (bool success) {},
      (ApiErrorModel error) {});
}

updateAddress() async {
  await AddressApiManager.updateAddressApi(
      "8",
      "beshoy",
      "melika",
      "1",
      "test info",
      "addition info test",
      "012",
      "30.4",
      "27.3",
      false,
      (bool success) {},
      (ApiErrorModel error) {});
}

deleteAddress() async {
  await AddressApiManager.deleteAddressApi(
      "8", (bool success) {}, (ApiErrorModel error) {});
}

getCitiesAsset() async {
  await AddressApiManager.citiesApi(
      (CitiesList citiesModel) {}, (ApiErrorModel error) {});
}

getAreaByIdAsset(String cityId) async {
  await AddressApiManager.areaByIdApi(cityId, (AreasList areasModel) {
    //
  }, (ApiErrorModel error) {});
}
