// Dart imports:
import 'dart:io';

// Package imports:
import 'package:cinefinder/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
class FailureHandler {
  static Failure dataConversionFailure = const Failure.clientError(
    message: 'Failed to convert data',
  );

  static Left<Failure, T> handleFailure<T>(DioException e) {
    if (e.type == DioExceptionType.connectionError) {
      return Left(Failure.noInternet());
    }
    return Left(Failure.somethingWentWrong);
  }

  static Failure handleRequestFailure(int? errorCode, dynamic error) {
    if (errorCode != null) {
      return handleErrorCode(errorCode);
    } else {
      try {
        if (error is Map<String, dynamic> &&
            error['status_message'] is String) {
          return Failure.clientError(message: error['status_message']);
        } else if (error is String) {
          return Failure.clientError(message: error);
        } else {
          return Failure.somethingWentWrong;
        }
      } catch (_) {
        return Failure.somethingWentWrong;
      }
    }
  }

  static Failure handleErrorCode(int? code) {
    switch (code) {
      case 1:
      case 12:
      case 13:
      case 21:
      case 40:
        return const Failure.clientError(
          message: 'Success or no update needed.',
        );

      case 2:
        return const Failure.serverError(
          message: 'Invalid service: this service does not exist.',
        );

      case 3:
      case 14:
      case 16:
      case 17:
      case 30:
      case 31:
      case 32:
      case 33:
      case 35:
      case 36:
      case 38:
      case 39:
        return const Failure.clientError(
          message: 'Authentication failed or token error.',
        );

      case 4:
      case 42:
        return const Failure.clientError(
          message: 'Invalid format or method not supported.',
        );

      case 5:
      case 20:
      case 41:
        return const Failure.clientError(message: 'Invalid parameters.');

      case 6:
      case 34:
      case 37:
        return const Failure.clientError(
          message: 'Invalid ID or resource not found.',
        );

      case 7:
      case 10:
        return const Failure.clientError(
          message: 'Invalid or suspended API key.',
        );

      case 8:
      case 45:
        return const Failure.clientError(
          message: 'Duplicate entry or user suspended.',
        );

      case 9:
      case 46:
        return const Failure.serverError(
          message: 'Service offline or under maintenance.',
        );

      case 11:
      case 15:
      case 44:
        return const Failure.serverError(
          message: 'Internal error or invalid ID.',
        );

      case 18:
      case 22:
      case 23:
      case 26:
      case 27:
      case 28:
      case 29:
      case 47:
        return const Failure.clientError(message: 'Validation or input error.');

      case 19:
        return const Failure.clientError(message: 'Invalid accept header.');

      case 24:
      case 43:
        return const Failure.serverError(
          message: 'Backend server timeout or connection issue.',
        );

      case 25:
        return const Failure.clientError(message: 'Rate limit exceeded.');

      default:
        return Failure.somethingWentWrong;
    }
  }

  static String getFailureMessage(Failure failure) {
    return switch (failure) {
      ServerError(:final message) => message,
      ClientError(:final message) => message,
      NoInternet() => "Please Check Your Connection And Try Again",
    };
  }
}
