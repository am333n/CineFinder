import 'package:cinefinder/core/common/base/base_repository.dart';
import 'package:cinefinder/core/common/remote_response.dart/remote_response.dart';
import 'package:cinefinder/features/home/domain/movie_model.dart';
import 'package:cinefinder/features/home/infrastructure/home_remote_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeRepository with BaseRepo {
  final HomeRemoteService _remoteService;

  HomeRepository(this._remoteService);

  RepoResponse<SearchResponse> getMovies(
    String? searchQuery, {
    int? pageNumber,
  }) {
    return getData(
      () => _remoteService.getMovies(searchQuery, pageNumber: pageNumber),
      SearchResponse.fromJson,
    );
  }
}
