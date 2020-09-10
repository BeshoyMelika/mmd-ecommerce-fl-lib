import 'package:graphql_flutter/graphql_flutter.dart';

class ApiErrorModel {
  final int errorCode;
  final QueryResult queryResult;
  final dynamic errorMessage;

  ApiErrorModel(this.errorCode, this.queryResult, this.errorMessage);

  static const CLIENT_EXCEPTION = 0;
  static const NETWORK_EXCEPTION = 0;
  static const AUTH_EXCEPTION = 1;
  static const VALIDATION_EXCEPTION = 2;
  static const GRAPH_EXCEPTION = 3;
  static const MESSAGE_EXCEPTION = 4;
}
