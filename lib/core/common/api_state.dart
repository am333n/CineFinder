import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'api_state.freezed.dart';
part 'api_state.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiState<T> with _$ApiState<T> {
  const factory ApiState.initial() = ApiInitial;
  const factory ApiState.loading() = ApiLoading;
  const factory ApiState.loaded(T data) = ApiLoaded;
  const factory ApiState.error(String errorMessage) = ApiError;

  factory ApiState.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ApiStateFromJson(json, fromJsonT);

  const ApiState._();

  T? getOrNull() => switch (this) {
    ApiLoaded<T>(:final data) => data,
    _ => null,
  };

  bool get isInitial => this is ApiInitial<T>;
  bool get isLoading => this is ApiLoading<T>;
  bool get hasError => this is ApiError<T>;
  bool get isLoaded => this is ApiLoaded<T>;

  String? get errorMessage => switch (this) {
    ApiError<T>(:final errorMessage) => errorMessage,
    _ => null,
  };

  R when<R>({
    required R Function() initial,
    required R Function() loading,
    required R Function(T data) loaded,
    required R Function(String errorMessage) error,
  }) {
    return switch (this) {
      ApiInitial<T>() => initial(),
      ApiLoading<T>() => loading(),
      ApiLoaded<T>(data: final data) => loaded(data),
      ApiError<T>(errorMessage: final errorMessage) => error(errorMessage),
    };
  }

  @override
  toJson(toJsonT);
}
