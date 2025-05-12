import 'package:cinefinder/core/common/remote_response.dart/remote_response.dart';
import 'package:cinefinder/core/failure/failure.dart';
import 'package:cinefinder/core/failure/failure_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

typedef RepoResponse<T> = Future<Either<Failure, T>>;

mixin BaseRepo {
  Future<Either<Failure, T>> getData<T>(
    Future<RemoteResponse> Function() apiCall,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    try {
      final response = await apiCall();

      switch (response) {
        case RequestSuccess(:final data):
          try {
            final convertedData = fromJson(data);
            return Right(convertedData);
          } catch (e) {
            return Left(FailureHandler.dataConversionFailure);
          }

        case RequestFailed(:final code, :final error):
          return Left(FailureHandler.handleErrorCode(code));
      }
    } on DioException catch (e) {
      return FailureHandler.handleFailure(e);
    }
  }

  Future<Either<Failure, List<T>>> getListData<T>(
    Future<RemoteResponse> Function() apiCall,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    try {
      final response = await apiCall();

      switch (response) {
        case RequestSuccess(:final data):
          try {
            final convertedList =
                (data as List<dynamic>)
                    .map((e) => fromJson(e as Map<String, dynamic>))
                    .toList();
            return Right(convertedList);
          } catch (e) {
            return Left(FailureHandler.dataConversionFailure);
          }

        case RequestFailed(:final code, :final error):
          return Left(FailureHandler.handleErrorCode(code));
      }
    } on DioException catch (e) {
      return FailureHandler.handleFailure(e);
    }
  }

  Future<Either<Failure, bool>> performAction(
    Future<RemoteResponse> Function() apiCall,
  ) async {
    try {
      final response = await apiCall();

      switch (response) {
        case RequestSuccess():
          return const Right(true);

        case RequestFailed(:final code, :final error):
          return Left(FailureHandler.handleErrorCode(code));
      }
    } on DioException catch (e) {
      return FailureHandler.handleFailure(e);
    }
  }
}
