import 'package:dio/dio.dart';
import 'package:edwres_app/data/api_endpoints.dart';
import 'package:edwres_app/models/panduan_aplikasi/panduan_aplikasi_model.dart';
import 'package:edwres_app/models/panduan_aplikasi/panduan_aplikasi_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PanduanAplikasiRepository {
  final Dio _dio;

  PanduanAplikasiRepository({Dio? dio}) : _dio = dio ?? Dio();

  String get _baseUrl => dotenv.get('BASE_URL');

  Future<PanduanAplikasiResponseModel> getList({
    int page = 1,
    int perPage = 9,
  }) async {
    try {
      print('PANDUAN APLIKASI: mulai request');
      print(
        'PANDUAN APLIKASI: URL = '
        '$_baseUrl${ApiEndpoints.panduanAplikasi}',
      );
      print('PANDUAN APLIKASI: page = $page');
      print('PANDUAN APLIKASI: per_page = $perPage');

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.panduanAplikasi,
        queryParameters: {'page': page, 'per_page': perPage},
      );

      print('PANDUAN APLIKASI: status = ${result.statusCode}');
      print('PANDUAN APLIKASI: response = ${result.data}');

      if (result.statusCode == 200) {
        return PanduanAplikasiResponseModel.fromJson(
          Map<String, dynamic>.from(result.data as Map),
        );
      }

      throw Exception('Gagal memuat data. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('PANDUAN APLIKASI DIO ERROR');
      print('PANDUAN APLIKASI: type = ${e.type}');
      print('PANDUAN APLIKASI: message = ${e.message}');
      print('PANDUAN APLIKASI: error = ${e.error}');
      print('PANDUAN APLIKASI: URL = ${e.requestOptions.uri}');
      print('PANDUAN APLIKASI: status = ${e.response?.statusCode}');
      print('PANDUAN APLIKASI: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('PANDUAN APLIKASI GENERAL ERROR');
      print('PANDUAN APLIKASI: error = $e');
      print('PANDUAN APLIKASI: stackTrace = $stackTrace');

      rethrow;
    }
  }

  Future<PanduanAplikasiModel> getDetail(int id) async {
    try {
      print('PANDUAN APLIKASI DETAIL: mulai request');
      print(
        'PANDUAN APLIKASI DETAIL: URL = '
        '$_baseUrl${ApiEndpoints.panduanAplikasiDetail(id)}',
      );

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.panduanAplikasiDetail(id),
      );

      print('PANDUAN APLIKASI DETAIL: status = ${result.statusCode}');
      print('PANDUAN APLIKASI DETAIL: response = ${result.data}');

      if (result.statusCode == 200) {
        final json = Map<String, dynamic>.from(result.data as Map);
        final data = json['data'];

        if (data is Map) {
          return PanduanAplikasiModel.fromJson(Map<String, dynamic>.from(data));
        }

        throw Exception('Data detail panduan aplikasi tidak valid');
      }

      throw Exception('Gagal memuat detail. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('PANDUAN APLIKASI DETAIL DIO ERROR');
      print('PANDUAN APLIKASI DETAIL: type = ${e.type}');
      print('PANDUAN APLIKASI DETAIL: message = ${e.message}');
      print('PANDUAN APLIKASI DETAIL: error = ${e.error}');
      print('PANDUAN APLIKASI DETAIL: URL = ${e.requestOptions.uri}');
      print('PANDUAN APLIKASI DETAIL: status = ${e.response?.statusCode}');
      print('PANDUAN APLIKASI DETAIL: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('PANDUAN APLIKASI DETAIL GENERAL ERROR');
      print('PANDUAN APLIKASI DETAIL: error = $e');
      print('PANDUAN APLIKASI DETAIL: stackTrace = $stackTrace');

      rethrow;
    }
  }
}
