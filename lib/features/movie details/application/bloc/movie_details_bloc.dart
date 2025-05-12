import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cinefinder/core/failure/failure_handler.dart';
import 'package:cinefinder/features/movie%20details/domain/movie_details_model.dart';
import 'package:cinefinder/features/movie%20details/infrastructure/movie_details_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieDetailsRepository _repository;
  MovieDetailsBloc(this._repository) : super(_Loading()) {
    on<_GetDetails>(_getMovieDetails);
  }

  Future<void> _getMovieDetails(_GetDetails event, emit) async {
    emit(MovieDetailsState.loading());
    final response = await _repository.getMovieDetails(event.movieID);
    response.fold(
      (f) {
        emit(MovieDetailsState.error(FailureHandler.getFailureMessage(f)));
      },
      (r) {
        emit(MovieDetailsState.loaded(r));
      },
    );
  }
}
