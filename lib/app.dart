// Flutter imports:

import 'package:cinefinder/core/injection/injection.dart';
import 'package:cinefinder/core/router/router.dart';
import 'package:cinefinder/core/theme/app_theme.dart';
import 'package:cinefinder/features/home/application/bloc/home_bloc.dart';
import 'package:cinefinder/features/movie%20details/application/bloc/movie_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

// Project imports:
const bool isThemeEnabled = false;
const bool isOfflineModeEnabled = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
        BlocProvider(create: (ctx) => getIt<MovieDetailsBloc>()),
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: GetIt.I<GlobalKey<ScaffoldMessengerState>>(),
        title: 'WORKSTAIR JOBHEAD MOBILE V2',
        theme: AppTheme.getThemeData(AppThemeType.defaultTheme, true),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        builder: (context, child) {
          return child!;
        },
      ),
    );
  }
}
