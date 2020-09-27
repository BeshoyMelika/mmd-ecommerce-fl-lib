import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class LoggerHelper {
  static const loggerTag = "Logger Http";
  static const loggerSeparator = "-->";
  static const loggerLine = "==========================================";
  static const loggerRequest = "================= Request ================";
  static const loggerResponse = "================ Response ================";
  static const loggerUrl = "$loggerTag url $loggerSeparator";
  static const loggerHeaders = "$loggerTag headers $loggerSeparator";
  static const loggerStatusCode = "$loggerTag statusCode $loggerSeparator";
  static const loggerBody = "$loggerTag body $loggerSeparator";

  static void print2Lines() => debugPrint(loggerLine + "\n" + loggerLine);

  static void printUrl(dynamic url) => debugPrint("$loggerUrl $url");

  static void printHeaders(Map<String, String> headers) =>
      debugPrint("$loggerHeaders $headers");

  static void printStatusCode(int code) =>
      debugPrint("$loggerStatusCode $code");

  static void printBody(String body) => debugPrint("$loggerBody $body");

  static void logRequest(dynamic url, Map<String, String> headers) {
    print2Lines();
    debugPrint(loggerRequest);
    printUrl(url);
    printHeaders(headers);
    print2Lines();
  }

  static void logResponse(Response response) {
    print2Lines();
    debugPrint(loggerResponse);
    printUrl(response.request.url);
    printHeaders(response.headers);
    printStatusCode(response.statusCode);
    printBody(response.body);
    print2Lines();
  }

  static void logStreamedResponse(StreamedResponse response) async {
    var res = await Response.fromStream(response);
    logResponse(res);
  }
}
