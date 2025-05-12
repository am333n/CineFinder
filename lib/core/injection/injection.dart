// Flutter imports:

import 'package:cinefinder/core/injection/injection.config.dart';
import 'package:cinefinder/core/network/interceptors/auth_interceptor.dart';
import 'package:cinefinder/core/network/interceptors/logging_interceptor.dart';
import 'package:cinefinder/core/router/router.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:

// Project imports:

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.init();
  getIt.registerSingleton<AppRouter>(AppRouter());
  GetIt.I.registerSingleton<GlobalKey<ScaffoldMessengerState>>(
    GlobalKey<ScaffoldMessengerState>(),
  );
  final dio = getIt<Dio>(instanceName: 'commonInstance');
  dio.options = BaseOptions(connectTimeout: const Duration(seconds: 100));
  dio.interceptors.add(AuthInterceptor());
  dio.interceptors.add(LoggingInterceptor(enableLogging: true));
}
