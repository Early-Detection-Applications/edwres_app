// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0

import 'package:dio/dio.dart';
import 'package:edwres_app/data/api_endpoints.dart';
import 'package:edwres_app/models/referensi_buku/referensi_buku_model.dart';
import 'package:edwres_app/models/referensi_buku/referensi_buku_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ReferensiBukuRepository {
  final Dio _dio;

  ReferensiBukuRepository({Dio? dio}) : _dio = dio ?? Dio();

  String get _baseUrl => dotenv.get('BASE_URL');

  Future<ReferensiBukuResponseModel> getList({
    int page = 1,
    int perPage = 9,
  }) async {
    try {
      print('REFERENSI BUKU: mulai request');
      print(
        'REFERENSI BUKU: URL = '
        '$_baseUrl${ApiEndpoints.referensiBuku}',
      );
      print('REFERENSI BUKU: page = $page');
      print('REFERENSI BUKU: per_page = $perPage');

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.referensiBuku,
        queryParameters: {'page': page, 'per_page': perPage},
      );

      print('REFERENSI BUKU: status = ${result.statusCode}');
      print('REFERENSI BUKU: response = ${result.data}');

      if (result.statusCode == 200) {
        return ReferensiBukuResponseModel.fromJson(
          Map<String, dynamic>.from(result.data as Map),
        );
      }

      throw Exception('Gagal memuat data. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('REFERENSI BUKU DIO ERROR');
      print('REFERENSI BUKU: type = ${e.type}');
      print('REFERENSI BUKU: message = ${e.message}');
      print('REFERENSI BUKU: error = ${e.error}');
      print('REFERENSI BUKU: URL = ${e.requestOptions.uri}');
      print('REFERENSI BUKU: status = ${e.response?.statusCode}');
      print('REFERENSI BUKU: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('REFERENSI BUKU GENERAL ERROR');
      print('REFERENSI BUKU: error = $e');
      print('REFERENSI BUKU: stackTrace = $stackTrace');

      rethrow;
    }
  }

  Future<ReferensiBukuModel> getDetail(int id) async {
    try {
      print('REFERENSI BUKU DETAIL: mulai request');
      print(
        'REFERENSI BUKU DETAIL: URL = '
        '$_baseUrl${ApiEndpoints.referensiBukuDetail(id)}',
      );

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.referensiBukuDetail(id),
      );

      print('REFERENSI BUKU DETAIL: status = ${result.statusCode}');
      print('REFERENSI BUKU DETAIL: response = ${result.data}');

      if (result.statusCode == 200) {
        final json = Map<String, dynamic>.from(result.data as Map);
        final data = json['data'];

        if (data is Map) {
          return ReferensiBukuModel.fromJson(Map<String, dynamic>.from(data));
        }

        throw Exception('Data detail referensi buku tidak valid');
      }

      throw Exception('Gagal memuat detail. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('REFERENSI BUKU DETAIL DIO ERROR');
      print('REFERENSI BUKU DETAIL: type = ${e.type}');
      print('REFERENSI BUKU DETAIL: message = ${e.message}');
      print('REFERENSI BUKU DETAIL: error = ${e.error}');
      print('REFERENSI BUKU DETAIL: URL = ${e.requestOptions.uri}');
      print('REFERENSI BUKU DETAIL: status = ${e.response?.statusCode}');
      print('REFERENSI BUKU DETAIL: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('REFERENSI BUKU DETAIL GENERAL ERROR');
      print('REFERENSI BUKU DETAIL: error = $e');
      print('REFERENSI BUKU DETAIL: stackTrace = $stackTrace');

      rethrow;
    }
  }
}
