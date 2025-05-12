import 'package:cinefinder/core/common/image_url.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'results') MovieList? movies,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResult,
  }) = _SearchResponse;
  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

@freezed
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: 'poster_path') ImageUrl? posterPath,
    @JsonKey(name: 'adult') bool? adult,
    @JsonKey(name: 'overview') String? overview,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'backdrop_path') ImageUrl? backdropPath,
    @JsonKey(name: 'popularity') double? popularity,
    @JsonKey(name: 'vote_count') int? voteCount,
    @JsonKey(name: 'video') bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

typedef MovieList = List<MovieModel>;
