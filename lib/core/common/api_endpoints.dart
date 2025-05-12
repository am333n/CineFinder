class Endpoint {
  static const String searchMovies = '/search/movie';
  static const String movieDetails = '/movie';
}

extension EndpointExtensions on String {
  String id(dynamic value) => '$this/$value';
}
