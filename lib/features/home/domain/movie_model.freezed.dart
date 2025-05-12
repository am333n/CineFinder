// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponse {

@JsonKey(name: 'page') int? get page;@JsonKey(name: 'results') MovieList? get movies;@JsonKey(name: 'total_pages') int? get totalPages;@JsonKey(name: 'total_results') int? get totalResult;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResult, totalResult) || other.totalResult == totalResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(movies),totalPages,totalResult);

@override
String toString() {
  return 'SearchResponse(page: $page, movies: $movies, totalPages: $totalPages, totalResult: $totalResult)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'page') int? page,@JsonKey(name: 'results') MovieList? movies,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResult
});




}
/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? movies = freezed,Object? totalPages = freezed,Object? totalResult = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,movies: freezed == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as MovieList?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResult: freezed == totalResult ? _self.totalResult : totalResult // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchResponse implements SearchResponse {
  const _SearchResponse({@JsonKey(name: 'page') this.page, @JsonKey(name: 'results') final  MovieList? movies, @JsonKey(name: 'total_pages') this.totalPages, @JsonKey(name: 'total_results') this.totalResult}): _movies = movies;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

@override@JsonKey(name: 'page') final  int? page;
 final  MovieList? _movies;
@override@JsonKey(name: 'results') MovieList? get movies {
  final value = _movies;
  if (value == null) return null;
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'total_pages') final  int? totalPages;
@override@JsonKey(name: 'total_results') final  int? totalResult;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseCopyWith<_SearchResponse> get copyWith => __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResult, totalResult) || other.totalResult == totalResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_movies),totalPages,totalResult);

@override
String toString() {
  return 'SearchResponse(page: $page, movies: $movies, totalPages: $totalPages, totalResult: $totalResult)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'page') int? page,@JsonKey(name: 'results') MovieList? movies,@JsonKey(name: 'total_pages') int? totalPages,@JsonKey(name: 'total_results') int? totalResult
});




}
/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? movies = freezed,Object? totalPages = freezed,Object? totalResult = freezed,}) {
  return _then(_SearchResponse(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,movies: freezed == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as MovieList?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,totalResult: freezed == totalResult ? _self.totalResult : totalResult // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MovieModel {

@JsonKey(name: 'poster_path') ImageUrl? get posterPath;@JsonKey(name: 'adult') bool? get adult;@JsonKey(name: 'overview') String? get overview;@JsonKey(name: 'release_date') String? get releaseDate;@JsonKey(name: 'genre_ids') List<int>? get genreIds;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'original_title') String? get originalTitle;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'backdrop_path') ImageUrl? get backdropPath;@JsonKey(name: 'popularity') double? get popularity;@JsonKey(name: 'vote_count') int? get voteCount;@JsonKey(name: 'video') bool? get video;@JsonKey(name: 'vote_average') double? get voteAverage;
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieModelCopyWith<MovieModel> get copyWith => _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieModel&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterPath,adult,overview,releaseDate,const DeepCollectionEquality().hash(genreIds),id,originalTitle,originalLanguage,title,backdropPath,popularity,voteCount,video,voteAverage);

@override
String toString() {
  return 'MovieModel(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
}


}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res>  {
  factory $MovieModelCopyWith(MovieModel value, $Res Function(MovieModel) _then) = _$MovieModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'poster_path') ImageUrl? posterPath,@JsonKey(name: 'adult') bool? adult,@JsonKey(name: 'overview') String? overview,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'genre_ids') List<int>? genreIds,@JsonKey(name: 'id') int? id,@JsonKey(name: 'original_title') String? originalTitle,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'title') String? title,@JsonKey(name: 'backdrop_path') ImageUrl? backdropPath,@JsonKey(name: 'popularity') double? popularity,@JsonKey(name: 'vote_count') int? voteCount,@JsonKey(name: 'video') bool? video,@JsonKey(name: 'vote_average') double? voteAverage
});


