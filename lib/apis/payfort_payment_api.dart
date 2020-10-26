import 'package:http/http.dart';

import 'base/base_api_manager.dart';
import 'dart:convert';

class PayFortApiManager {
  static Future<void> payFortOperationsApi(Map<String, dynamic> data,
      Function(Map) success, Function(String, String) fail) async {
    const String OPERATION_URL =
        "https://sbpaymentservices.payfort.com/FortAPI/paymentApi";
    const Map header = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };

    const List<String> codeSuccess = ["14", "20"];
    const String STATUS_KEY = "status";
    const String RESPONSE_MESSAGE_KEY = "response_message";
    const String CATCH_ERROR_CODE = "500";
    Client http = BaseApiManager.getClient();

    await http
        .post(OPERATION_URL, headers: header, body: json.encode(data))
        .then((response) {
      Map extractedData = json.decode(response.body);
      if (response.statusCode == 200) {
        if (codeSuccess.contains(extractedData[STATUS_KEY])) {
          success(extractedData);
        } else {
          fail(extractedData[RESPONSE_MESSAGE_KEY], extractedData[STATUS_KEY]);
        }
      } else {
        fail(response.body, response.statusCode.toString());
      }
    }).catchError((onError) {
      fail(onError.toString(), CATCH_ERROR_CODE);
    });
  }
}
