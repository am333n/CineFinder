// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiInitial<T> _$ApiInitialFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ApiInitial<T>($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ApiInitialToJson<T>(
  ApiInitial<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'runtimeType': instance.$type};

ApiLoading<T> _$ApiLoadingFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ApiLoading<T>($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ApiLoadingToJson<T>(
  ApiLoading<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'runtimeType': instance.$type};

ApiLoaded<T> _$ApiLoadedFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ApiLoaded<T>(
  fromJsonT(json['data']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ApiLoadedToJson<T>(
  ApiLoaded<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': toJsonT(instance.data),
  'runtimeType': instance.$type,
};

ApiError<T> _$ApiErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ApiError<T>(
  json['errorMessage'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ApiErrorToJson<T>(
  ApiError<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'errorMessage': instance.errorMessage,
  'runtimeType': instance.$type,
};
