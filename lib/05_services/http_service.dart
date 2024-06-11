import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/end_points.dart';
import 'package:edu_assign/06_utils/failure/main_failure.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

enum HttpMethod { get, post, put, patch, delete }

@LazySingleton()
class HttpService {
  static final HttpService _instance = HttpService._internal();
  factory HttpService() => _instance;

  HttpService._internal();

  Future<Either<Map<MainFailure, dynamic>, dynamic>> request({
    dynamic data,
    required String apiUrl,
    HttpMethod method = HttpMethod.get,
  }) async {
    Client client;
    client = InterceptedClient.build(interceptors: [LoggingInterceptor()]);

    try {
      final url = "${EndPoints.baseUrl}$apiUrl";
      customPrint(content: url, name: "url");
      if (data != null) customPrint(content: data, name: "Payload");

      final Response response;
      response = await httpSwitchMethod(method, client, url, data);
      customPrint(content: response.statusCode, name: "Status Code");
      customPrint(content: response.body, name: "Response");

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return Right(jsonDecode(response.body));
      } else {
        customPrint(content: 'server error');
        return Left({
          const MainFailure.clientFailure():
              jsonDecode(response.body)["detail"] ??
                  jsonDecode(response.body)["app_data"]
        });
      }
    } on FormatException catch (_) {
      customPrint(content: 'format exception catched');
      return Left({const MainFailure.clientFailure(): null});
    } on HttpException catch (_) {
      return Left({const MainFailure.clientFailure(): null});
    } on TimeoutException catch (_) {
      return Left({const MainFailure.timeout(): null});
    } on SocketException catch (_) {
      return Left({const MainFailure.networkFailure(): null});
    } catch (e) {
      customPrint(content: 'error catched');
      debugPrint(e.toString());
      return Left({const MainFailure.clientFailure(): null});
    } finally {
      // client?.close();
    }
  }
}

Future<Response> httpSwitchMethod(
    HttpMethod method, Client client, String url, Object? data) async {
  switch (method) {
    case HttpMethod.get:
      return await retryMethod(client.get(Uri.parse(url)));
    case HttpMethod.post:
      return await retryMethod(client.post(Uri.parse(url), body: data));
    case HttpMethod.put:
      return await retryMethod(client.put(Uri.parse(url), body: data));
    case HttpMethod.patch:
      return await retryMethod(client.patch(Uri.parse(url), body: data));
    case HttpMethod.delete:
      return await retryMethod(client.delete(Uri.parse(url), body: data));
    default:
      return await retryMethod(client.get(Uri.parse(url)));
  }
}

Future<Response> retryMethod(Future<Response> apiCall) async {
  return retry(() => apiCall,
      maxAttempts: 3,
      retryIf: (e) => e is SocketException || e is TimeoutException);
}

class LoggingInterceptor implements InterceptorContract {
  LoggingInterceptor();
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    data.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    });
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    return data;
  }
}
