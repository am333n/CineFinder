import 'package:cinefinder/core/common/base/base_repository.dart';
import 'package:cinefinder/features/movie%20details/domain/movie_details_model.dart';
import 'package:cinefinder/features/movie%20details/infrastructure/movie_details_remote_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class MovieDetailsRepository with BaseRepo {
  final MovieDetailsRemoteService _remoteService;

  MovieDetailsRepository(this._remoteService);

  RepoResponse<MovieDetailsModel> getMovieDetails(int movieId) {
    return super.getData(
      () => _remoteService.getMovieDetails(movieId),
      MovieDetailsModel.fromJson,
    );
  }
}
