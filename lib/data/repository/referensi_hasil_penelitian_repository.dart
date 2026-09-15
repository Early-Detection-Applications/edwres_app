import 'package:dio/dio.dart';
import 'package:edwres_app/data/api_endpoints.dart';
import 'package:edwres_app/models/referensi_hasil_penelitian/referensi_hasil_penelitian_model.dart';
import 'package:edwres_app/models/referensi_hasil_penelitian/referensi_hasil_penelitian_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ReferensiHasilPenelitianRepository {
  final Dio _dio;

  ReferensiHasilPenelitianRepository({Dio? dio}) : _dio = dio ?? Dio();

  String get _baseUrl => dotenv.get('BASE_URL');

  Future<ReferensiHasilPenelitianResponseModel> getList({
    int page = 1,
    int perPage = 9,
  }) async {
    try {
      print('HASIL PENELITIAN: mulai request');
      print(
        'HASIL PENELITIAN: URL = '
        '$_baseUrl${ApiEndpoints.referensiHasilPenelitian}',
      );
      print('HASIL PENELITIAN: page = $page');
      print('HASIL PENELITIAN: per_page = $perPage');

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.referensiHasilPenelitian,
        queryParameters: {'page': page, 'per_page': perPage},
      );

      print('HASIL PENELITIAN: status = ${result.statusCode}');
      print('HASIL PENELITIAN: response = ${result.data}');

      if (result.statusCode == 200) {
        return ReferensiHasilPenelitianResponseModel.fromJson(
          Map<String, dynamic>.from(result.data as Map),
        );
      }

      throw Exception('Gagal memuat data. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('HASIL PENELITIAN DIO ERROR');
      print('HASIL PENELITIAN: type = ${e.type}');
      print('HASIL PENELITIAN: message = ${e.message}');
      print('HASIL PENELITIAN: error = ${e.error}');
      print('HASIL PENELITIAN: URL = ${e.requestOptions.uri}');
      print('HASIL PENELITIAN: status = ${e.response?.statusCode}');
      print('HASIL PENELITIAN: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('HASIL PENELITIAN GENERAL ERROR');
      print('HASIL PENELITIAN: error = $e');
      print('HASIL PENELITIAN: stackTrace = $stackTrace');

      rethrow;
    }
  }

  Future<ReferensiHasilPenelitianModel> getDetail(int id) async {
    try {
      print('HASIL PENELITIAN DETAIL: mulai request');
      print(
        'HASIL PENELITIAN DETAIL: URL = '
        '$_baseUrl${ApiEndpoints.referensiHasilPenelitianDetail(id)}',
      );

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.referensiHasilPenelitianDetail(id),
      );

      print('HASIL PENELITIAN DETAIL: status = ${result.statusCode}');
      print('HASIL PENELITIAN DETAIL: response = ${result.data}');

      if (result.statusCode == 200) {
        final json = Map<String, dynamic>.from(result.data as Map);
        final data = json['data'];

        if (data is Map) {
          return ReferensiHasilPenelitianModel.fromJson(
            Map<String, dynamic>.from(data),
          );
        }

        throw Exception('Data detail hasil penelitian tidak valid');
      }

      throw Exception('Gagal memuat detail. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('HASIL PENELITIAN DETAIL DIO ERROR');
      print('HASIL PENELITIAN DETAIL: type = ${e.type}');
      print('HASIL PENELITIAN DETAIL: message = ${e.message}');
      print('HASIL PENELITIAN DETAIL: error = ${e.error}');
      print('HASIL PENELITIAN DETAIL: URL = ${e.requestOptions.uri}');
      print('HASIL PENELITIAN DETAIL: status = ${e.response?.statusCode}');
      print('HASIL PENELITIAN DETAIL: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('HASIL PENELITIAN DETAIL GENERAL ERROR');
      print('HASIL PENELITIAN DETAIL: error = $e');
      print('HASIL PENELITIAN DETAIL: stackTrace = $stackTrace');

      rethrow;
    }
  }
}
