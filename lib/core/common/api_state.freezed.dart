// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ApiState<T> _$ApiStateFromJson<T>(
  Map<String, dynamic> json,T Function(Object?) fromJsonT
) {
        switch (json['runtimeType']) {
                  case 'initial':
          return ApiInitial<T>.fromJson(
            json,fromJsonT
          );
                case 'loading':
          return ApiLoading<T>.fromJson(
            json,fromJsonT
          );
                case 'loaded':
          return ApiLoaded<T>.fromJson(
            json,fromJsonT
          );
                case 'error':
          return ApiError<T>.fromJson(
            json,fromJsonT
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ApiState',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ApiState<T> implements DiagnosticableTreeMixin {



  /// Serializes this ApiState to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiState<T>);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>()';
}


}

/// @nodoc
class $ApiStateCopyWith<T,$Res>  {
$ApiStateCopyWith(ApiState<T> _, $Res Function(ApiState<T>) __);
}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class ApiInitial<T> extends ApiState<T> with DiagnosticableTreeMixin {
  const ApiInitial({final  String? $type}): $type = $type ?? 'initial',super._();
  factory ApiInitial.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiInitialFromJson(json,fromJsonT);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiInitialToJson<T>(this, toJsonT);
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiInitial<T>);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.initial()';
}


}




/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class ApiLoading<T> extends ApiState<T> with DiagnosticableTreeMixin {
  const ApiLoading({final  String? $type}): $type = $type ?? 'loading',super._();
  factory ApiLoading.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiLoadingFromJson(json,fromJsonT);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiLoadingToJson<T>(this, toJsonT);
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiLoading<T>);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.loading()';
}


}




/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class ApiLoaded<T> extends ApiState<T> with DiagnosticableTreeMixin {
  const ApiLoaded(this.data, {final  String? $type}): $type = $type ?? 'loaded',super._();
  factory ApiLoaded.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiLoadedFromJson(json,fromJsonT);

 final  T data;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiLoadedCopyWith<T, ApiLoaded<T>> get copyWith => _$ApiLoadedCopyWithImpl<T, ApiLoaded<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiLoadedToJson<T>(this, toJsonT);
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.loaded'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiLoaded<T>&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $ApiLoadedCopyWith<T,$Res> implements $ApiStateCopyWith<T, $Res> {
  factory $ApiLoadedCopyWith(ApiLoaded<T> value, $Res Function(ApiLoaded<T>) _then) = _$ApiLoadedCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ApiLoadedCopyWithImpl<T,$Res>
    implements $ApiLoadedCopyWith<T, $Res> {
  _$ApiLoadedCopyWithImpl(this._self, this._then);

  final ApiLoaded<T> _self;
  final $Res Function(ApiLoaded<T>) _then;

/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ApiLoaded<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class ApiError<T> extends ApiState<T> with DiagnosticableTreeMixin {
  const ApiError(this.errorMessage, {final  String? $type}): $type = $type ?? 'error',super._();
  factory ApiError.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiErrorFromJson(json,fromJsonT);

 final  String errorMessage;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiErrorCopyWith<T, ApiError<T>> get copyWith => _$ApiErrorCopyWithImpl<T, ApiError<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiErrorToJson<T>(this, toJsonT);
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ApiState<$T>.error'))
    ..add(DiagnosticsProperty('errorMessage', errorMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiError<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ApiState<$T>.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ApiErrorCopyWith<T,$Res> implements $ApiStateCopyWith<T, $Res> {
  factory $ApiErrorCopyWith(ApiError<T> value, $Res Function(ApiError<T>) _then) = _$ApiErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$ApiErrorCopyWithImpl<T,$Res>
    implements $ApiErrorCopyWith<T, $Res> {
  _$ApiErrorCopyWithImpl(this._self, this._then);

  final ApiError<T> _self;
  final $Res Function(ApiError<T>) _then;

/// Create a copy of ApiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(ApiError<T>(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
