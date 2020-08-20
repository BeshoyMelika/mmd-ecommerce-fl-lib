import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

ValueNotifier<GraphQLClient> getClient(String url) {
  return ValueNotifier(
    GraphQLClient(
      cache: InMemoryCache(),
      link: HttpLink(uri: url),
    ),
  );
}

GraphQLClient getGraphQLClient(String url) {
  return GraphQLClient(
    cache: InMemoryCache(),
    link: HttpLink(uri: url),
  );
}
