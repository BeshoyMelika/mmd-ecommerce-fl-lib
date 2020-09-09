import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:mmd_ecommerce_fl_lib/apis/logger/logger_helper.dart';

class LoggerClient implements Client {
  Client _client;

  LoggerClient(this._client);

  @override
  void close() => _client.close();

  @override
  Future<Response> delete(url, {Map<String, String> headers}) {
    LoggerHelper.logRequest(url, headers);
    return _client.delete(url, headers: headers).then((response) {
      // add logger here ..
      return Future.value(response);
    });
  }

  @override
  Future<Response> get(url, {Map<String, String> headers}) {
    LoggerHelper.logRequest(url, headers);
    return _client.get(url, headers: headers).then((response) {
      return Future.value(response);
    });
  }

  @override
  Future<Response> head(url, {Map<String, String> headers}) {
    LoggerHelper.logRequest(url, headers);
    return _client.head(url, headers: headers).then((response) {
      return Future.value(response);
    });
  }

  @override
  Future<Response> patch(url,
      {Map<String, String> headers, body, Encoding encoding}) {
    LoggerHelper.logRequest(url, headers);
    return _client
        .patch(url, headers: headers, body: body, encoding: encoding)
        .then((response) {
      return Future.value(response);
    });
  }

  @override
  Future<Response> post(url,
      {Map<String, String> headers, body, Encoding encoding}) {
    LoggerHelper.logRequest(url, headers);
    return _client
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((response) {
      return Future.value(response);
    });
  }

  @override
  Future<Response> put(url,
      {Map<String, String> headers, body, Encoding encoding}) {
    LoggerHelper.logRequest(url, headers);
    return _client
        .put(url, headers: headers, body: body, encoding: encoding)
        .then((response) {
      return Future.value(response);
    });
  }

  @override
  Future<String> read(url, {Map<String, String> headers}) {
    return _client.read(url, headers: headers);
  }

  @override
  Future<Uint8List> readBytes(url, {Map<String, String> headers}) {
    return _client.readBytes(url, headers: headers);
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    LoggerHelper.logRequest(request.url, request.headers);
    return _client.send(request).then((StreamedResponse response) {
      LoggerHelper.logStreamedResponse(response);
      return Future.value(response);
    });
  }
}
