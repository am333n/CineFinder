// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class _SearchMovie implements HomeEvent {
  const _SearchMovie({this.query});
  

 final  String? query;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMovieCopyWith<_SearchMovie> get copyWith => __$SearchMovieCopyWithImpl<_SearchMovie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMovie&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'HomeEvent.searchMovie(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchMovieCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$SearchMovieCopyWith(_SearchMovie value, $Res Function(_SearchMovie) _then) = __$SearchMovieCopyWithImpl;
@useResult
$Res call({
 String? query
});




}
/// @nodoc
class __$SearchMovieCopyWithImpl<$Res>
    implements _$SearchMovieCopyWith<$Res> {
  __$SearchMovieCopyWithImpl(this._self, this._then);

  final _SearchMovie _self;
  final $Res Function(_SearchMovie) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_SearchMovie(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Reset implements HomeEvent {
  const _Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.resetMovies()';
}


}




/// @nodoc


class _ChangePage implements HomeEvent {
  const _ChangePage(this.pageNumber);
  

 final  int pageNumber;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePageCopyWith<_ChangePage> get copyWith => __$ChangePageCopyWithImpl<_ChangePage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePage&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber));
}


@override
int get hashCode => Object.hash(runtimeType,pageNumber);

@override
String toString() {
  return 'HomeEvent.changePage(pageNumber: $pageNumber)';
}


}

/// @nodoc
abstract mixin class _$ChangePageCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$ChangePageCopyWith(_ChangePage value, $Res Function(_ChangePage) _then) = __$ChangePageCopyWithImpl;
@useResult
$Res call({
 int pageNumber
});




}
/// @nodoc
class __$ChangePageCopyWithImpl<$Res>
    implements _$ChangePageCopyWith<$Res> {
  __$ChangePageCopyWithImpl(this._self, this._then);

  final _ChangePage _self;
  final $Res Function(_ChangePage) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pageNumber = null,}) {
  return _then(_ChangePage(
null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Retry implements HomeEvent {
  const _Retry();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Retry);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.retry()';
}


}




/// @nodoc
mixin _$HomeState {

 int get currentPage; String? get movieQuery; ApiState<SearchResponse> get moviesStatus;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.movieQuery, movieQuery) || other.movieQuery == movieQuery)&&(identical(other.moviesStatus, moviesStatus) || other.moviesStatus == moviesStatus));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,movieQuery,moviesStatus);

@override
String toString() {
  return 'HomeState(currentPage: $currentPage, movieQuery: $movieQuery, moviesStatus: $moviesStatus)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 int currentPage, String? movieQuery, ApiState<SearchResponse> moviesStatus
});


$ApiStateCopyWith<SearchResponse, $Res> get moviesStatus;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? movieQuery = freezed,Object? moviesStatus = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,movieQuery: freezed == movieQuery ? _self.movieQuery : movieQuery // ignore: cast_nullable_to_non_nullable
as String?,moviesStatus: null == moviesStatus ? _self.moviesStatus : moviesStatus // ignore: cast_nullable_to_non_nullable
as ApiState<SearchResponse>,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiStateCopyWith<SearchResponse, $Res> get moviesStatus {
  
  return $ApiStateCopyWith<SearchResponse, $Res>(_self.moviesStatus, (value) {
    return _then(_self.copyWith(moviesStatus: value));
  });
}
}


/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({this.currentPage = 1, this.movieQuery, this.moviesStatus = const ApiState.initial()}): super._();
  

@override@JsonKey() final  int currentPage;
@override final  String? movieQuery;
@override@JsonKey() final  ApiState<SearchResponse> moviesStatus;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.movieQuery, movieQuery) || other.movieQuery == movieQuery)&&(identical(other.moviesStatus, moviesStatus) || other.moviesStatus == moviesStatus));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,movieQuery,moviesStatus);

@override
String toString() {
  return 'HomeState(currentPage: $currentPage, movieQuery: $movieQuery, moviesStatus: $moviesStatus)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 int currentPage, String? movieQuery, ApiState<SearchResponse> moviesStatus
});


@override $ApiStateCopyWith<SearchResponse, $Res> get moviesStatus;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? movieQuery = freezed,Object? moviesStatus = null,}) {
  return _then(_HomeState(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,movieQuery: freezed == movieQuery ? _self.movieQuery : movieQuery // ignore: cast_nullable_to_non_nullable
as String?,moviesStatus: null == moviesStatus ? _self.moviesStatus : moviesStatus // ignore: cast_nullable_to_non_nullable
as ApiState<SearchResponse>,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiStateCopyWith<SearchResponse, $Res> get moviesStatus {
  
  return $ApiStateCopyWith<SearchResponse, $Res>(_self.moviesStatus, (value) {
    return _then(_self.copyWith(moviesStatus: value));
  });
}
}

// dart format on
