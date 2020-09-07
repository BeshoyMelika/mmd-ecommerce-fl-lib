// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratings _$RatingsFromJson(Map<String, dynamic> json) {
  return Ratings()
    ..ratings = json['ratings'] == null
        ? null
        : RatingPaginator.fromJson(json['ratings'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RatingsToJson(Ratings instance) => <String, dynamic>{
      'ratings': instance.ratings?.toJson(),
    };

RatingPaginator _$RatingPaginatorFromJson(Map<String, dynamic> json) {
  return RatingPaginator()
    ..paginatorInfo = json['paginatorInfo'] == null
        ? null
        : PaginatorInfo.fromJson(json['paginatorInfo'] as Map<String, dynamic>)
    ..data = (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Rating.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RatingPaginatorToJson(RatingPaginator instance) =>
    <String, dynamic>{
      'paginatorInfo': instance.paginatorInfo?.toJson(),
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

PaginatorInfo _$PaginatorInfoFromJson(Map<String, dynamic> json) {
  return PaginatorInfo()
    ..count = json['count'] as int
    ..currentPage = json['currentPage'] as int
    ..firstItem = json['firstItem'] as int
    ..lastItem = json['lastItem'] as int
    ..hasMorePages = json['hasMorePages'] as bool
    ..lastPage = json['lastPage'] as int
    ..perPage = json['perPage'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$PaginatorInfoToJson(PaginatorInfo instance) =>
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

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return Rating()
    ..rating = json['rating'] as int
    ..review = json['review'] as String
    ..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'rating': instance.rating,
      'review': instance.review,
      'user': instance.user?.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..mobile = json['mobile'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
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
