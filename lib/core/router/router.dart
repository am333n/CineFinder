// Flutter imports:

import 'package:cinefinder/features/home/presentation/home_page.dart';
import 'package:cinefinder/features/movie%20details/presentation/movie_details_page.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

// Project imports:

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: MovieDetailsRoute.page),
  ];
}
