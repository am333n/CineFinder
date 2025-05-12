// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cinefinder/core/network/dio/dio_module.dart' as _i883;
import 'package:cinefinder/features/home/application/bloc/home_bloc.dart'
    as _i761;
import 'package:cinefinder/features/home/infrastructure/home_remote_service.dart'
    as _i322;
import 'package:cinefinder/features/home/infrastructure/home_repository.dart'
    as _i719;
import 'package:cinefinder/features/movie%20details/application/bloc/movie_details_bloc.dart'
    as _i927;
import 'package:cinefinder/features/movie%20details/infrastructure/movie_details_remote_service.dart'
    as _i697;
import 'package:cinefinder/features/movie%20details/infrastructure/movie_details_repository.dart'
    as _i153;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i322.HomeRemoteService>(() => _i322.HomeRemoteService());
    gh.factory<_i697.MovieDetailsRemoteService>(
      () => _i697.MovieDetailsRemoteService(),
    );
    gh.singleton<_i361.Dio>(
      () => registerModule.authInstance,
      instanceName: 'authInstance',
    );
    gh.singleton<_i361.Dio>(
      () => registerModule.commonInstance,
      instanceName: 'commonInstance',
    );
    gh.factory<_i719.HomeRepository>(
      () => _i719.HomeRepository(gh<_i322.HomeRemoteService>()),
    );
    gh.factory<_i761.HomeBloc>(
      () => _i761.HomeBloc(gh<_i719.HomeRepository>()),
    );
    gh.factory<_i153.MovieDetailsRepository>(
      () => _i153.MovieDetailsRepository(gh<_i697.MovieDetailsRemoteService>()),
    );
    gh.factory<_i927.MovieDetailsBloc>(
      () => _i927.MovieDetailsBloc(gh<_i153.MovieDetailsRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i883.RegisterModule {}
