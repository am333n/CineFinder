part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(1) int currentPage,
    String? movieQuery,
    @Default(ApiState.initial()) ApiState<SearchResponse> moviesStatus,
  }) = _HomeState;
  const HomeState._();
  bool get hasMorePages =>
      currentPage < (moviesStatus.getOrNull()?.totalPages ?? 1);
}
