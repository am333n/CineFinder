// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      page: (json['page'] as num?)?.toInt(),
      movies:
          (json['results'] as List<dynamic>?)
              ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResult: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResult,
    };

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  posterPath:
      json['poster_path'] == null
          ? null
          : ImageUrl.fromJson(json['poster_path']),
  adult: json['adult'] as bool?,
  overview: json['overview'] as String?,
  releaseDate: json['release_date'] as String?,
  genreIds:
      (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
  id: (json['id'] as num?)?.toInt(),
  originalTitle: json['original_title'] as String?,
  originalLanguage: json['original_language'] as String?,
  title: json['title'] as String?,
  backdropPath:
      json['backdrop_path'] == null
          ? null
          : ImageUrl.fromJson(json['backdrop_path']),
  popularity: (json['popularity'] as num?)?.toDouble(),
  voteCount: (json['vote_count'] as num?)?.toInt(),
  video: json['video'] as bool?,
  voteAverage: (json['vote_average'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'video': instance.video,
      'vote_average': instance.voteAverage,
    };
