// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratings$Query$RatingPaginator$PaginatorInfo
    _$Ratings$Query$RatingPaginator$PaginatorInfoFromJson(
        Map<String, dynamic> json) {
  return Ratings$Query$RatingPaginator$PaginatorInfo()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..firstItem = json['firstItem'] as int
    ..lastItem = json['lastItem'] as int
    ..hasMorePages = json['hasMorePages'] as bool
    ..lastPage = json['lastPage'] as int
    ..perPage = json['perPage'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$Ratings$Query$RatingPaginator$PaginatorInfoToJson(
        Ratings$Query$RatingPaginator$PaginatorInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'currentPage': instance.currentPage,
      'firstItem': instance.firstItem,
      'lastItem': instance.lastItem,
      'hasMorePages': instance.hasMorePages,
      'lastPage': instance.lastPage,
      'perPage': instance.perPage,
      'total': instance.total,
    };

Ratings$Query$RatingPaginator$Rating$User
    _$Ratings$Query$RatingPaginator$Rating$UserFromJson(
        Map<String, dynamic> json) {
  return Ratings$Query$RatingPaginator$Rating$User()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..mobile = json['mobile'] as String;
}

Map<String, dynamic> _$Ratings$Query$RatingPaginator$Rating$UserToJson(
        Ratings$Query$RatingPaginator$Rating$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
    };

Ratings$Query$RatingPaginator$Rating
    _$Ratings$Query$RatingPaginator$RatingFromJson(Map<String, dynamic> json) {
  return Ratings$Query$RatingPaginator$Rating()
    ..rating = json['rating'] as int
    ..review = json['review'] as String
    ..user = json['user'] == null
        ? null
        : Ratings$Query$RatingPaginator$Rating$User.fromJson(
            json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Ratings$Query$RatingPaginator$RatingToJson(
        Ratings$Query$RatingPaginator$Rating instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'review': instance.review,
      'user': instance.user?.toJson(),
    };

Ratings$Query$RatingPaginator _$Ratings$Query$RatingPaginatorFromJson(
    Map<String, dynamic> json) {
  return Ratings$Query$RatingPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : Ratings$Query$RatingPaginator$PaginatorInfo.fromJson(
            json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : Ratings$Query$RatingPaginator$Rating.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Ratings$Query$RatingPaginatorToJson(
        Ratings$Query$RatingPaginator instance) =>
    <String, dynamic>{
      'paginatorInfo': instance.paginatorInfo?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

Ratings$Query _$Ratings$QueryFromJson(Map<String, dynamic> json) {
  return Ratings$Query()
    ..ratings = json['ratings'] == null
        ? null
        : Ratings$Query$RatingPaginator.fromJson(
            json['ratings'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Ratings$QueryToJson(Ratings$Query instance) =>
    <String, dynamic>{
      'ratings': instance.ratings?.toJson(),
    };

RatingsArguments _$RatingsArgumentsFromJson(Map<String, dynamic> json) {
  return RatingsArguments(
    first: json['first'] as int,
    page: json['page'] as int,
    productsId: json['productsId'] as String,
  );
}

Map<String, dynamic> _$RatingsArgumentsToJson(RatingsArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
      'page': instance.page,
      'productsId': instance.productsId,
    };
