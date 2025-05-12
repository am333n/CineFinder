// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailsEvent {

 int get movieID;
/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith => _$MovieDetailsEventCopyWithImpl<MovieDetailsEvent>(this as MovieDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsEvent&&(identical(other.movieID, movieID) || other.movieID == movieID));
}


@override
int get hashCode => Object.hash(runtimeType,movieID);

@override
String toString() {
  return 'MovieDetailsEvent(movieID: $movieID)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsEventCopyWith<$Res>  {
  factory $MovieDetailsEventCopyWith(MovieDetailsEvent value, $Res Function(MovieDetailsEvent) _then) = _$MovieDetailsEventCopyWithImpl;
@useResult
$Res call({
 int movieID
});




}
/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._self, this._then);

  final MovieDetailsEvent _self;
  final $Res Function(MovieDetailsEvent) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movieID = null,}) {
  return _then(_self.copyWith(
movieID: null == movieID ? _self.movieID : movieID // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _GetDetails implements MovieDetailsEvent {
  const _GetDetails(this.movieID);
  

@override final  int movieID;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDetailsCopyWith<_GetDetails> get copyWith => __$GetDetailsCopyWithImpl<_GetDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDetails&&(identical(other.movieID, movieID) || other.movieID == movieID));
}


@override
int get hashCode => Object.hash(runtimeType,movieID);

@override
String toString() {
  return 'MovieDetailsEvent.getDetails(movieID: $movieID)';
}


}

/// @nodoc
abstract mixin class _$GetDetailsCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory _$GetDetailsCopyWith(_GetDetails value, $Res Function(_GetDetails) _then) = __$GetDetailsCopyWithImpl;
@override @useResult
$Res call({
 int movieID
});




}
/// @nodoc
class __$GetDetailsCopyWithImpl<$Res>
    implements _$GetDetailsCopyWith<$Res> {
  __$GetDetailsCopyWithImpl(this._self, this._then);

  final _GetDetails _self;
  final $Res Function(_GetDetails) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movieID = null,}) {
  return _then(_GetDetails(
null == movieID ? _self.movieID : movieID // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MovieDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsState()';
}


}

/// @nodoc
class $MovieDetailsStateCopyWith<$Res>  {
$MovieDetailsStateCopyWith(MovieDetailsState _, $Res Function(MovieDetailsState) __);
}


/// @nodoc


class _Loading extends MovieDetailsState {
  const _Loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsState.loading()';
}


}




/// @nodoc


class _Loaded extends MovieDetailsState {
  const _Loaded(this.data): super._();
  

 final  MovieDetailsModel data;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'MovieDetailsState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $MovieDetailsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 MovieDetailsModel data
});


$MovieDetailsModelCopyWith<$Res> get data;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_Loaded(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as MovieDetailsModel,
  ));
}

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieDetailsModelCopyWith<$Res> get data {
  
  return $MovieDetailsModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _Error extends MovieDetailsState {
  const _Error(this.errorMessage): super._();
  

 final  String errorMessage;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MovieDetailsState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $MovieDetailsStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_Error(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
