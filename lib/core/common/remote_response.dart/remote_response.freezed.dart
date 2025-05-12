// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteResponse<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteResponse<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteResponse<$T>()';
}


}

/// @nodoc
class $RemoteResponseCopyWith<T,$Res>  {
$RemoteResponseCopyWith(RemoteResponse<T> _, $Res Function(RemoteResponse<T>) __);
}


/// @nodoc


class RequestSuccess<T> implements RemoteResponse<T> {
  const RequestSuccess(this.data);
  

 final  T data;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSuccessCopyWith<T, RequestSuccess<T>> get copyWith => _$RequestSuccessCopyWithImpl<T, RequestSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RemoteResponse<$T>.requestSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $RequestSuccessCopyWith<T,$Res> implements $RemoteResponseCopyWith<T, $Res> {
  factory $RequestSuccessCopyWith(RequestSuccess<T> value, $Res Function(RequestSuccess<T>) _then) = _$RequestSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$RequestSuccessCopyWithImpl<T,$Res>
    implements $RequestSuccessCopyWith<T, $Res> {
  _$RequestSuccessCopyWithImpl(this._self, this._then);

  final RequestSuccess<T> _self;
  final $Res Function(RequestSuccess<T>) _then;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(RequestSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class RequestFailed<T> implements RemoteResponse<T> {
  const RequestFailed(this.code, this.error);
  

 final  int? code;
 final  T error;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestFailedCopyWith<T, RequestFailed<T>> get copyWith => _$RequestFailedCopyWithImpl<T, RequestFailed<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestFailed<T>&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,code,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'RemoteResponse<$T>.requestFailed(code: $code, error: $error)';
}


}

/// @nodoc
abstract mixin class $RequestFailedCopyWith<T,$Res> implements $RemoteResponseCopyWith<T, $Res> {
  factory $RequestFailedCopyWith(RequestFailed<T> value, $Res Function(RequestFailed<T>) _then) = _$RequestFailedCopyWithImpl;
@useResult
$Res call({
 int? code, T error
});




}
/// @nodoc
class _$RequestFailedCopyWithImpl<T,$Res>
    implements $RequestFailedCopyWith<T, $Res> {
  _$RequestFailedCopyWithImpl(this._self, this._then);

  final RequestFailed<T> _self;
  final $Res Function(RequestFailed<T>) _then;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? error = freezed,}) {
  return _then(RequestFailed<T>(
freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
