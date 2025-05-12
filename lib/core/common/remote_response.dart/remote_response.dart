import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_response.freezed.dart';

@freezed
sealed class RemoteResponse<T> with _$RemoteResponse<T> {
  const factory RemoteResponse.requestSuccess(T data) = RequestSuccess;
  const factory RemoteResponse.requestFailed(int? code, T error) =
      RequestFailed;
}
