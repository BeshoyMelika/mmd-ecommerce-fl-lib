import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';
import 'package:mmd_ecommerce_fl_lib/common_models/common_models.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/address/graphql_api.dart';
import 'package:mmd_ecommerce_fl_lib/generatedql/user/graphql_api.dart';

class UserApiManager extends BaseApiManager {
  static Future<void> refreshTokenApi(
      String token, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: RefreshTokenQuery().document,
        variables: RefreshTokenArguments(token: token).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(AuthPayloadRefreshToken(
          RefreshToken.fromJson(result.data).refreshToken));
    }
  }

  static Future<void> updateProfileApi(
      String name, String mobile, Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().mutate(MutationOptions(
        documentNode: UpdateProfileQuery().document,
        variables:
            UpdateProfileArguments(name: name, mobile: mobile).toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(UpdateProfile.fromJson(result.data).updateProfile);
    }
  }

  static Future<void> myProfileApi(Function success, Function fail) async {
    var result = await BaseApiManager.mainClient().query(QueryOptions(
        documentNode: ProfileQuery().document,
        fetchPolicy: FetchPolicy.noCache));
    if (result.hasException) {
      fail(result);
    } else {
      success(UserMyProfile(Profile.fromJson(result.data).profile));
    }
  }

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
        documentNode: CreateAddressQuery().document,
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
      fail(result);
    } else {
      success(CreateAddress.fromJson(result.data).createAddress);
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
                lng: lng,
                isDefault: isDefault)
            .toJson()));
    if (result.hasException) {
      fail(result);
    } else {
      success(UpdateAddress.fromJson(result.data).updateAddress);
    }
  }

  static Future<void> deletaAddressApi(
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

  static Future<void> allAddressApi(
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
}
