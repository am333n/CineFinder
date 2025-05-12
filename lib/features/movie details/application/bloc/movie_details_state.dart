part of 'movie_details_bloc.dart';

@freezed
sealed class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.loading() = _Loading;
  const factory MovieDetailsState.loaded(MovieDetailsModel data) = _Loaded;
  const factory MovieDetailsState.error(String errorMessage) = _Error;
  const MovieDetailsState._();
  R when<R>({
    required R Function() loading,
    required R Function(MovieDetailsModel data) loaded,
    required R Function(String errorMessage) error,
  }) {
    return switch (this) {
      _Loading() => loading(),
      _Loaded(data: final data) => loaded(data),
      _Error(errorMessage: final errorMessage) => error(errorMessage),
      _ => throw Exception('Unknown state: $this'),
    };
  }
}
