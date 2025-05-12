import 'package:cinefinder/core/common/api_endpoints.dart';
import 'package:cinefinder/core/common/base/base_remote.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeRemoteService with BaseRemote {
  BaseReturnType getMovies(String? searchQuery, {int? pageNumber}) {
    return super.get(
      Endpoint.searchMovies,
      queryParameters: {'query': searchQuery, 'page': pageNumber ?? 1},
    );
  }
}