$ImageUrlCopyWith<$Res>? get posterPath;$ImageUrlCopyWith<$Res>? get backdropPath;

}
/// @nodoc
class _$MovieModelCopyWithImpl<$Res>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posterPath = freezed,Object? adult = freezed,Object? overview = freezed,Object? releaseDate = freezed,Object? genreIds = freezed,Object? id = freezed,Object? originalTitle = freezed,Object? originalLanguage = freezed,Object? title = freezed,Object? backdropPath = freezed,Object? popularity = freezed,Object? voteCount = freezed,Object? video = freezed,Object? voteAverage = freezed,}) {
  return _then(_self.copyWith(
posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as ImageUrl?,adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as ImageUrl?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageUrlCopyWith<$Res>? get posterPath {
    if (_self.posterPath == null) {
    return null;
  }

  return $ImageUrlCopyWith<$Res>(_self.posterPath!, (value) {
    return _then(_self.copyWith(posterPath: value));
  });
}/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageUrlCopyWith<$Res>? get backdropPath {
    if (_self.backdropPath == null) {
    return null;
  }

  return $ImageUrlCopyWith<$Res>(_self.backdropPath!, (value) {
    return _then(_self.copyWith(backdropPath: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _MovieModel implements MovieModel {
  const _MovieModel({@JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'adult') this.adult, @JsonKey(name: 'overview') this.overview, @JsonKey(name: 'release_date') this.releaseDate, @JsonKey(name: 'genre_ids') final  List<int>? genreIds, @JsonKey(name: 'id') this.id, @JsonKey(name: 'original_title') this.originalTitle, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'title') this.title, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'popularity') this.popularity, @JsonKey(name: 'vote_count') this.voteCount, @JsonKey(name: 'video') this.video, @JsonKey(name: 'vote_average') this.voteAverage}): _genreIds = genreIds;
  factory _MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

@override@JsonKey(name: 'poster_path') final  ImageUrl? posterPath;
@override@JsonKey(name: 'adult') final  bool? adult;
@override@JsonKey(name: 'overview') final  String? overview;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
 final  List<int>? _genreIds;
@override@JsonKey(name: 'genre_ids') List<int>? get genreIds {
  final value = _genreIds;
  if (value == null) return null;
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'backdrop_path') final  ImageUrl? backdropPath;
@override@JsonKey(name: 'popularity') final  double? popularity;
@override@JsonKey(name: 'vote_count') final  int? voteCount;
@override@JsonKey(name: 'video') final  bool? video;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieModelCopyWith<_MovieModel> get copyWith => __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieModel&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterPath,adult,overview,releaseDate,const DeepCollectionEquality().hash(_genreIds),id,originalTitle,originalLanguage,title,backdropPath,popularity,voteCount,video,voteAverage);

@override
String toString() {
  return 'MovieModel(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
}


}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(_MovieModel value, $Res Function(_MovieModel) _then) = __$MovieModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'poster_path') ImageUrl? posterPath,@JsonKey(name: 'adult') bool? adult,@JsonKey(name: 'overview') String? overview,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'genre_ids') List<int>? genreIds,@JsonKey(name: 'id') int? id,@JsonKey(name: 'original_title') String? originalTitle,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'title') String? title,@JsonKey(name: 'backdrop_path') ImageUrl? backdropPath,@JsonKey(name: 'popularity') double? popularity,@JsonKey(name: 'vote_count') int? voteCount,@JsonKey(name: 'video') bool? video,@JsonKey(name: 'vote_average') double? voteAverage
});


@override $ImageUrlCopyWith<$Res>? get posterPath;@override $ImageUrlCopyWith<$Res>? get backdropPath;

}
/// @nodoc
class __$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posterPath = freezed,Object? adult = freezed,Object? overview = freezed,Object? releaseDate = freezed,Object? genreIds = freezed,Object? id = freezed,Object? originalTitle = freezed,Object? originalLanguage = freezed,Object? title = freezed,Object? backdropPath = freezed,Object? popularity = freezed,Object? voteCount = freezed,Object? video = freezed,Object? voteAverage = freezed,}) {
  return _then(_MovieModel(
posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as ImageUrl?,adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as ImageUrl?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageUrlCopyWith<$Res>? get posterPath {
    if (_self.posterPath == null) {
    return null;
  }

  return $ImageUrlCopyWith<$Res>(_self.posterPath!, (value) {
    return _then(_self.copyWith(posterPath: value));
  });
}/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageUrlCopyWith<$Res>? get backdropPath {
    if (_self.backdropPath == null) {
    return null;
  }

  return $ImageUrlCopyWith<$Res>(_self.backdropPath!, (value) {
    return _then(_self.copyWith(backdropPath: value));
  });
}
}

// dart format on
