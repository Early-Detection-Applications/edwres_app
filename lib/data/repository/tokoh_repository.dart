// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0

import 'package:dio/dio.dart';
import 'package:edwres_app/data/api_endpoints.dart';
import 'package:edwres_app/models/tokoh/tokoh_model.dart';
import 'package:edwres_app/models/tokoh/tokoh_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TokohRepository {
  final Dio _dio;

  TokohRepository({Dio? dio}) : _dio = dio ?? Dio();

  String get _baseUrl => dotenv.get('BASE_URL');

  Future<TokohResponseModel> getList({int page = 1, int perPage = 9}) async {
    try {
      print('TOKOH: mulai request');
      print('TOKOH: URL = $_baseUrl${ApiEndpoints.tokoh}');
      print('TOKOH: page = $page');
      print('TOKOH: per_page = $perPage');

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.tokoh,
        queryParameters: {'page': page, 'per_page': perPage},
      );

      print('TOKOH: status = ${result.statusCode}');
      print('TOKOH: response = ${result.data}');

      if (result.statusCode == 200) {
        return TokohResponseModel.fromJson(
          Map<String, dynamic>.from(result.data as Map),
        );
      }

      throw Exception('Gagal memuat data. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('TOKOH DIO ERROR');
      print('TOKOH: type = ${e.type}');
      print('TOKOH: message = ${e.message}');
      print('TOKOH: error = ${e.error}');
      print('TOKOH: URL = ${e.requestOptions.uri}');
      print('TOKOH: status = ${e.response?.statusCode}');
      print('TOKOH: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('TOKOH GENERAL ERROR');
      print('TOKOH: error = $e');
      print('TOKOH: stackTrace = $stackTrace');

      rethrow;
    }
  }

  Future<TokohModel> getDetail(int id) async {
    try {
      print('TOKOH DETAIL: mulai request');
      print(
        'TOKOH DETAIL: URL = '
        '$_baseUrl${ApiEndpoints.tokohDetail(id)}',
      );

      final result = await _dio.get(_baseUrl + ApiEndpoints.tokohDetail(id));

      print('TOKOH DETAIL: status = ${result.statusCode}');
      print('TOKOH DETAIL: response = ${result.data}');

      if (result.statusCode == 200) {
        final json = Map<String, dynamic>.from(result.data as Map);
        final data = json['data'];

        if (data is Map) {
          return TokohModel.fromJson(Map<String, dynamic>.from(data));
        }

        throw Exception('Data detail tokoh tidak valid');
      }

      throw Exception('Gagal memuat detail. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('TOKOH DETAIL DIO ERROR');
      print('TOKOH DETAIL: type = ${e.type}');
      print('TOKOH DETAIL: message = ${e.message}');
      print('TOKOH DETAIL: error = ${e.error}');
      print('TOKOH DETAIL: URL = ${e.requestOptions.uri}');
      print('TOKOH DETAIL: status = ${e.response?.statusCode}');
      print('TOKOH DETAIL: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('TOKOH DETAIL GENERAL ERROR');
      print('TOKOH DETAIL: error = $e');
      print('TOKOH DETAIL: stackTrace = $stackTrace');

      rethrow;
    }
  }
}
