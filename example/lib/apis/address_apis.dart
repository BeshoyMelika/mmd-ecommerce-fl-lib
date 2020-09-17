import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

getAllAddress() async {
  await AddressApiManager.addressesApi(
      5, 1, (UserAddressPaginator addressPaginator) {}, (QueryResult error) {});
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
      (QueryResult error) {});
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
      (QueryResult error) {});
}

deleteAddress() async {
  await AddressApiManager.deleteAddressApi(
      "8", (bool success) {}, (QueryResult error) {});
}

getCitiesAsset() async {
  await AddressApiManager.citiesApi(
      (List<City> list) {}, (QueryResult error) {});
}

getAreaByIdAsset(String cityId) async {
  await AddressApiManager.areaByIdApi(cityId, (List<Area> list) {
    //
  }, (QueryResult error) {});
}
