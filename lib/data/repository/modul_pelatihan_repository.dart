import 'package:dio/dio.dart';
import 'package:edwres_app/data/api_endpoints.dart';
import 'package:edwres_app/models/modul_pelatihan/modul_pelatihan_model.dart';
import 'package:edwres_app/models/modul_pelatihan/modul_pelatihan_response_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ModulPelatihanRepository {
  final Dio _dio;

  ModulPelatihanRepository({Dio? dio}) : _dio = dio ?? Dio();

  String get _baseUrl => dotenv.get('BASE_URL');

  Future<ModulPelatihanResponseModel> getList({
    int page = 1,
    int perPage = 9,
  }) async {
    try {
      print('MODUL PELATIHAN: mulai request');
      print(
        'MODUL PELATIHAN: URL = '
        '$_baseUrl${ApiEndpoints.modulPelatihan}',
      );
      print('MODUL PELATIHAN: page = $page');
      print('MODUL PELATIHAN: per_page = $perPage');

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.modulPelatihan,
        queryParameters: {'page': page, 'per_page': perPage},
      );

      print('MODUL PELATIHAN: status = ${result.statusCode}');
      print('MODUL PELATIHAN: response = ${result.data}');

      if (result.statusCode == 200) {
        return ModulPelatihanResponseModel.fromJson(
          Map<String, dynamic>.from(result.data as Map),
        );
      }

      throw Exception('Gagal memuat data. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('MODUL PELATIHAN DIO ERROR');
      print('MODUL PELATIHAN: type = ${e.type}');
      print('MODUL PELATIHAN: message = ${e.message}');
      print('MODUL PELATIHAN: error = ${e.error}');
      print('MODUL PELATIHAN: URL = ${e.requestOptions.uri}');
      print('MODUL PELATIHAN: status = ${e.response?.statusCode}');
      print('MODUL PELATIHAN: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('MODUL PELATIHAN GENERAL ERROR');
      print('MODUL PELATIHAN: error = $e');
      print('MODUL PELATIHAN: stackTrace = $stackTrace');

      rethrow;
    }
  }

  Future<ModulPelatihanModel> getDetail(int id) async {
    try {
      print('MODUL PELATIHAN DETAIL: mulai request');
      print(
        'MODUL PELATIHAN DETAIL: URL = '
        '$_baseUrl${ApiEndpoints.modulPelatihanDetail(id)}',
      );

      final result = await _dio.get(
        _baseUrl + ApiEndpoints.modulPelatihanDetail(id),
      );

      print('MODUL PELATIHAN DETAIL: status = ${result.statusCode}');
      print('MODUL PELATIHAN DETAIL: response = ${result.data}');

      if (result.statusCode == 200) {
        final json = Map<String, dynamic>.from(result.data as Map);
        final data = json['data'];

        if (data is Map) {
          return ModulPelatihanModel.fromJson(Map<String, dynamic>.from(data));
        }

        throw Exception('Data detail modul pelatihan tidak valid');
      }

      throw Exception('Gagal memuat detail. Status code: ${result.statusCode}');
    } on DioException catch (e) {
      print('MODUL PELATIHAN DETAIL DIO ERROR');
      print('MODUL PELATIHAN DETAIL: type = ${e.type}');
      print('MODUL PELATIHAN DETAIL: message = ${e.message}');
      print('MODUL PELATIHAN DETAIL: error = ${e.error}');
      print('MODUL PELATIHAN DETAIL: URL = ${e.requestOptions.uri}');
      print('MODUL PELATIHAN DETAIL: status = ${e.response?.statusCode}');
      print('MODUL PELATIHAN DETAIL: response = ${e.response?.data}');

      rethrow;
    } catch (e, stackTrace) {
      print('MODUL PELATIHAN DETAIL GENERAL ERROR');
      print('MODUL PELATIHAN DETAIL: error = $e');
      print('MODUL PELATIHAN DETAIL: stackTrace = $stackTrace');

      rethrow;
    }
  }
}
