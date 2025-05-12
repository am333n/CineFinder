import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cinefinder/core/common/api_state.dart';
import 'package:cinefinder/core/common/utils.dart';
import 'package:cinefinder/core/failure/failure_handler.dart';
import 'package:cinefinder/features/home/domain/movie_model.dart';
import 'package:cinefinder/features/home/infrastructure/home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repository;
  HomeBloc(this._repository) : super(HomeState()) {
    on<_SearchMovie>(
      _searchMovie,
      transformer: Utils.debounceSequential(Duration(milliseconds: 500)),
    );
    on<_Reset>(_resetMovies, transformer: restartable());
    on<_ChangePage>(_changePage, transformer: restartable());
    on<_Retry>(_retry, transformer: restartable());
  }

  Future<void> _searchMovie(_SearchMovie event, Emitter<HomeState> emit) async {
    final query = event.query;
    emit(state.copyWith(movieQuery: query, moviesStatus: ApiLoading()));

    final response = await _repository.getMovies(query);
    response.fold(
      (f) {
        emit(
          state.copyWith(
            moviesStatus: ApiError(FailureHandler.getFailureMessage(f)),
          ),
        );
      },
      (r) {
        emit(state.copyWith(moviesStatus: ApiLoaded(r)));

        final shouldResetToInitial =
            (query?.isEmpty ?? true) && (r.movies?.isEmpty ?? true);
        if (shouldResetToInitial) {
          Future.delayed(const Duration(seconds: 5), () {
            add(const HomeEvent.resetMovies());
          });
        }
      },
    );
  }

  void _resetMovies(_Reset event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        currentPage: 1,
        movieQuery: null,
        moviesStatus: const ApiInitial(),
      ),
    );
  }

  Future<void> _changePage(_ChangePage event, Emitter<HomeState> emit) async {
    final query = state.movieQuery;
    emit(state.copyWith(currentPage: event.pageNumber));
    final response = await _repository.getMovies(
      query,
      pageNumber: event.pageNumber,
    );
    response.fold(
      (l) {
        emit(
          state.copyWith(
            moviesStatus: ApiError(FailureHandler.getFailureMessage(l)),
          ),
        );
      },
      (r) {
        emit(state.copyWith(moviesStatus: ApiLoaded(r)));
      },
    );
  }

  Future<void> _retry(_Retry event, Emitter<HomeState> emit) async {
    final query = state.movieQuery;
    final pageNumber = state.currentPage;
    emit(state.copyWith(currentPage: pageNumber));
    final response = await _repository.getMovies(query, pageNumber: pageNumber);
    response.fold(
      (l) {
        emit(
          state.copyWith(
            moviesStatus: ApiError(FailureHandler.getFailureMessage(l)),
          ),
        );
      },
      (r) {
        emit(state.copyWith(moviesStatus: ApiLoaded(r)));
      },
    );
  }
}
