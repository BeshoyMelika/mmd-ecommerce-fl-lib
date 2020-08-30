import 'package:graphql_flutter/graphql_flutter.dart';

class BaseApiManager {
  static String _url;
  static GraphQLClient _client;

  static void setUrl(baseUrl) {
    _url = baseUrl + "/graphql";
  }

  static Map<String, String> getHeaders() {
    return {
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5IiwianRpIjoiMjBlOWQ3Y2Y4ZGU1MjQxMzIyMjczMTI3MWYxZThkNzRkZWQ1ODkwYTI1MmIxMjgwMjE2N2NhZTBkMzE5MmQyM2YzYTNlNWZjMDlhMjZkYTAiLCJpYXQiOjE1OTg4MjQ1ODMsIm5iZiI6MTU5ODgyNDU4MywiZXhwIjoxNjMwMzYwNTgzLCJzdWIiOiI2Iiwic2NvcGVzIjpbIioiXX0.sLbT-dhqgEaCotzd5-D39ePaiOVSY2PRPaJrRJHp2Opy_Hm35jo28SIpKQKX0HZC6dhhDghZuB4NZQjZewh_PHKL04Ofo1expwPCeD_a14fvjVnjr-jZoTJ4vznYdQtiZdEKup3ZrzhU6ZdM5gHOZ-7Bbz2k_K6p4atGqpx9v_u7fwLgaLlFML2dJWqhVNZ5S850yKxuLZnCu5PgAaW5lFItgWbt-dZBBAuZE4S5b4bC2kJBlcpCujAbvEBpYt6YUyHuhsqUKWGGJViSRgsD75LnOzrdatI2pRLHUuQdJyG62deKNL7QCL6rMprtie1nzRIE0_j2sFVKaRHqfBMHPK1pe5tGjVnMVG2GxwPNhKTuCCnQ-5zWwExq1ViDDOLavL76RA6hJd3NpQgy2sf_AY_13fqRMKK-EydHcrhPYofgndbZFMy7KHQsDKd3-7nHx4Nw4n5f5Pfr202d8ADE4HfrzLZa-at9Joc-Kr-nTlFUHoX7VqbZ1plMKKgtxWv8DparWTWvvo8AYISMVyb-05GJp5NHXRgXA8OZRFGiH8QWRIBNtN8-68xwa2bR_dY1w4a1iSicA3OLIQnMSjWgbmEiJ0HjQdG0G2ZAm_qzwVx5oqjo9PlC9EHVECI8d_RDzASsitC9a-omx8LUol7FGgmuLScnlrA5CRGNbcKjlhc',
    };
  }

  static GraphQLClient client() {
    if (_client == null) {
      _client = GraphQLClient(
        cache: InMemoryCache(),
        link: HttpLink(uri: _url),
      );
    }
    return _client;
  }

  static GraphQLClient authClient() {
    return GraphQLClient(
      cache: InMemoryCache(),
      link: HttpLink(uri: _url, headers: getHeaders()),
    );
  }
}
