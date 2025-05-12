part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.searchMovie({String? query}) = _SearchMovie;
  const factory HomeEvent.resetMovies() = _Reset;
  const factory HomeEvent.changePage(int pageNumber) = _ChangePage;
  const factory HomeEvent.retry() = _Retry;
}
