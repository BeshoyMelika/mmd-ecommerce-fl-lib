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

  static void print2Lines() => print(loggerLine + "\n" + loggerLine);

  static void printUrl(dynamic url) => print("$loggerUrl $url");

  static void printHeaders(Map<String, String> headers) =>
      print("$loggerHeaders $headers");

  static void printStatusCode(int code) => print("$loggerStatusCode $code");

  static void printBody(String body) => print("$loggerBody $body");

  static void logRequest(dynamic url, Map<String, String> headers) {
    print2Lines();
    print(loggerRequest);
    printUrl(url);
    printHeaders(headers);
    print2Lines();
  }

  static void logResponse(Response response) {
    print2Lines();
    print(loggerResponse);
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
