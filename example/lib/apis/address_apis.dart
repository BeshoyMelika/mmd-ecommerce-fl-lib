import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

getAllAddress() async {
  await UserApiManager.getAllAddress(5, 1,
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
  await UserApiManager.createAddress("beshoy", "melika", "1", "test info",
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
  await UserApiManager.updateAddress("8", "beshoy", "melika", "1", "test info",
      "addition info test", "012", "30.4", "27.3", (bool success) {
    print("=========================================");
    print("Success Update Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Update Address api");
    print(error.exception);
  });
}

deleteAddress() async {
  await UserApiManager.deletaAddress("8", (bool success) {
    print("=========================================");
    print("Success Delete Address api $success");
  }, (QueryResult error) {
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx");
    print("Fail Delete Address api");
    print(error.exception);
  });
}

getCitiesAsset() async {
  await UserApiManager.getAllCities((List<City> list) {
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
