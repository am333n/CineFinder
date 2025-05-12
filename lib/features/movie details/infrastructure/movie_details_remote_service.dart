import 'package:cinefinder/core/common/api_endpoints.dart';
import 'package:cinefinder/core/common/base/base_remote.dart';
import 'package:injectable/injectable.dart';

@injectable
class MovieDetailsRemoteService with BaseRemote {
  BaseReturnType getMovieDetails(int movieId) {
    return super.get(Endpoint.movieDetails.id(movieId));
  }
}
