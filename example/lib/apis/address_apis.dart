import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

getAllAddress() async {
  await AddressApiManager.getAllAddress(5, 1,
      (UserAddressPaginator addressPaginator) {
    print("=========================================");
    print("Success get my Address");
    print(addressPaginator.data.length);
    print(addressPaginator.data[0].area.city.name);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get my Address");
  });
}

createAddress() async {
  await AddressApiManager.createAddress("beshoy", "melika", "1", "test info",
      "addition info test", "012", "30.4", "27.3", (bool success) {
    print("=========================================");
    print("Success Create Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Create Address api");
    print(error.exception);
  });
}

updateAddress() async {
  await AddressApiManager.updateAddress("8", "beshoy", "melika", "1",
      "test info", "addition info test", "012", "30.4", "27.3", (bool success) {
    print("=========================================");
    print("Success Update Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Update Address api");
    print(error.exception);
  });
}

deleteAddress() async {
  await AddressApiManager.deletaAddress("8", (bool success) {
    print("=========================================");
    print("Success Delete Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Delete Address api");
    print(error.exception);
  });
}

getCitiesAsset() async {
  await AddressApiManager.getAllCities((List<City> list) {
    print("=========================================");
    print("Success get all cities  api ");
    print(list.length);
    print(list[0].name);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get all cities api");
    print(error.exception);
  });
}

getAreaByIdAsset(String cityId) async {
  await AddressApiManager.getAreaById(cityId, (List<Area> list) {
    print("=========================================");
    print("Success get all Area  api ");
    print(list.length);
    // print(list[0].name);
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail get all Area api");
    print(error.exception);
  });
}
