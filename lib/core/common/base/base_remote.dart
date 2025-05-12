// Dart imports:
import 'dart:developer';
import 'dart:io';

// Package imports:
import 'package:cinefinder/core/common/environment.dart';
import 'package:cinefinder/core/common/remote_response.dart/remote_response.dart';
import 'package:cinefinder/core/injection/injection.dart';
import 'package:dio/dio.dart';

// Project imports:

// Flutter imports:

enum RequestType { post, patch, get, put, delete }

typedef BaseReturnType = Future<RemoteResponse<dynamic>>;

mixin BaseRemote {
  BaseReturnType post(
    String url, {
    Map<String, dynamic>? body,
    bool isAuth = false,
  }) async {
    return sendRequest(url, body, RequestType.post, isAuth: isAuth);
  }

  BaseReturnType put<E>(String url, {dynamic body}) async {
    return sendRequest<E>(url, body, RequestType.put);
  }

  BaseReturnType patch<E>(String url, Map<String, dynamic> body) async {
    return sendRequest<E>(url, body, RequestType.patch);
  }

  BaseReturnType get<E>(
    String url, {
    Function(int, int)? onReceiveProgress,
    ResponseType? responseType,
    Map<String, dynamic>? queryParameters,
  }) async {
    return sendRequest<E>(
      url,
      null,
      RequestType.get,
      queryParameters: queryParameters,
      onReceiveProgress: onReceiveProgress,
      responseType: responseType,
    );
  }

  BaseReturnType delete<E>(String url, {dynamic body}) async {
    return sendRequest<E>(url, body, RequestType.delete);
  }

  BaseReturnType sendRequest<E>(
    String url,
    Map<String, dynamic>? body,

    RequestType type, {
    bool isAuth = false,
    Map<String, dynamic>? queryParameters,
    Function(int, int)? onReceiveProgress,
    ResponseType? responseType,
  }) async {
    try {
      String baseUrl = Environment.defaultUrl;
      final Dio dio = getIt<Dio>(
        instanceName: isAuth ? "authInstance" : "commonInstance",
      );
      dio.options.baseUrl = baseUrl;
      var validationOptions = Options(
        followRedirects: true,
        responseType: responseType,
        validateStatus: (status) {
          if (isAuth) {
            return status != null && status < 500;
          } else {
            if (status != null && status >= 400 && status < 500) {
              return false;
            }
            return true;
          }
        },
      );

      var response = switch (type) {
        RequestType.get => await dio.get(
          url,
          onReceiveProgress: onReceiveProgress,
          options: validationOptions,
          queryParameters: queryParameters,
        ),
        RequestType.post => await dio.post(
          url,
          data: body ?? {},
          options: validationOptions,
        ),
        RequestType.patch => await dio.patch(url, data: body ?? {}),
        RequestType.put => await dio.put(
          url,
          data: body ?? {},
          options: validationOptions,
          queryParameters: {},
        ),
        RequestType.delete => await dio.delete(url, data: body ?? {}),
      };

      // debugPrint(response.statusCode.toString());
      // debugPrint(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return RemoteResponse.requestSuccess(response.data);
      } else {
        return RemoteResponse.requestFailed(
          response.data['status_code'],
          response.data,
        );
      }
    } catch (e) {
      if (e is SocketException) {
        rethrow;
      }
      rethrow;
    }
  }
}
