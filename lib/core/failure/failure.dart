// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.serverError({required String message}) = ServerError;
  const factory Failure.clientError({required String message}) = ClientError;
  const factory Failure.noInternet() = NoInternet;

  const Failure._();

  static Failure get somethingWentWrong =>
      Failure.serverError(message: 'Something Went Wrong');
}
