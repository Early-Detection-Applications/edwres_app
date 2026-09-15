import 'package:dio/dio.dart';
import 'package:edwres_app/data/data.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:edwres_app/models/profile_model.dart';

class ProfileRepository {
  final Dio _dio;

  ProfileRepository({Dio? dio}) : _dio = dio ?? Dio();

  String get _baseUrl => dotenv.get('BASE_URL');

  // ============================================================
  // GET PROFILE
  // ============================================================

  Future<ProfileModel> getProfile({required String username}) async {
    try {
      final response = await _dio.get(
        '$_baseUrl${ApiEndpoints.profile}',
        queryParameters: {'username': username},
      );

      if (response.statusCode == 200) {
        final json = Map<String, dynamic>.from(response.data as Map);

        final data = json['data'];

        if (data is Map) {
          return ProfileModel.fromJson(Map<String, dynamic>.from(data));
        }
      }

      throw Exception('Gagal memuat data profile.');
    } on DioException catch (e) {
      throw Exception(_getErrorMessage(e));
    } catch (e) {
      rethrow;
    }
  }

  // ============================================================
  // UPDATE PROFILE
  // ============================================================

  Future<ProfileModel> updateProfile({
    required String currentUsername,
    required String username,
    required String namaLengkap,
    required String namaPanggilan,
    required String asalSekolah,
    required String kelasJurusan,
    required String email,
    String? password,
    String? passwordConfirmation,
    String? fileFotoPath,
  }) async {
    try {
      final formData = FormData();

      formData.fields.add(MapEntry('current_username', currentUsername));

      formData.fields.add(MapEntry('username', username));

      formData.fields.add(MapEntry('nama_lengkap', namaLengkap));

      formData.fields.add(MapEntry('nama_panggilan', namaPanggilan));

      formData.fields.add(MapEntry('asal_sekolah', asalSekolah));

      formData.fields.add(MapEntry('kelas_jurusan', kelasJurusan));

      formData.fields.add(MapEntry('email', email));

      if (password != null && password.isNotEmpty) {
        formData.fields.add(MapEntry('password', password));

        formData.fields.add(
          MapEntry('password_confirmation', passwordConfirmation ?? ''),
        );
      }

      if (fileFotoPath != null && fileFotoPath.isNotEmpty) {
        formData.files.add(
          MapEntry('file_foto', await MultipartFile.fromFile(fileFotoPath)),
        );
      }

      final response = await _dio.post(
        '$_baseUrl${ApiEndpoints.profile}',
        data: formData,
      );

      if (response.statusCode == 200) {
        final json = Map<String, dynamic>.from(response.data as Map);

        final data = json['data'];

        if (data is Map) {
          return ProfileModel.fromJson(Map<String, dynamic>.from(data));
        }
      }

      throw Exception('Gagal memperbarui profile.');
    } on DioException catch (e) {
      throw Exception(_getErrorMessage(e));
    } catch (e) {
      rethrow;
    }
  }

  // ============================================================
  // ERROR MESSAGE
  // ============================================================

  String _getErrorMessage(DioException exception) {
    final responseData = exception.response?.data;

    if (responseData is Map) {
      /*
       * Laravel validation error:
       *
       * {
       *   "message": "...",
       *   "errors": {
       *      "email": [...]
       *   }
       * }
       */

      final errors = responseData['errors'];

      if (errors is Map && errors.isNotEmpty) {
        final messages = <String>[];

        errors.forEach((key, value) {
          if (value is List && value.isNotEmpty) {
            messages.add(value.first.toString());
          } else if (value != null) {
            messages.add(value.toString());
          }
        });

        if (messages.isNotEmpty) {
          return messages.join('\n');
        }
      }

      final message = responseData['message'];

      if (message != null && message.toString().trim().isNotEmpty) {
        return message.toString();
      }
    }

    switch (exception.response?.statusCode) {
      case 400:
        return 'Request tidak valid.';

      case 401:
        return 'Anda tidak memiliki akses.';

      case 403:
        return 'Akses ditolak.';

      case 404:
        return 'Data profile tidak ditemukan.';

      case 422:
        return 'Data profile tidak valid.';

      case 500:
        return 'Terjadi kesalahan pada server.';

      default:
        return 'Terjadi kesalahan saat menghubungi server.';
    }
  }
}
